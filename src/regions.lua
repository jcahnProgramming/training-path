--[[
    regions.lua
    -----------
    Areas that must be unlocked before you can train there (for example
    Prifddinas needs the quest Plague's End). The data lives in two files:
      src/regions_cities.lua    cities, islands and large areas
      src/regions_dungeons.lua  dungeons, guilds and dig sites
    Each region has: name, match (words to look for in a method's location),
    requirements (quests/levels/other, same shape as a method's), howTo
    (plain-English unlock steps), wiki, and optionally danger.

    Methods don't name their region directly: Regions.forMethod() finds it
    by looking for a region's `match` words in the method's location. That way the 578 guide methods didn't need editing.
]]

local Regions = {}

Regions.byId = {}

-- Load both data files. A broken file is reported and skipped.
for _, path in ipairs({ "src/regions_cities", "src/regions_dungeons" }) do
    local ok, data = pcall(require, path)
    if ok and type(data) == "table" then
        for regionId, region in pairs(data) do
            region.id = regionId
            Regions.byId[regionId] = region
        end
    else
        print("[Training Path] Couldn't load " .. path .. ": " .. tostring(data))
    end
end

-- The text that names where a method happens, in lowercase. Only the
-- location is used: requirement text like "Elite Wilderness achievements"
-- names a place without the method happening there.
local function placeText(method)
    return string.lower(method.location or "")
end

-- Regions that are only a faster way to travel, never a must.
local SHORTCUT_ONLY = { fairy_rings = true }

-- True if a location offers alternatives, e.g. "Southern Karamja, Ape Atoll
-- or Mos Le'Harmless": then no single region in it is required.
local function hasAlternatives(locationText)
    local text = string.lower(locationText or "")
    if string.find(text, " or ", 1, true) then return true end
    local _, commas = string.gsub(text, ",", "")
    return commas >= 2
end

-- The regions a method mentions, sorted by name. Each entry is
-- { region = ..., optional = true/false }. optional = the player can train
-- without unlocking it (the location lists other options, or the region is
-- just a shortcut). Worked out once per method and remembered.
local cache = {}
function Regions.forMethod(method)
    if cache[method] then return cache[method] end
    local text = placeText(method)
    local alternatives = hasAlternatives(method.location)
    local found = {}
    for regionId, region in pairs(Regions.byId) do
        for _, word in ipairs(region.match or {}) do
            -- `true` = plain text search, so characters like "'" aren't special
            if string.find(text, word, 1, true) then
                found[#found + 1] = {
                    region = region,
                    optional = alternatives or SHORTCUT_ONLY[regionId] == true,
                }
                break
            end
        end
    end
    table.sort(found, function(a, b) return a.region.name < b.region.name end)
    cache[method] = found
    return found
end

return Regions
