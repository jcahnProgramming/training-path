--[[
    pages.lua
    ---------
    What's inside the window. The window shows one page at a time:
      - Home:  buttons for each skill guide, then the player's levels.
      - Guide: one skill's guide, with the player's current band marked.
      - Activity: help for one activity (setup checklist for now).

    Each page is a PrettyUI SimpleView (a scrollable area) that fills the
    window. Switching pages destroys the old view and builds a new one.
    This is the same pattern Entity Hider uses for its settings page.
]]

local Skills = require("src/skills")
local Guides = require("src/guides/index")
local Activities = require("src/activities/index")

local Pages = {}

-- Text colours, as 0xRRGGBBAA (the format PrettyUI uses).
local GOLD = 0xF2C66DFF
local GREY = 0x9A9A9AFF
local GREEN = 0x7CD67CFF
local RED = 0xE06C6CFF
local AMBER = 0xE8B04BFF

-- How each checklist state is shown: a marker and a colour.
local CHECK_STYLE = {
    ok   = { mark = "[OK]", colour = GREEN },
    todo = { mark = "[  ]", colour = RED },
    warn = { mark = "[!]",  colour = AMBER },
    info = { mark = "[?]",  colour = GREY },
}

-- Which page is showing, and the things we need to update it each tick.
local window = nil          -- the PrettyUI window, set by Pages.start
local view = nil            -- the SimpleView for the current page
local currentPage = "home"  -- "home", "guide" or "activity"
local currentSkill = nil    -- skill name, when on a guide or activity page
local currentActivity = nil -- activity id, when on an activity page
local shownChecklist = nil  -- activity page: checklist text it was built with
local shownLevel = nil      -- level the guide page was built for
local statusText = nil      -- home page: line at the top
local skillLines = {}       -- home page: one text per skill
local lastShown = {}        -- home page: what each skill line says now

-- Throw away the current page and start an empty one that fills the window.
local function newView()
    if view then view:Destroy() end
    view = prettyui.SimpleView.new(window.content, {
        width = 0, height = 0,
        widthAnchor = 1.0, heightAnchor = 1.0,   -- 100% of the window
    })
    skillLines = {}
    lastShown = {}
    statusText = nil
end

-- Find a skill in Skills.list by its name.
local function findSkill(name)
    for _, skill in ipairs(Skills.list) do
        if skill.name == name then return skill end
    end
    return nil
end

----------------------------------------------------------------------------
-- Home page
----------------------------------------------------------------------------

-- Update the level lines on the home page (only the ones that changed).
local function refreshHome()
    if not Player.IsAvailable() then
        statusText.content = "Log in to see your levels."
        return
    end
    statusText.content = "Pick a guide, or scroll to see all your levels."

    for i, skill in ipairs(Skills.list) do
        local level, xp = Skills.read(skill)
        local line = skill.name .. ": level " .. level
            .. "  (" .. Skills.formatNumber(xp) .. " xp)"
        if lastShown[i] ~= line then
            lastShown[i] = line
            skillLines[i].content = line
        end
    end
end

function Pages.showHome()
    newView()
    currentPage = "home"
    currentSkill = nil

    statusText = view:AddText("Log in to see your levels.")

    view:AddTitle("Guides")
    for _, skill in ipairs(Skills.list) do
        if Guides.bySkill[skill.name] then
            view:AddSimpleButton(skill.name .. " guide", function()
                Pages.showGuide(skill.name)
            end)
        end
    end

    view:AddTitle("Your levels")
    for i, skill in ipairs(Skills.list) do
        skillLines[i] = view:AddText(skill.name .. ": -")
    end

    refreshHome()
end

----------------------------------------------------------------------------
-- Guide page
----------------------------------------------------------------------------

-- Add one training method to the page as a few short lines.
local function addMethod(method)
    view:AddText({ text = method.name, colour = GOLD })

    local summary = Guides.intensityLabel[method.intensity] or method.intensity
    if method.xpPerHour then
        summary = summary .. ", about " .. Skills.formatNumber(method.xpPerHour) .. " XP/hr"
    end
    view:AddText(summary)

    if method.requirements then view:AddText("Needs: " .. method.requirements) end
    if method.location then view:AddText("Where: " .. method.location) end
    if method.items then view:AddText("Bring: " .. method.items) end
    if method.money then view:AddText("Money: " .. method.money) end
    if method.notes then view:AddText(method.notes) end

    if method.activity and Activities.byId[method.activity] then
        view:AddSimpleButton("Open activity", function()
            Pages.showActivity(method.activity)
        end)
    end
end

function Pages.showGuide(skillName)
    local guide = Guides.bySkill[skillName]
    local skill = findSkill(skillName)
    if guide == nil or skill == nil then return Pages.showHome() end

    newView()
    currentPage = "guide"
    currentSkill = skillName

    local level = Skills.read(skill)
    shownLevel = level

    view:AddSimpleButton("< Back", Pages.showHome)
    view:AddTitle(skillName .. " guide")
    if level then
        view:AddText("Your level: " .. level)
    else
        view:AddText("Log in to see where you are in this guide.")
    end

    -- Every band in order. The player's band gets "(you are here)" and the
    -- page scrolls to it once it's built.
    local myBand = level and Guides.bandFor(guide, level) or nil
    local myBandTitle = nil
    for _, band in ipairs(guide.bands) do
        local title = "Levels " .. band.from .. " to " .. (band.to - 1)
        if band == myBand then title = title .. "  (you are here)" end
        local titleText = view:AddTitle(title)
        if band == myBand then myBandTitle = titleText end

        for _, method in ipairs(band.methods) do
            addMethod(method)
        end
    end

    view:AddTitle("Boosts")
    for _, boost in ipairs(guide.boosts) do
        view:AddText("- " .. boost)
    end

    view:AddText({ text = guide.source, colour = GREY })

    if myBandTitle then view:ScrollToChild(myBandTitle) end
end

----------------------------------------------------------------------------
-- Activity page
----------------------------------------------------------------------------

-- Turn a checklist into one string, so we can tell when anything changed.
local function checklistSignature(lines)
    local parts = {}
    for _, line in ipairs(lines) do parts[#parts + 1] = line.state .. line.text end
    return table.concat(parts, "|")
end

function Pages.showActivity(activityId)
    local activity = Activities.byId[activityId]
    if activity == nil then return Pages.showHome() end

    newView()
    currentPage = "activity"
    currentActivity = activityId
    currentSkill = activity.skill

    view:AddSimpleButton("< Back to " .. activity.skill .. " guide", function()
        Pages.showGuide(activity.skill)
    end)
    view:AddTitle(activity.title)
    view:AddText({ text = "Where: " .. activity.location, colour = GOLD })
    view:AddText(activity.intro)

    view:AddTitle("Setup checklist")
    local lines = activity.checklist()
    shownChecklist = checklistSignature(lines)
    for _, line in ipairs(lines) do
        local style = CHECK_STYLE[line.state] or CHECK_STYLE.info
        view:AddText({ text = style.mark .. " " .. line.text, colour = style.colour })
    end
    view:AddText({ text = "Updates by itself as your backpack changes.", colour = GREY })
end

----------------------------------------------------------------------------
-- Called from main.lua
----------------------------------------------------------------------------

-- Build the first page.
function Pages.start(prettyWindow)
    window = prettyWindow
    Pages.showHome()
end

-- Rebuild the page that's showing (used after a resize, so text re-wraps).
function Pages.rebuild()
    if currentPage == "guide" then
        Pages.showGuide(currentSkill)
    elseif currentPage == "activity" then
        Pages.showActivity(currentActivity)
    else
        Pages.showHome()
    end
end

-- Called once per game tick: keep the numbers on screen up to date.
function Pages.refresh()
    if currentPage == "home" then
        refreshHome()
    elseif currentPage == "guide" then
        -- Only rebuild the guide if the player's level in it changed.
        local level = Skills.read(findSkill(currentSkill))
        if level ~= shownLevel then Pages.showGuide(currentSkill) end
    elseif currentPage == "activity" then
        -- Only rebuild if the checklist would read differently now.
        local lines = Activities.byId[currentActivity].checklist()
        if checklistSignature(lines) ~= shownChecklist then
            Pages.showActivity(currentActivity)
        end
    end
end

-- Remove the page (on plugin shutdown).
function Pages.stop()
    if view then view:Destroy() end
    view = nil
end

return Pages
