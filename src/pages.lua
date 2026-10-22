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
local Gear = require("src/gear/index")
local Icons = require("src/icons")
local ItemIndex = require("src/itemindex")
local Settings = require("src/settings")
local GameTime = require("src/gametime")
local Calendar = require("src/calendar")

-- Distractions & Diversions data (src/dnd.lua). A broken file just means
-- the Now tab shows no D&Ds.
local okDnd, DnD = pcall(require, "src/dnd")
if not okDnd or type(DnD) ~= "table" then
    print("[Training Path] Couldn't load src/dnd.lua: " .. tostring(DnD))
    DnD = { list = {} }
end

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

-- Intensity badges on method cards: short word and colour.
local INTENSITY_BADGE = {
    high   = { text = "HIGH", colour = RED },
    medium = { text = "MED",  colour = AMBER },
    low    = { text = "AFK",  colour = GREEN },
}

-- The game's gold star picture, used for the Favourites tab.
local STAR_SPRITE = id.Sprite.RAND_SPEEDRUN_STAR_GOLD_0
-- The game's settings cog, used for the Settings tab (PrettyUI uses it too).
local SETTINGS_SPRITE = id.Sprite.RS3_ICON_SETTINGS_30PX_2

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
local expandedBands = {}     -- "Skill:page:from" -> true/false, for collapsible bands

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

-- A collapsible band header: "[-] Levels 40 to 59" (open) or "[+] ..."
-- (closed). The player's own band starts open, the rest closed.
-- Returns the header component and whether the band is open.
local function addBandHeader(key, title, isMine)
    local open = expandedBands[key]
    if open == nil then open = isMine end
    local header = view:AddSimpleButton((open and "[-] " or "[+] ") .. title, function()
        expandedBands[key] = not open
        Pages.redraw()
    end, { width = columnWidth(1) })
    if isMine then header:SetActive(true) end   -- highlight "you are here"
    return header, open
end

-- A method as a compact card:
--   [star] [AFK] [ Method name button        ]
--   about 48,000 XP/hr - Fort Forinthry
--   [OK] Ready                 (or [  ] Missing: ...)
local function addMethodCard(entry, carried, title)
    local method = entry.method
    local badge = INTENSITY_BADGE[method.intensity] or { text = "?", colour = GREY }
    local nameWidth = columnWidth(1) - 24 - 44 - COLUMN_GAP * 2
    if method.id == nil then
        view:AddText({ text = title or method.name, colour = GOLD })
    else
        view:AddSpriteButton("STAR", function(_, starred)
            Favourites.set(method.id, starred)
            Pages.redraw()
        end, { toggleable = true, disabled = not Favourites.has(method.id),
            tooltip = "Add to or remove from favourites" })
        view:AddText({ text = badge.text, colour = badge.colour, inline = true, width = 44 })
        view:AddSimpleButton(title or method.name, function() Pages.open("method", method.id) end,
            { inline = true, width = nameWidth })
    end

    local details = {}
    if method.xpPerHour then details[#details + 1] = "about " .. Skills.formatNumber(method.xpPerHour) .. " XP/hr" end
    if method.location then details[#details + 1] = method.location end
    if #details > 0 then view:AddText({ text = table.concat(details, " - "), colour = WHITE }) end
    addCheckLine(methodStatusLine(method, carried))
end

-- One item line with its in-game icon when we know the item's exact name:
--   [icon] Tool: Rune pickaxe        (icon dimmed when you don't have it)
-- Falls back to a plain text line when there's no icon.
local function addItemLine(item, line)
    local obj = (item.names and item.names[1]) and ItemIndex.find(item.names[1]) or nil
    if obj == nil then
        addCheckLine(line)
        return
    end
    local style = CHECK_STYLE[line.state] or CHECK_STYLE.info
    view:AddItemSlot(obj, {
        disabled = line.state ~= "ok",
        quantity = (item.count and item.count > 1) and item.count or nil,
        tooltip = item.label,
    })
    view:AddText({ text = line.text, colour = style.colour, inline = true, offsetY = 8 })
end

-- The best method for a skill at the player's level, preferring the
-- intensity chosen in Settings. Guides list methods best-first, so within
-- the player's band we take the first one that is Ready and has the right
-- intensity; then the first with the right intensity; then the first one.
local function bestMethod(skillName, level, carried)
    local guide = Guides.bySkill[skillName]
    local band = (guide and level) and Guides.bandFor(guide, level) or nil
    if band == nil or #band.methods == 0 then return nil end
    local wanted = Settings.get("bestIntensity")
    local firstOfKind = nil
    for _, method in ipairs(band.methods) do
        if method.intensity == wanted then
            if #Checks.method(method, carried).missing == 0 then return method end
            firstOfKind = firstOfKind or method
        end
    end
    return firstOfKind or band.methods[1]
end

-- Hover text for a skill: its name and the best method right now.
local function skillTooltip(skill, level, carried)
    local best = bestMethod(skill.name, level, carried)
    if best then return skill.name .. ": " .. best.name end
    return skill.name
end

-- A skill's icon as a small picture button (clicking opens its guide).
local function addSkillIcon(skillName, size, inline)
    local spriteId = Icons.skill(skillName)
    if spriteId == nil then return nil end
    return view:AddSimpleButton(spriteId, function() Pages.open("guide", skillName) end, {
        size = size, iconSize = size - 6, inline = inline, tooltip = skillName,
    })
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
        { name = "now", label = "Now" },
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
    local cog = view:AddSimpleButton(SETTINGS_SPRITE, function() Pages.switchTab("settings") end,
        { inline = true, tooltip = "Settings" })
    if activeTab == "settings" then cog:SetActive(true) end
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
    if shownSignature then shownSignature = shownSignature .. (ItemIndex.isReady() and "|icons" or "") end

    if keepScroll and scrollY > 0 then
        view:SetScrollPosition(scrollY)
    else
        -- A new page always starts at the top (the window's own scroll too).
        view:SetScrollPosition(0)
        if window._scroll then pcall(function() window._scroll:SetScrollPosition(0) end) end
    end
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

-- The Training | Gear buttons at the top of a skill's guide. Switching
-- between them replaces the page instead of adding a Back step.
local function addSkillSubTabs(skillName, active)
    local training = view:AddSimpleButton("Training", function()
        current = { name = "guide", arg = skillName }
        show(false)
    end)
    local gear = view:AddSimpleButton("Gear", function()
        current = { name = "gear", arg = skillName }
        show(false)
    end, { inline = true, disabled = Gear.bySkill[skillName] == nil })
    if active == "guide" then training:SetActive(true) else gear:SetActive(true) end
end

-- A list of items (wear/carry), each checked green/red against what the
-- player is carrying or wearing.
local function addItemChecks(items, carried)
    for _, item in ipairs(items or {}) do addItemLine(item, Checks.item(item, carried)) end
end

----------------------------------------------------------------------------
-- Skills tab
----------------------------------------------------------------------------

PAGES.skills = {
    build = function()
        local compact = Settings.get("skillsView") == "compact"
        view:AddTitle("Skills")
        view:AddText({ text = "Click a skill for its guide and gear. Hover to see the best method "
            .. "for your level.", colour = GREY })

        -- Cell sizes: large icons, or small ones packed like the game's
        -- Skills tab. Each cell = icon button + level number.
        local iconSize = compact and 28 or 40
        local textWidth = compact and 28 or 32
        local gap = compact and 2 or COLUMN_GAP
        local cellWidth = iconSize + gap + textWidth + gap
        local columns = math.max(1, math.floor(columnWidth(1) / cellWidth))
        local carried = Checks.carriedItems()

        for i, skill in ipairs(Skills.list) do
            local level = Skills.read(skill)
            local hasGuide = Guides.bySkill[skill.name] ~= nil
            local inline = ((i - 1) % columns) ~= 0       -- start a new row every `columns`
            local spriteId = Icons.skill(skill.name)
            local open = function() Pages.open("guide", skill.name) end
            local tooltip = skillTooltip(skill, level, carried)
            if spriteId then
                view:AddSimpleButton(spriteId, open, { size = iconSize, iconSize = iconSize - 6,
                    inline = inline, columnGap = gap, tooltip = tooltip, disabled = not hasGuide })
            else
                view:AddSimpleButton(skill.name:sub(1, 3), open, { width = iconSize, inline = inline,
                    columnGap = gap, tooltip = tooltip, disabled = not hasGuide })
            end
            view:AddText({ text = level and tostring(level) or "-", colour = GOLD, inline = true,
                width = textWidth, columnGap = gap, offsetY = compact and 2 or 8 })
        end
    end,
    signature = function()
        local parts = { Settings.get("skillsView"), Settings.get("bestIntensity") }
        for _, skill in ipairs(Skills.list) do parts[#parts + 1] = tostring(Skills.read(skill)) end
        return table.concat(parts, ",")
    end,
}

----------------------------------------------------------------------------
-- Now tab: today's events, resets, D&Ds and skills worth training
----------------------------------------------------------------------------

-- Words used to spot a skill being mentioned in an event's text.
local function skillsMentioned(text)
    local found = {}
    local lower = string.lower(text or "")
    for _, skill in ipairs(Skills.list) do
        if string.find(lower, string.lower(skill.name), 1, true) then found[#found + 1] = skill.name end
    end
    return found
end

-- "Ready" / what's missing for a D&D's requirements (levels and quests).
local function dndStatus(entry)
    local req = entry.requirements or {}
    local missing = {}
    for _, levelReq in ipairs(req.levels or {}) do
        local line = Checks.level(levelReq)
        if line.state == "todo" then missing[#missing + 1] = line.text end
    end
    for _, questName in ipairs(req.quests or {}) do
        local line = Checks.quest(questName)
        if line.state == "todo" then missing[#missing + 1] = line.text end
    end
    if #missing == 0 then return { state = "ok", text = "You can do this" } end
    return { state = "todo", text = "Needs: " .. table.concat(missing, ", ") }
end

-- How often a D&D repeats, with a countdown where we can work one out.
local function dndTiming(entry, resets)
    if entry.resets == "daily" then return "Daily - resets in " .. GameTime.formatMinutes(resets.daily) end
    if entry.resets == "weekly" then return "Weekly - resets in " .. GameTime.formatMinutes(resets.weekly) end
    if entry.resets == "monthly" then return "Monthly - resets in " .. GameTime.formatMinutes(resets.monthly) end
    if entry.resets == "every_n_hours" and entry.everyHours then
        local hours = entry.everyHours
        local every = (hours < 1) and (math.floor(hours * 60 + 0.5) .. " minutes") or (hours .. " hours")
        return "Every " .. every
    end
    return "Any time"
end

local DND_GROUPS = {
    { resets = "daily", title = "Daily" },
    { resets = "weekly", title = "Weekly" },
    { resets = "monthly", title = "Monthly" },
    { resets = "every_n_hours", title = "On a timer" },
    { resets = "scheduled", title = "Any time" },
}

PAGES.now = {
    build = function()
        view:AddTitle("Right now")
        local now = GameTime.now()
        if now == nil then
            view:AddText("Log in to see the game time, today's events and resets.")
            return
        end
        view:AddText({ text = now.text .. " (game time)", colour = GOLD })

        -- Resets
        local resets = GameTime.untilResets(now)
        view:AddTitle("Resets")
        view:AddText("Daily reset in " .. GameTime.formatMinutes(resets.daily))
        view:AddText("Weekly reset (Wednesday) in " .. GameTime.formatMinutes(resets.weekly))
        view:AddText("Monthly reset in " .. GameTime.formatMinutes(resets.monthly))

        -- Today's calendar (only what's running today; never future events)
        local worthSkills = {}
        view:AddTitle("On the calendar today")
        if not Calendar.isReady() then
            view:AddText({ text = "Reading the in-game calendar...", colour = GREY })
        else
            local todays = Calendar.today(now.runeday)
            if #todays == 0 then view:AddText({ text = "Nothing on the calendar today.", colour = GREY }) end
            for _, entry in ipairs(todays) do
                local category = Calendar.categoryName(entry.category)
                view:AddText({ text = entry.title, colour = GOLD })
                local when
                if entry.endDay > entry.startDay then
                    when = "Until " .. GameTime.runedayText(entry.endDay)
                elseif type(entry.startTime) == "number" and entry.startTime > 0 then
                    when = string.format("Today at %02d:%02d UTC", entry.startTime // 100, entry.startTime % 100)
                    if type(entry.length) == "number" and entry.length > 0 then
                        when = when .. " for " .. entry.length .. " minutes"
                    end
                else
                    when = "Today"
                end
                view:AddText({ text = (category and (category .. " - ") or "") .. when, colour = WHITE })
                if entry.description then view:AddText({ text = entry.description, colour = GREY }) end
                for _, skillName in ipairs(skillsMentioned(entry.title .. " " .. (entry.description or ""))) do
                    worthSkills[skillName] = entry.title
                end
            end
        end

        -- Skills worth training now
        view:AddTitle("Worth training now")
        local any = false
        for _, skill in ipairs(Skills.list) do
            if worthSkills[skill.name] then
                any = true
                addSkillIcon(skill.name, 32, false)
                view:AddText({ text = skill.name .. ": featured in " .. worthSkills[skill.name],
                    inline = true, offsetY = 4 })
            end
        end
        -- Quick level-ups: the skills closest to their next level.
        local close = {}
        for _, skill in ipairs(Skills.list) do
            local level, xp = Skills.read(skill)
            if level and level < 99 then
                local from, to = Tracker.xpForLevel(level), Tracker.xpForLevel(level + 1)
                close[#close + 1] = { skill = skill, level = level, left = to - xp, part = (xp - from) / math.max(1, to - from) }
            end
        end
        table.sort(close, function(a, b) return a.part > b.part end)
        if #close > 0 then
            view:AddText({ text = "Closest to a level-up:", colour = GOLD })
            for i = 1, math.min(5, #close) do
                local c = close[i]
                addSkillIcon(c.skill.name, 32, false)
                view:AddText({ text = c.skill.name .. ": " .. math.floor(c.part * 100) .. "% to level "
                    .. (c.level + 1) .. " (" .. Skills.formatNumber(c.left) .. " XP)", inline = true, offsetY = 4 })
            end
            any = true
        end
        if not any then view:AddText({ text = "Nothing special today.", colour = GREY }) end

        -- Distractions & Diversions
        view:AddTitle("Distractions & Diversions")
        view:AddText({ text = "The plugin can't see yet whether you've done these this period, "
            .. "only when they reset.", colour = GREY })
        for _, group in ipairs(DND_GROUPS) do
            local inGroup = {}
            for _, entry in ipairs(DnD.list or {}) do
                if entry.resets == group.resets then inGroup[#inGroup + 1] = entry end
            end
            if #inGroup > 0 then
                view:AddText({ text = group.title, colour = GOLD })
                for _, entry in ipairs(inGroup) do
                    view:AddSimpleButton(entry.name, function() Pages.open("dnd", entry.id) end,
                        { width = columnWidth(1) })
                    view:AddText({ text = dndTiming(entry, resets), colour = WHITE })
                    addCheckLine(dndStatus(entry))
                end
            end
        end
        view:AddText({ text = DnD.source or "Data: RuneScape Wiki (CC BY-NC-SA 3.0)", colour = GREY })
    end,
    signature = function()
        -- Redraw once a minute (the clock), when levels change, or when the
        -- calendar finishes loading.
        local now = GameTime.nowMinutes() or 0
        local parts = { tostring(now), tostring(Calendar.isReady()) }
        for _, skill in ipairs(Skills.list) do parts[#parts + 1] = tostring(Skills.read(skill)) end
        return table.concat(parts, ",")
    end,
}

-- One D&D in detail (arg = D&D id).
PAGES.dnd = {
    build = function(dndId)
        local entry = nil
        for _, candidate in ipairs(DnD.list or {}) do
            if candidate.id == dndId then entry = candidate end
        end
        addBackRow("Now > " .. (entry and entry.name or "?"))
        if entry == nil then
            view:AddText("This activity isn't available.")
            return
        end
        view:AddTitle(entry.name)
        local now = GameTime.now()
        if now then view:AddText({ text = dndTiming(entry, GameTime.untilResets(now)), colour = AMBER }) end
        if entry.resetRule then view:AddText({ text = entry.resetRule, colour = GREY }) end
        if entry.reward then view:AddText("Reward: " .. entry.reward) end
        if entry.skills and #entry.skills > 0 then view:AddText("Skills: " .. table.concat(entry.skills, ", ")) end
        if entry.notes then view:AddText(entry.notes) end

        local req = entry.requirements or {}
        if (req.levels and #req.levels > 0) or (req.quests and #req.quests > 0) or (req.other and #req.other > 0) then
            view:AddTitle("Requirements")
            for _, levelReq in ipairs(req.levels or {}) do addCheckLine(Checks.level(levelReq)) end
            for _, questName in ipairs(req.quests or {}) do addCheckLine(Checks.quest(questName)) end
            for _, text in ipairs(req.other or {}) do addCheckLine({ state = "info", text = text }) end
        end

        if entry.location or entry.directions then
            view:AddTitle("How to get there")
            if entry.location then view:AddText({ text = entry.location, colour = GOLD }) end
            if entry.directions then view:AddText(entry.directions) end
            if entry.coord and Compass.current() ~= entry.name then
                view:AddSimpleButton("Show directions", function()
                    Compass.start(entry.name, entry.coord)
                    Pages.redraw()
                end)
            end
        end
        view:AddTitle("More")
        addWikiButton(entry.wiki)
    end,
    signature = function()
        return tostring(GameTime.nowMinutes())
    end,
}

----------------------------------------------------------------------------
-- Settings tab
----------------------------------------------------------------------------

-- A row of choice buttons; the chosen one is highlighted.
local function addChoice(settingName, choices)
    for i, choice in ipairs(choices) do
        local button = view:AddSimpleButton(choice.label, function()
            Settings.set(settingName, choice.value)
            Pages.redraw()
        end, { inline = i > 1 })
        if Settings.get(settingName) == choice.value then button:SetActive(true) end
    end
end

PAGES.settings = {
    build = function()
        view:AddTitle("Settings")

        view:AddTitle("Skills screen")
        addChoice("skillsView", {
            { label = "Large icons", value = "grid" },
            { label = "Compact", value = "compact" },
        })
        view:AddText({ text = "Compact looks like the game's Skills tab: small icons, close together.",
            colour = GREY })

        view:AddTitle("Best method means")
        addChoice("bestIntensity", {
            { label = "High intensity", value = "high" },
            { label = "Medium", value = "medium" },
            { label = "AFK", value = "low" },
        })
        view:AddText({ text = "Used for the hover text on the Skills screen: the best method for your "
            .. "level of this kind.", colour = GREY })
    end,
    signature = function()
        return Settings.get("skillsView") .. Settings.get("bestIntensity")
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
        for _, methodId in ipairs(ids) do
            local entry = Guides.methodById[methodId]
            if entry then
                addMethodCard(entry, carried, entry.guide.skill .. ": " .. entry.method.name)
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
        addSkillSubTabs(skillName, "guide")
        addSkillIcon(skillName, 40, false)
        view:AddTitle({ text = skillName .. " guide", inline = true, offsetY = 6 })
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

        view:AddText({ text = "Click a level range to open or close it. HIGH = click-intensive, "
            .. "MED = a click now and then, AFK = idle.", colour = GREY })

        local carried = Checks.carriedItems()
        local myBand = level and Guides.bandFor(guide, level) or nil
        local myBandTitle = nil

        for _, band in ipairs(guide.bands) do
            local title = "Levels " .. band.from .. " to " .. (band.to - 1)
            if band == myBand then title = title .. "  (you are here)" end
            local header, open = addBandHeader(skillName .. ":guide:" .. band.from, title, band == myBand)
            if band == myBand then myBandTitle = header end

            if open then
                for _, method in ipairs(band.methods) do
                    local entry = Guides.methodById[method.id] or { method = method, guide = guide }
                    addMethodCard(entry, carried)
                end
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
-- Gear page (arg = skill name): gear by level, and how to get it
----------------------------------------------------------------------------

PAGES.gear = {
    build = function(skillName, keepScroll)
        local gear = Gear.bySkill[skillName]
        addBackRow("Skills > " .. skillName .. " > Gear")
        addSkillSubTabs(skillName, "gear")
        addSkillIcon(skillName, 40, false)
        view:AddTitle({ text = skillName .. " gear", inline = true, offsetY = 6 })
        if gear == nil then
            view:AddText("Gear for this skill isn't available yet.")
            return
        end

        local level = Skills.read(Skills.find(skillName))
        view:AddText({ text = "Green = you're wearing or carrying it. The bank can't be checked.",
            colour = GREY })

        local carried = Checks.carriedItems()
        local myBand = level and Gear.bandFor(gear, level) or nil
        local myBandTitle = nil

        for _, band in ipairs(gear.bands) do
            local title = "Levels " .. band.from .. " to " .. (band.to - 1)
            if band == myBand then title = title .. "  (you are here)" end
            local header, open = addBandHeader(skillName .. ":gear:" .. band.from, title, band == myBand)
            if band == myBand then myBandTitle = header end

            for _, item in ipairs(open and band.items or {}) do
                -- "[icon] Tool: Bronze hatchet": bright and green when you
                -- have it, dimmed and red when you don't.
                local owned = Checks.item(item, carried)
                owned.text = (item.slot or "Item") .. ": " .. owned.text
                addItemLine(item, owned)
                for _, levelReq in ipairs(item.levels or {}) do
                    local line = Checks.level(levelReq)
                    line.text = "   Needs " .. line.text
                    addCheckLine(line)
                end
                local tradeText = (item.tradeable == true and "Tradeable: yes (Grand Exchange)")
                    or (item.tradeable == false and "Tradeable: no") or nil
                if tradeText then view:AddText({ text = "   " .. tradeText, colour = WHITE }) end
                if item.obtain then view:AddText("   How to get: " .. item.obtain) end
                if item.notes then view:AddText({ text = "   " .. item.notes, colour = GREY }) end
                addWikiButton(item.wiki, "Wiki: " .. item.label)
            end
        end

        view:AddText({ text = gear.source or "Data: RuneScape Wiki (CC BY-NC-SA 3.0)", colour = GREY })
    end,
    signature = function(skillName)
        local gear = Gear.bySkill[skillName]
        if gear == nil then return "" end
        local carried = Checks.carriedItems()
        local parts = { tostring(Skills.read(Skills.find(skillName))) }
        for _, band in ipairs(gear.bands) do
            for _, item in ipairs(band.items) do parts[#parts + 1] = Checks.item(item, carried).state end
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

        addSkillIcon(guide.skill, 40, false)
        view:AddTitle({ text = method.name, inline = true, offsetY = 6 })
        local badge = INTENSITY_BADGE[method.intensity]
        if badge then view:AddText({ text = badge.text, colour = badge.colour }) end
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
            for i, line in ipairs(checks.items) do addItemLine(method.items[i], line) end
            view:AddText({ text = "Checks your backpack and worn items. The bank and tool belt "
                .. "can't be checked.", colour = GREY })
        end

        -- Recommended setup, to copy into your own preset.
        local inventory = Gear.inventoryFor(method.id)
        if inventory then
            view:AddTitle("Recommended inventory / preset")
            if inventory.notes then view:AddText(inventory.notes) end
            if inventory.wear and #inventory.wear > 0 then
                view:AddText({ text = "Wear:", colour = GOLD })
                addItemChecks(inventory.wear, Checks.carriedItems())
            end
            if inventory.carry and #inventory.carry > 0 then
                view:AddText({ text = "Carry:", colour = GOLD })
                addItemChecks(inventory.carry, Checks.carriedItems())
            end
            view:AddText({ text = "Plugins can't make presets, but you can save this setup as one "
                .. "at a bank.", colour = GREY })
        end

        view:AddTitle("More")
        -- One button per activity helper for this method.
        for _, activity in ipairs(Activities.forMethod(method.id)) do
            view:AddSimpleButton("Activity helper: " .. activity.title, function()
                Pages.open("activity", activity.id)
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
        local inventory = Gear.inventoryFor(methodId)
        if inventory then
            local carried = Checks.carriedItems()
            for _, list in ipairs({ inventory.wear or {}, inventory.carry or {} }) do
                for _, item in ipairs(list) do parts[#parts + 1] = Checks.item(item, carried).state end
            end
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

        addSkillIcon(activity.skill, 40, false)
        view:AddTitle({ text = activity.title, inline = true, offsetY = 6 })
        if activity.intro then view:AddText(activity.intro) end
        if activity.repeats then
            view:AddText({ text = "Repeats: " .. activity.repeats
                .. (activity.repeatNote and (". " .. activity.repeatNote) or ""), colour = AMBER })
        end

        -- How to get there (directions only; see the method page for more).
        if activity.location then
            view:AddTitle("How to get there")
            view:AddText({ text = activity.location, colour = GOLD })
            local travel = Travel.byLocation[activity.location]
            if travel and travel.directions then view:AddText(travel.directions) end
            if travel and travel.coord and Compass.current() ~= activity.location then
                view:AddSimpleButton("Show directions", function()
                    Compass.start(activity.location, travel.coord)
                    Pages.redraw()
                end)
            end
        end

        view:AddTitle("Setup checklist")
        for _, line in ipairs(activity.checklist()) do addCheckLine(line) end
        view:AddText({ text = "Updates by itself as your backpack changes.", colour = GREY })

        if activity.steps and #activity.steps > 0 then
            view:AddTitle("Steps")
            for i, step in ipairs(activity.steps) do view:AddText(i .. ". " .. step) end
        end
        if activity.tips and #activity.tips > 0 then
            view:AddTitle("Tips")
            for _, tip in ipairs(activity.tips) do view:AddText("- " .. tip) end
        end

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

        if activity.finish and #activity.finish > 0 then
            view:AddTitle("When you're done")
            for _, line in ipairs(activity.finish) do view:AddText("- " .. line) end
        end

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
    ItemIndex.start()   -- builds item icons in the background
    Calendar.start()    -- reads the in-game calendar in the background
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
    -- Item icons appear once the item index finishes, so count that too.
    if signature then signature = signature .. (ItemIndex.isReady() and "|icons" or "") end
    if signature ~= shownSignature then
        show(true)
        return
    end
    if liveUpdate then liveUpdate() end
    if compassText then compassText.content = Compass.describe() or "" end
end

-- Remove the page (on plugin shutdown).
function Pages.stop()
    ItemIndex.stop()
    Calendar.stop()
    Tracker.shutdown()
    if view then view:Destroy() end
    view = nil
end

return Pages
