--[[
    guides/index.lua
    ----------------
    Loads every skill guide (src/guides/<skill>.lua) and indexes them.
    Format: docs/guide-format.md.

    Each guide is loaded with pcall, so one broken file only hides that one
    guide (with a console message) instead of stopping the whole plugin.
]]

local Skills = require("src/skills")

local Guides = {}

Guides.bySkill = {}     -- skill name -> guide
Guides.methodById = {}  -- method id  -> { method = ..., guide = ..., band = ... }
Guides.failed = {}      -- skill name -> error text, for guides that didn't load

for _, skill in ipairs(Skills.list) do
    local path = "src/guides/" .. string.lower(skill.name)
    local ok, guide = pcall(require, path)
    if ok and type(guide) == "table" and guide.bands then
        Guides.bySkill[skill.name] = guide
        for _, band in ipairs(guide.bands) do
            for _, method in ipairs(band.methods) do
                if method.id == nil then
                    print("[Training Path] " .. skill.name .. ": method without id: " .. tostring(method.name))
                elseif Guides.methodById[method.id] then
                    print("[Training Path] Duplicate method id: " .. method.id)
                else
                    Guides.methodById[method.id] = { method = method, guide = guide, band = band }
                end
            end
        end
    elseif ok then
        Guides.failed[skill.name] = "file has no guide data"
    else
        -- A missing file is normal while guides are being written; only
        -- report real errors.
        if not tostring(guide):find("not found", 1, true) then
            print("[Training Path] Guide for " .. skill.name .. " failed to load: " .. tostring(guide))
        end
        Guides.failed[skill.name] = tostring(guide)
    end
end

-- The band the player is in right now: from <= level < to.
-- Returns nil if no band covers that level.
function Guides.bandFor(guide, level)
    for _, band in ipairs(guide.bands) do
        if level >= band.from and level < band.to then
            return band
        end
    end
    return nil
end

-- Words shown for each intensity value.
Guides.intensityLabel = {
    high = "High intensity",
    medium = "Medium intensity",
    low = "Low intensity (AFK)",
}

return Guides
