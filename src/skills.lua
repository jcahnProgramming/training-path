--[[
    skills.lua
    ----------
    The list of skills, and a function to read the player's level and XP
    in each one. Everything here is read-only: it only asks the game for
    numbers the player can already see in their Skills tab.

    API used (docs: https://developer.runescape.com/rs/game/player.html):
      Player.IsAvailable()              -> true once logged in to a world
      Player.GetLevelUncapped(skill)    -> real level, not boosted/drained
      Player.GetXPUncapped(skill)       -> total XP in that skill
]]

local Skills = {}

-- Every skill, in alphabetical order. `type` is the game's id for the skill.
Skills.list = {
    { name = "Agility",       type = SkillType.AGILITY },
    { name = "Archaeology",   type = SkillType.ARCHAEOLOGY },
    { name = "Attack",        type = SkillType.ATTACK },
    { name = "Constitution",  type = SkillType.HITPOINTS },   -- called HITPOINTS in the API
    { name = "Construction",  type = SkillType.CONSTRUCTION },
    { name = "Cooking",       type = SkillType.COOKING },
    { name = "Crafting",      type = SkillType.CRAFTING },
    { name = "Defence",       type = SkillType.DEFENCE },
    { name = "Divination",    type = SkillType.DIVINATION },
    { name = "Dungeoneering", type = SkillType.DUNGEONEERING },
    { name = "Farming",       type = SkillType.FARMING },
    { name = "Firemaking",    type = SkillType.FIREMAKING },
    { name = "Fishing",       type = SkillType.FISHING },
    { name = "Fletching",     type = SkillType.FLETCHING },
    { name = "Herblore",      type = SkillType.HERBLORE },
    { name = "Hunter",        type = SkillType.HUNTER },
    { name = "Invention",     type = SkillType.INVENTION },
    { name = "Magic",         type = SkillType.MAGIC },
    { name = "Mining",        type = SkillType.MINING },
    { name = "Necromancy",    type = SkillType.NECROMANCY },
    { name = "Prayer",        type = SkillType.PRAYER },
    { name = "Ranged",        type = SkillType.RANGED },
    { name = "Runecrafting",  type = SkillType.RUNECRAFTING },
    { name = "Slayer",        type = SkillType.SLAYER },
    { name = "Smithing",      type = SkillType.SMITHING },
    { name = "Strength",      type = SkillType.STRENGTH },
    { name = "Summoning",     type = SkillType.SUMMONING },
    { name = "Thieving",      type = SkillType.THIEVING },
    { name = "Woodcutting",   type = SkillType.WOODCUTTING },
}

-- Read one skill's level and XP. Returns nil, nil if not logged in.
function Skills.read(skill)
    if not Player.IsAvailable() then return nil, nil end
    return Player.GetLevelUncapped(skill.type), Player.GetXPUncapped(skill.type)
end

-- Turn 1234567 into "1,234,567" so big XP numbers are easy to read.
function Skills.formatNumber(number)
    local text = tostring(math.floor(number))
    -- Repeatedly insert a comma before the last group of three digits
    -- that doesn't have one yet.
    local count
    repeat
        text, count = text:gsub("^(-?%d+)(%d%d%d)", "%1,%2")
    until count == 0
    return text
end

return Skills
