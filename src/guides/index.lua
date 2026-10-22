--[[
    guides/index.lua
    ----------------
    The list of skill guides, plus small helpers for reading them.
    To add a guide: write src/guides/<skill>.lua in the same format as
    smithing.lua, then add one line to Guides.bySkill below.
]]

local Guides = {}

-- Skill name -> guide data. Only skills listed here have a guide.
Guides.bySkill = {
    Smithing = require("src/guides/smithing"),
}

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
