--[[
    checks.lua
    ----------
    Answers "does the player meet this?" for the parts of a training method:
      - level requirements  (Player.GetLevelUncapped)
      - quest requirements  (QuestType.hasFinishedQuest)
      - items to wear/carry (backpack + worn equipment, matched by item name)
    Everything here only READS game data the player can already see.

    Each check returns a "line": { state = "ok" | "todo" | "info", text = "..." }
      ok   = met (shown green)
      todo = not met (shown red)
      info = the plugin can't check this (shown grey)
]]

local Skills = require("src/skills")
local Regions = require("src/regions")

local Checks = {}

----------------------------------------------------------------------------
-- Items
----------------------------------------------------------------------------

-- Count everything the player is carrying or wearing, by lowercase name.
-- Returns a table like { ["hammer"] = 1, ["fire rune"] = 250 }.
-- Bank, metal bank and tool belt can't be read, so they aren't included.
function Checks.carriedItems()
    local counts = {}
    for _, invType in ipairs({ config.Inv.INV, config.Inv.WORN }) do
        local inv = Inventory.Find(invType)
        if inv ~= nil and inv.isValid then
            for _, slot in ipairs(inv:GetSlots()) do
                if slot and slot.obj then
                    local name = string.lower(slot.obj.name or "")
                    counts[name] = (counts[name] or 0) + (slot.count or 1)
                end
            end
        end
    end
    return counts
end

-- How many items match one item entry from a guide (see docs/guide-format.md).
local function countMatching(item, carried)
    local total = 0
    for name, count in pairs(carried) do
        local matches = false
        for _, wanted in ipairs(item.names or {}) do
            if name == string.lower(wanted) then matches = true end
        end
        for _, part in ipairs(item.contains or {}) do
            -- `true` = plain text search, so characters like "(" aren't special
            if string.find(name, string.lower(part), 1, true) then matches = true end
        end
        if matches then total = total + count end
    end
    return total
end

function Checks.item(item, carried)
    local need = item.count or 1
    local have = countMatching(item, carried)
    local text = item.label
    if need > 1 then text = text .. " (" .. math.min(have, need) .. "/" .. need .. ")" end
    if have >= need then return { state = "ok", text = text } end
    -- Tools like hatchets and pickaxes can live on the tool belt, which
    -- plugins can't see. Not finding one there isn't proof it's missing.
    if item.toolBelt then
        return { state = "info", text = text .. " (or on your tool belt)" }
    end
    return { state = "todo", text = text }
end

----------------------------------------------------------------------------
-- Levels
----------------------------------------------------------------------------

function Checks.level(requirement)
    local text = requirement.skill .. " " .. requirement.level
    local skill = Skills.find(requirement.skill)
    local level = skill and Skills.read(skill) or nil
    if level == nil then return { state = "info", text = text } end
    if level >= requirement.level then return { state = "ok", text = text } end
    return { state = "todo", text = text .. " (you have " .. level .. ")" }
end

----------------------------------------------------------------------------
-- Quests
----------------------------------------------------------------------------

-- Quest name (lowercase) -> QuestType. Built the first time it's needed by
-- looking at every quest id the game knows (a few thousand quick lookups).
local questsByName = nil
local MAX_QUEST_ID = 5000

local function findQuest(name)
    if questsByName == nil then
        questsByName = {}
        for questId = 0, MAX_QUEST_ID do
            local ok, quest = pcall(config.Quest.FromID, questId)
            if ok and quest ~= nil and quest.name ~= nil and not quest.deprecated then
                questsByName[string.lower(quest.name)] = quest
            end
        end
    end
    return questsByName[string.lower(name)]
end

function Checks.quest(name)
    local quest = findQuest(name)
    if quest == nil or not Player.IsAvailable() then
        return { state = "info", text = "Quest: " .. name }
    end
    local ok, finished = pcall(function() return quest.hasFinishedQuest end)
    if not ok then return { state = "info", text = "Quest: " .. name } end
    return { state = finished and "ok" or "todo", text = "Quest: " .. name }
end

----------------------------------------------------------------------------
-- A whole method
----------------------------------------------------------------------------

-- The unlock checks for one region (see src/regions.lua). Returns a list of
-- lines and whether the region counts as unlocked (no red lines).
function Checks.region(region)
    local lines = {}
    local req = region.requirements or {}
    for _, levelReq in ipairs(req.levels or {}) do lines[#lines + 1] = Checks.level(levelReq) end
    for _, questName in ipairs(req.quests or {}) do lines[#lines + 1] = Checks.quest(questName) end
    for _, text in ipairs(req.other or {}) do lines[#lines + 1] = { state = "info", text = text } end
    local unlocked = true
    for _, line in ipairs(lines) do
        if line.state == "todo" then unlocked = false end
    end
    return lines, unlocked
end

-- Every check for one method, grouped:
--   result.requirements = list of lines (levels, quests, other)
--   result.items        = list of lines
--   result.regions      = list of { region, lines, unlocked, optional }
--   result.missing      = short names of what's not met, for a summary
function Checks.method(method, carried)
    local result = { requirements = {}, items = {}, missing = {} }
    local req = method.requirements or {}

    local function add(list, line)
        list[#list + 1] = line
        if line.state == "todo" then result.missing[#result.missing + 1] = line.text end
    end

    for _, levelReq in ipairs(req.levels or {}) do add(result.requirements, Checks.level(levelReq)) end
    for _, questName in ipairs(req.quests or {}) do add(result.requirements, Checks.quest(questName)) end
    for _, text in ipairs(req.other or {}) do add(result.requirements, { state = "info", text = text }) end
    for _, item in ipairs(method.items or {}) do add(result.items, Checks.item(item, carried)) end

    result.regions = {}
    for _, found in ipairs(Regions.forMethod(method)) do
        local region = found.region
        local lines, unlocked = Checks.region(region)
        result.regions[#result.regions + 1] = {
            region = region, lines = lines, unlocked = unlocked, optional = found.optional,
        }
        -- Only a region you really need counts as missing.
        if not unlocked and not found.optional then
            result.missing[#result.missing + 1] = region.name .. " access"
        end
    end

    return result
end

return Checks
