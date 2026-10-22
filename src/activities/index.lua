--[[
    activities/index.lua
    --------------------
    Every activity: step-by-step help to set up, run and finish a training
    method. Two kinds:
      - hand-written ones with their own code (urn_smithing.lua: urn checks
        and the urn fill estimate)
      - data ones, one file per skill (src/activities/<skill>.lua, format in
        docs/activity-format.md). This file turns each into the same shape
        as the hand-written one, so one page can show both.

    Activities.byId[id]               the activity
    Activities.forMethod(methodId)    list of activities for a guide method
]]

local Skills = require("src/skills")
local Checks = require("src/checks")
local Guides = require("src/guides/index")

local Activities = {}

Activities.byId = {}
local byMethod = {}   -- method id -> list of activities

local function addForMethod(methodId, activity)
    if methodId == nil then return end
    byMethod[methodId] = byMethod[methodId] or {}
    table.insert(byMethod[methodId], activity)
end

-- Hand-written activities.
local urn = require("src/activities/urn_smithing")
Activities.byId[urn.id] = urn
addForMethod("smithing_urns_orikalkum", urn)

-- Build the setup checklist for a data activity: levels, quests and items
-- are checked (green/red); `other` lines are for the player to check.
local function dataChecklist(data)
    local lines = {}
    if not Player.IsAvailable() then
        lines[1] = { state = "info", text = "Log in to check your setup." }
        return lines
    end
    local list = data.checklist or {}
    local carried = Checks.carriedItems()
    for _, levelReq in ipairs(list.levels or {}) do lines[#lines + 1] = Checks.level(levelReq) end
    for _, questName in ipairs(list.quests or {}) do lines[#lines + 1] = Checks.quest(questName) end
    for _, item in ipairs(list.items or {}) do lines[#lines + 1] = Checks.item(item, carried) end
    for _, text in ipairs(list.other or {}) do lines[#lines + 1] = { state = "info", text = text } end
    return lines
end

-- Data activities, one file per skill. A missing or broken file only hides
-- that skill's activities.
for _, skill in ipairs(Skills.list) do
    local path = "src/activities/" .. string.lower(skill.name)
    local ok, data = pcall(require, path)
    if ok and type(data) == "table" and data.activities then
        for _, entry in ipairs(data.activities) do
            local found = Guides.methodById[entry.method]
            local activity = {
                id = entry.id,
                skill = skill.name,
                method = entry.method,
                title = entry.title,
                intro = entry.intro,
                -- Where it happens comes from the guide method.
                location = found and found.method.location or nil,
                steps = entry.steps,
                tips = entry.tips,
                finish = entry.finish,
                repeats = entry.repeats,
                repeatNote = entry.repeatNote,
                checklist = function() return dataChecklist(entry) end,
            }
            Activities.byId[entry.id] = activity
            addForMethod(entry.method, activity)
        end
    elseif not ok and not tostring(data):find("not found", 1, true) then
        print("[Training Path] Activities for " .. skill.name .. " failed to load: " .. tostring(data))
    end
end

function Activities.forMethod(methodId)
    return byMethod[methodId] or {}
end

return Activities
