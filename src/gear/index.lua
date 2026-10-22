--[[
    gear/index.lua
    --------
    Loads the gear data for every skill (src/gear/<skill>.lua, format in
    docs/gear-format.md):
      Gear.bySkill[skillName]  = { bands = ..., inventories = ..., source = ... }
      Gear.inventoryFor(id)    = recommended inventory for a training method
    A missing or broken gear file only hides that skill's gear.
]]

local Skills = require("src/skills")

local Gear = {}

Gear.bySkill = {}
local inventories = {}   -- method id -> { notes, wear, carry }

for _, skill in ipairs(Skills.list) do
    local path = "src/gear/" .. string.lower(skill.name)
    local ok, data = pcall(require, path)
    if ok and type(data) == "table" and data.bands then
        Gear.bySkill[skill.name] = data
        for methodId, inventory in pairs(data.inventories or {}) do
            inventories[methodId] = inventory
        end
    elseif not ok and not tostring(data):find("not found", 1, true) then
        print("[Training Path] Gear for " .. skill.name .. " failed to load: " .. tostring(data))
    end
end

function Gear.inventoryFor(methodId)
    return inventories[methodId]
end

-- The gear band for a level (from <= level < to), or nil.
function Gear.bandFor(gear, level)
    for _, band in ipairs(gear.bands) do
        if level >= band.from and level < band.to then return band end
    end
    return nil
end

return Gear
