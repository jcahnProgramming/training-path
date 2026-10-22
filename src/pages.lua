--[[
    pages.lua
    ---------
    Everything inside the window. The window shows one page at a time:

      Tabs (always at the top):  [Skills] [Levels] [star = Favourites]
        skills      grid of skills; click one to open its guide
        levels      every skill's level and XP
        favourites  starred methods; click one to go straight to it
      Pages opened from a tab (with "<lt> Back" and "Home" buttons):
        guide       one skill's guide: bands and methods, your band marked
        method      one method in full: requirements and items checked
                    green/red, wiki link, favourite star, activity button
        activity    setup checklist and live tracking for an activity

    How pages work: each page is a PrettyUI SimpleView (a scrollable area)
    that fills the window. Opening a page destroys the old view and builds a
    new one. Once per game tick, Pages.refresh() asks the page for a short
    "signature" of what it would show; if that changed (level up, item
    picked up...), the page is rebuilt at the same scroll position.
]]

local Skills = require("src/skills")
local Guides = require("src/guides/index")
local Activities = require("src/activities/index")
local Tracker = require("src/tracker")
local Checks = require("src/checks")
local Favourites = require("src/favourites")
local Travel = require("src/travel")
local Compass = require("src/compass")

local Pages = {}

----------------------------------------------------------------------------
-- Style
----------------------------------------------------------------------------

-- Text colours, as 0xRRGGBBAA (the format PrettyUI uses).
local GOLD  = 0xF2C66DFF
local WHITE = 0xE7D7B0FF
local GREY  = 0x9A9A9AFF
local GREEN = 0x7CD67CFF
local RED   = 0xE06C6CFF
local AMBER = 0xE8B04BFF

-- How each check state is shown: a marker and a colour.
local CHECK_STYLE = {
    ok   = { mark = "[OK]", colour = GREEN },
    todo = { mark = "[  ]", colour = RED },
    warn = { mark = "[!]",  colour = AMBER },
    info = { mark = "[?]",  colour = GREY },
}

-- The game's gold star picture, used for the Favourites tab.
local STAR_SPRITE = id.Sprite.RAND_SPEEDRUN_STAR_GOLD_0

-- Space PrettyUI leaves on each side of a page, and between buttons.
local PAGE_PADDING = 14
local COLUMN_GAP = 8

----------------------------------------------------------------------------
-- State
----------------------------------------------------------------------------

local window = nil      -- the PrettyUI window, set by Pages.start
local view = nil        -- the SimpleView for the current page

-- The page showing now, and the pages "behind" it for the Back button.
-- Each entry is { name = "guide", arg = "Smithing" }.
local current = { name = "skills" }
local history = {}

local shownSignature = nil   -- signature the current page was built with
local liveUpdate = nil       -- optional function the page wants run every tick
local wikiShown = {}         -- url -> true when its link box is open
local compassText = nil      -- the "Heading to ..." line under the tabs, if shown

-- Activity page state (kept while the page is redrawn).
local session = nil          -- XP tracking session (src/tracker.lua)
local trackLines = {}        -- the live tracking text lines

local PAGES = {}             -- name -> { build = fn, signature = fn }, below

----------------------------------------------------------------------------
-- Small helpers
----------------------------------------------------------------------------

-- Add a checklist-style line: "[OK] Smithing 60" in green, etc.
local function addCheckLine(line)
    local style = CHECK_STYLE[line.state] or CHECK_STYLE.info
    view:AddText({ text = style.mark .. " " .. line.text, colour = style.colour })
end

-- Width for a button so that `columns` of them fit side by side.
local function columnWidth(columns)
    local usable = (view.contentWidth or 300) - PAGE_PADDING * 2
    return math.floor((usable - COLUMN_GAP * (columns - 1)) / columns)
end

-- One-line summary of a method: "Low intensity (AFK), about 9,000 XP/hr".
local function methodSummary(method)
    local text = Guides.intensityLabel[method.intensity] or method.intensity or ""
    if method.xpPerHour then
        text = text .. ", about " .. Skills.formatNumber(method.xpPerHour) .. " XP/hr"
    end
    return text
end

-- "Ready" in green, or "Missing: ..." in red, for one method.
local function methodStatusLine(method, carried)
    local result = Checks.method(method, carried)
    if #result.missing == 0 then
        return { state = "ok", text = "Ready" }
    end
    return { state = "todo", text = "Missing: " .. table.concat(result.missing, ", ") }
end

-- A "Wiki page" button. Plugins can't open a web browser, so pressing it
-- shows the link in a text box the player can select and copy.
local function addWikiButton(url, label)
    if url == nil then return end
    view:AddSimpleButton(label or "Wiki page", function()
        wikiShown[url] = not wikiShown[url]
        Pages.redraw()
    end)
    if wikiShown[url] then
        view:AddTextField({ text = url })
        view:AddText({ text = "Select the link above and copy it (Ctrl+C, or Cmd+C on Mac), "
            .. "then paste it into your browser.", colour = GREY })
    end
end

-- A star toggle for a method, with the method's button next to it.
local function addStarAndButton(entry, buttonLabel, width)
    local method = entry.method
    if method.id == nil then
        -- Shouldn't happen (every method needs an id), but don't break.
        view:AddText({ text = buttonLabel, colour = GOLD })
        return
    end
    view:AddSpriteButton("STAR", function(_, starred)
        Favourites.set(method.id, starred)
        Pages.redraw()
    end, {
        toggleable = true,
        disabled = not Favourites.has(method.id),   -- silver when not starred
        tooltip = "Add to or remove from favourites",
    })
    view:AddSimpleButton(buttonLabel, function()
        Pages.open("method", method.id)
    end, { inline = true, width = width })
end

----------------------------------------------------------------------------
-- Building a page
----------------------------------------------------------------------------

-- Throw away the current page and start an empty one that fills the window.
local function newView()
    if view then view:Destroy() end
    view = prettyui.SimpleView.new(window.content, {
        width = 0, height = 0,
        widthAnchor = 1.0, heightAnchor = 1.0,   -- 100% of the window
    })
end

-- The tab row at the top of every page.
local function addTabs()
    local tabs = {
        { name = "skills", label = "Skills" },
        { name = "levels", label = "Levels" },
    }
    -- Which tab is "home" for the current page (guide pages belong to Skills).
    local activeTab = history[1] and history[1].name or current.name

    for i, tab in ipairs(tabs) do
        local button = view:AddSimpleButton(tab.label, function() Pages.switchTab(tab.name) end,
            { inline = i > 1 })
        if activeTab == tab.name then button:SetActive(true) end
    end
    local star = view:AddSimpleButton(STAR_SPRITE, function() Pages.switchTab("favourites") end,
        { inline = true, tooltip = "Favourites" })
    if activeTab == "favourites" then star:SetActive(true) end
end

-- The Back and Home buttons and where you are, for pages opened from a tab.
local function addBackRow(breadcrumb)
    if #history == 0 then return end
    -- The game reads "<" as the start of a text tag (like <col=ff0000>), which
    -- made a plain "< Back" label disappear. "<lt>" is the game's way of
    -- writing a literal "<".
    view:AddSimpleButton("<lt> Back", Pages.back)
    -- Home: straight back to the Skills tab, however deep you are.
    view:AddSimpleButton("Home", function() Pages.switchTab("skills") end, { inline = true })
    if breadcrumb then view:AddText({ text = breadcrumb, colour = GREY }) end
end

-- Build `current` from scratch. keepScroll = stay at the same scroll
-- position (used when a page redraws itself).
local function show(keepScroll)
    local scrollY = (keepScroll and view) and view.scrollY or 0
    local page = PAGES[current.name]

    newView()
    liveUpdate = nil
    addTabs()

    -- While directions are on, show them under the tabs on every page.
    compassText = nil
    if Compass.current() then
        compassText = view:AddText({ text = Compass.describe() or "", colour = AMBER })
        view:AddSimpleButton("Stop directions", function()
            Compass.stop()
            Pages.redraw()
        end)
    end
    page.build(current.arg, keepScroll)
    shownSignature = page.signature and page.signature(current.arg) or nil

    if keepScroll and scrollY > 0 then view:SetScrollPosition(scrollY) end
end

----------------------------------------------------------------------------
-- Navigation (called by buttons)
----------------------------------------------------------------------------

-- Open a page on top of the current one (Back returns here).
function Pages.open(name, arg)
    history[#history + 1] = current
    current = { name = name, arg = arg }
    show(false)
end

-- Go back one page.
function Pages.back()
    if #history == 0 then return end
    current = table.remove(history)
    show(false)
end

-- Jump to a tab, forgetting the Back history.
function Pages.switchTab(name)
    history = {}
    current = { name = name }
    show(false)
end

-- Rebuild the current page in place (after a star click, resize, etc.).
function Pages.redraw()
    show(true)
end

----------------------------------------------------------------------------
-- Skills tab
----------------------------------------------------------------------------

PAGES.skills = {
    build = function()
        view:AddTitle("Skills")
        view:AddText({ text = "Pick a skill to see its training guide.", colour = GREY })

        local width = columnWidth(2)
        for i, skill in ipairs(Skills.list) do
            local level = Skills.read(skill)
            local label = skill.name .. (level and ("  " .. level) or "")
            local hasGuide = Guides.bySkill[skill.name] ~= nil
            view:AddSimpleButton(label, function() Pages.open("guide", skill.name) end, {
                inline = (i % 2 == 0),       -- two buttons per row
                width = width,
                disabled = not hasGuide,     -- greyed out until its guide exists
            })
        end
    end,
    signature = function()
        local parts = {}
        for _, skill in ipairs(Skills.list) do parts[#parts + 1] = tostring(Skills.read(skill)) end
        return table.concat(parts, ",")
    end,
}

----------------------------------------------------------------------------
-- Levels tab
----------------------------------------------------------------------------

PAGES.levels = {
    build = function()
        view:AddTitle("Your levels")
        if not Player.IsAvailable() then
            view:AddText("Log in to see your levels.")
            return
        end
        local total = 0
        for _, skill in ipairs(Skills.list) do
            local level, xp = Skills.read(skill)
            total = total + level
            view:AddText(skill.name .. ": level " .. level .. "  (" .. Skills.formatNumber(xp) .. " xp)")
        end
        view:AddText({ text = "Total level: " .. total, colour = GOLD })
    end,
    signature = function()
        local parts = {}
        for _, skill in ipairs(Skills.list) do
            local _, xp = Skills.read(skill)
            parts[#parts + 1] = tostring(xp)
        end
        return table.concat(parts, ",")
    end,
}

----------------------------------------------------------------------------
-- Favourites tab
----------------------------------------------------------------------------

PAGES.favourites = {
    build = function()
        view:AddTitle("Favourites")
        local ids = Favourites.list()
        if #ids == 0 then
            view:AddText("No favourites yet. Click the star next to any training method "
                .. "to add it here.")
            return
        end

        local carried = Checks.carriedItems()
        local width = columnWidth(1) - 24 - COLUMN_GAP   -- leave room for the star
        for _, methodId in ipairs(ids) do
            local entry = Guides.methodById[methodId]
            if entry then
                addStarAndButton(entry, entry.guide.skill .. ": " .. entry.method.name, width)
                addCheckLine(methodStatusLine(entry.method, carried))
            end
        end
    end,
    signature = function()
        local carried = Checks.carriedItems()
        local parts = { table.concat(Favourites.list(), ",") }
        for _, methodId in ipairs(Favourites.list()) do
            local entry = Guides.methodById[methodId]
            if entry then parts[#parts + 1] = methodStatusLine(entry.method, carried).text end
        end
        return table.concat(parts, "|")
    end,
}

----------------------------------------------------------------------------
-- Guide page (arg = skill name)
----------------------------------------------------------------------------

PAGES.guide = {
    build = function(skillName, keepScroll)
        local guide = Guides.bySkill[skillName]
        addBackRow("Skills > " .. skillName)
        view:AddTitle(skillName .. " guide")
        if guide == nil then
            view:AddText("This guide isn't available yet.")
            return
        end

        local level = Skills.read(Skills.find(skillName))
        if level then
            view:AddText({ text = "Your level: " .. level .. " of " .. (guide.maxLevel or 99), colour = GOLD })
        else
            view:AddText("Log in to see where you are in this guide.")
        end

        local carried = Checks.carriedItems()
        local width = columnWidth(1) - 24 - COLUMN_GAP
        local myBand = level and Guides.bandFor(guide, level) or nil
        local myBandTitle = nil

        for _, band in ipairs(guide.bands) do
            local title = "Levels " .. band.from .. " to " .. (band.to - 1)
            if band == myBand then title = title .. "  (you are here)" end
            local titleText = view:AddTitle(title)
            if band == myBand then myBandTitle = titleText end

            for _, method in ipairs(band.methods) do
                local entry = Guides.methodById[method.id] or { method = method, guide = guide }
                addStarAndButton(entry, method.name, width)
                view:AddText({ text = methodSummary(method), colour = WHITE })
                addCheckLine(methodStatusLine(method, carried))
            end
        end

        if guide.boosts and #guide.boosts > 0 then
            view:AddTitle("Boosts")
            for _, boost in ipairs(guide.boosts) do view:AddText("- " .. boost) end
        end

        view:AddTitle("More")
        addWikiButton(guide.wiki, "Wiki training guide")
        view:AddText({ text = guide.source or "Data: RuneScape Wiki (CC BY-NC-SA 3.0)", colour = GREY })

        -- Jump to the player's band when the guide is first opened.
        if myBandTitle and not keepScroll then view:ScrollToChild(myBandTitle) end
    end,
    signature = function(skillName)
        local guide = Guides.bySkill[skillName]
        if guide == nil then return "" end
        local carried = Checks.carriedItems()
        local parts = { tostring(Skills.read(Skills.find(skillName))) }
        for _, band in ipairs(guide.bands) do
            for _, method in ipairs(band.methods) do
                parts[#parts + 1] = methodStatusLine(method, carried).text
            end
        end
        return table.concat(parts, "|")
    end,
}

----------------------------------------------------------------------------
-- Method page (arg = method id)
----------------------------------------------------------------------------

PAGES.method = {
    build = function(methodId)
        local entry = Guides.methodById[methodId]
        if entry == nil then
            addBackRow()
            view:AddText("This method isn't available.")
            return
        end
        local method, guide = entry.method, entry.guide
        addBackRow(guide.skill .. " > " .. "Levels " .. entry.band.from .. " to " .. (entry.band.to - 1))

        view:AddTitle(method.name)
        local starred = Favourites.has(method.id)
        view:AddSpriteButton("STAR", function(_, nowStarred)
            Favourites.set(method.id, nowStarred)
            Pages.redraw()
        end, { toggleable = true, disabled = not starred })
        view:AddText({
            text = starred and "In your favourites" or "Add to favourites",
            colour = starred and GOLD or GREY, inline = true,
        })

        view:AddText({ text = methodSummary(method), colour = WHITE })
        if method.money then view:AddText("Money: " .. method.money) end
        if method.crossovers then view:AddText("Also: " .. method.crossovers) end
        if method.notes then view:AddText(method.notes) end

        -- How to get there: directions, and live "which way" on request.
        if method.location then
            view:AddTitle("How to get there")
            view:AddText({ text = method.location, colour = GOLD })
            local travel = Travel.forMethod(method)
            if travel and travel.directions then view:AddText(travel.directions) end

            if travel and travel.coord then
                if Compass.current() == method.location then
                    view:AddText({ text = "Directions are shown at the top of the window.", colour = GREY })
                else
                    view:AddSimpleButton("Show directions", function()
                        Compass.start(method.location, travel.coord)
                        Pages.redraw()
                    end)
                end
                view:AddText({ text = "Directions are a straight line from where you stand. "
                    .. "Inside dungeons and instances they can be wrong.", colour = GREY })
            elseif travel then
                view:AddText({ text = "No single spot for this location, so no directions.",
                    colour = GREY })
            end
            if travel and travel.wiki then addWikiButton(travel.wiki, "Location on the wiki") end
        end

        local checks = Checks.method(method, Checks.carriedItems())
        if #checks.requirements > 0 then
            view:AddTitle("Requirements")
            for _, line in ipairs(checks.requirements) do addCheckLine(line) end
        end
        -- Areas that must be unlocked first, with how to unlock them.
        for _, entry in ipairs(checks.regions) do
            local region = entry.region
            view:AddTitle("Region: " .. region.name)
            local hasChecks = false
            for _, line in ipairs(entry.lines) do
                if line.state ~= "info" then hasChecks = true end
            end
            if not hasChecks then
                addCheckLine({ state = "info", text = "The plugin can't check this unlock" })
            elseif entry.unlocked then
                addCheckLine({ state = "ok", text = "Unlocked" })
            elseif entry.optional then
                addCheckLine({ state = "warn", text = "Locked, but optional: you can use another option" })
            else
                addCheckLine({ state = "todo", text = "Locked" })
            end
            for _, line in ipairs(entry.lines) do addCheckLine(line) end
            if region.howTo then view:AddText("How to unlock: " .. region.howTo) end
            if region.danger then view:AddText({ text = region.danger, colour = AMBER }) end
            addWikiButton(region.wiki, region.name .. " on the wiki")
        end

        if #checks.items > 0 then
            view:AddTitle("Wear or carry")
            for _, line in ipairs(checks.items) do addCheckLine(line) end
            view:AddText({ text = "Checks your backpack and worn items. The bank and tool belt "
                .. "can't be checked.", colour = GREY })
        end

        view:AddTitle("More")
        if method.activity and Activities.byId[method.activity] then
            view:AddSimpleButton("Open activity helper", function()
                Pages.open("activity", method.activity)
            end)
        end
        addWikiButton(method.wiki)
    end,
    signature = function(methodId)
        local entry = Guides.methodById[methodId]
        if entry == nil then return "" end
        local checks = Checks.method(entry.method, Checks.carriedItems())
        local parts = {}
        for _, line in ipairs(checks.requirements) do parts[#parts + 1] = line.state .. line.text end
        for _, line in ipairs(checks.items) do parts[#parts + 1] = line.state .. line.text end
        for _, entry in ipairs(checks.regions) do
            for _, line in ipairs(entry.lines) do parts[#parts + 1] = line.state .. line.text end
        end
        return table.concat(parts, "|")
    end,
}

----------------------------------------------------------------------------
-- Activity page (arg = activity id)
----------------------------------------------------------------------------

-- Fill in the live tracking lines. Runs when the page is built and once per
-- game tick after that.
local function refreshTracking(activity)
    local numbers = session and Tracker.read(session) or nil
    if numbers == nil then
        trackLines.gained.content = "Log in to start tracking."
        return
    end

    trackLines.gained.content = "XP gained: " .. Skills.formatNumber(numbers.gained)
        .. " in " .. Tracker.formatDuration(numbers.elapsedSeconds)

    if numbers.perHour then
        trackLines.rate.content = "XP/hr: " .. Skills.formatNumber(numbers.perHour)
    else
        trackLines.rate.content = "XP/hr: measuring (shown after 30 seconds)"
    end

    local nextLevel = "Level " .. (numbers.level + 1) .. " in "
        .. Skills.formatNumber(numbers.toNextLevel) .. " XP"
    if numbers.secondsToLevel then
        nextLevel = nextLevel .. ", about " .. Tracker.formatDuration(numbers.secondsToLevel)
    end
    trackLines.nextLevel.content = nextLevel

    if activity.updateUrnEstimate then
        local urnXp = activity.updateUrnEstimate()
        if urnXp == nil then
            trackLines.urn.content = "Urn fill: no urn filling in your backpack"
        else
            local percent = math.floor(urnXp / activity.URN_FILL_XP * 100)
            trackLines.urn.content = "Urn fill (estimate): " .. Skills.formatNumber(urnXp)
                .. " / " .. Skills.formatNumber(activity.URN_FILL_XP) .. " XP (" .. percent .. "%)"
        end
    end
end

-- Start tracking from now: XP, rate and urn estimate all go back to zero.
local function startTracking(activity)
    session = Tracker.start(Skills.find(activity.skill))
    if activity.resetUrnEstimate then activity.resetUrnEstimate() end
end

PAGES.activity = {
    -- keepScroll is true when the page is only redrawn: tracking carries on.
    build = function(activityId, keepScroll)
        local activity = Activities.byId[activityId]
        addBackRow(activity and (activity.skill .. " > Activity") or nil)
        if activity == nil then
            view:AddText("This activity isn't available.")
            return
        end
        if not keepScroll or session == nil then startTracking(activity) end

        view:AddTitle(activity.title)
        view:AddText({ text = "Where: " .. activity.location, colour = GOLD })
        view:AddText(activity.intro)

        view:AddTitle("Setup checklist")
        for _, line in ipairs(activity.checklist()) do addCheckLine(line) end
        view:AddText({ text = "Updates by itself as your backpack changes.", colour = GREY })

        view:AddTitle("Live tracking")
        trackLines = {
            gained = view:AddText(""),
            rate = view:AddText(""),
            nextLevel = view:AddText(""),
        }
        if activity.updateUrnEstimate then
            trackLines.urn = view:AddText("")
            view:AddText({
                text = "The urn fill is an estimate: it counts XP since tracking started, "
                    .. "and boosts can make it read high.",
                colour = GREY,
            })
        end
        view:AddSimpleButton("Reset tracking", function()
            startTracking(activity)
            refreshTracking(activity)
        end)

        refreshTracking(activity)
        liveUpdate = function() refreshTracking(activity) end
    end,
    signature = function(activityId)
        local activity = Activities.byId[activityId]
        if activity == nil then return "" end
        local parts = {}
        for _, line in ipairs(activity.checklist()) do parts[#parts + 1] = line.state .. line.text end
        return table.concat(parts, "|")
    end,
}

----------------------------------------------------------------------------
-- Called from main.lua
----------------------------------------------------------------------------

-- Build the first page.
function Pages.start(prettyWindow)
    window = prettyWindow
    Pages.switchTab("skills")
end

-- Rebuild the page that's showing (used after a resize, so text re-wraps).
function Pages.rebuild()
    Pages.redraw()
end

-- Called once per game tick: keep what's on screen up to date.
-- Rebuild the page only if its signature changed; otherwise just run its
-- live update (the activity tracker's numbers).
function Pages.refresh()
    local page = PAGES[current.name]
    local signature = page.signature and page.signature(current.arg) or nil
    if signature ~= shownSignature then
        show(true)
        return
    end
    if liveUpdate then liveUpdate() end
    if compassText then compassText.content = Compass.describe() or "" end
end

-- Remove the page (on plugin shutdown).
function Pages.stop()
    Tracker.shutdown()
    if view then view:Destroy() end
    view = nil
end

return Pages
