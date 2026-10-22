--[[
    icons.lua
    ---------
    Pictures from the game itself (no image files needed):
      Icons.skill(name)   the high-resolution skill icon for a skill
    The sprite names were taken from the game's sprite list; Quest Helper
    uses the same ones for its skill icons.
]]

local Icons = {}

local SKILL_SPRITES = {
    Attack        = "STATICONS_HIGH_RES_CLEAN_0",
    Strength      = "STATICONS_HIGH_RES_CLEAN_1",
    Defence       = "STATICONS_HIGH_RES_CLEAN_2",
    Ranged        = "STATICONS_HIGH_RES_CLEAN_3",
    Prayer        = "STATICONS_HIGH_RES_CLEAN_4",
    Magic         = "STATICONS_HIGH_RES_CLEAN_5",
    Constitution  = "STATICONS_HIGH_RES_CLEAN_6",
    Agility       = "STATICONS_HIGH_RES_CLEAN_7",
    Herblore      = "STATICONS_HIGH_RES_CLEAN_8",
    Thieving      = "STATICONS_HIGH_RES_CLEAN_9",
    Crafting      = "STATICONS_HIGH_RES_CLEAN_10",
    Fletching     = "STATICONS_HIGH_RES_CLEAN_11",
    Mining        = "STATICONS_HIGH_RES_CLEAN_12",
    Smithing      = "STATICONS_HIGH_RES_CLEAN_13",
    Fishing       = "STATICONS_HIGH_RES_CLEAN_14",
    Cooking       = "STATICONS_HIGH_RES_CLEAN_15",
    Firemaking    = "STATICONS_HIGH_RES_CLEAN_16",
    Woodcutting   = "STATICONS_HIGH_RES_CLEAN_17",
    Runecrafting  = "STATICONS_HIGH_RES2_CLEAN_0",
    Slayer        = "STATICONS_HIGH_RES2_CLEAN_1",
    Farming       = "STATICONS_HIGH_RES2_CLEAN_2",
    Hunter        = "STATICONS_HIGH_RES2_CLEAN_5",
    Construction  = "STATICONS_HIGH_RES2_CLEAN_6",
    Summoning     = "STATICONS_HIGH_RES2_CLEAN_7",
    Dungeoneering = "STATICONS_HIGH_RES2_CLEAN_13",
    Divination    = "STATICONS_HIGH_RES2_CLEAN_14",
    Invention     = "SKILL_ICON_INVENTION_52PX_0",
    Archaeology   = "SKILL_ICON_ARCHAEOLOGY_52PX_0",
    Necromancy    = "SKILL_ICON_NECROMANCY_52PX_0",
}

-- The sprite id for a skill's icon, or nil if the game doesn't have it.
function Icons.skill(skillName)
    local spriteName = SKILL_SPRITES[skillName]
    if spriteName == nil then return nil end
    local ok, spriteId = pcall(function() return id.Sprite[spriteName] end)
    if ok and type(spriteId) == "number" and spriteId >= 0 then return spriteId end
    return nil
end

return Icons
