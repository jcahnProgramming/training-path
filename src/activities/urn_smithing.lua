--[[
    Activity: smithing orikalkum with Strong smithing urns at Fort Forinthry.

    This file builds the SETUP CHECKLIST: a list of lines, each with a state:
      "ok"   = done, shown green
      "todo" = not done yet, shown red
      "warn" = worth knowing / acting on, shown amber
      "info" = something the plugin can't check, the player checks it
    It only reads the player's level and backpack. Nothing is automated.

    Facts from the RuneScape Wiki (Strong smithing urn, CC BY-NC-SA 3.0):
      - Fills with 7,254 base Smithing XP, from items needing level 70 or lower.
      - Teleporting a full urn gives 1,450.8 Smithing XP.
      - Adding the fire rune needs 49 Crafting.
    Item internal names were checked in-game (see docs/api-notes.md).
]]

local Skills = require("src/skills")

local Activity = {
    id = "urn_smithing",
    skill = "Smithing",
    title = "Orikalkum with strong smithing urns",
    location = "Fort Forinthry",
    minLevel = 60,   -- orikalkum needs 60 Smithing
    intro = "Smith orikalkum items with a Strong smithing urn in your backpack. "
        .. "The urn fills as you smith and gives bonus XP when you teleport it.",
}

-- The urn's states are separate items. Looked up by internal name.
local URN = {
    noRune  = config.Obj.URNS_SMITHING4_NORUNE,    -- "(no rune)": needs a fire rune
    ready   = config.Obj.URNS_SMITHING4_RUNE,      -- "(empty)": ready to fill
    filling = config.Obj.URNS_SMITHING4_STARTED,   -- partly filled
    full    = config.Obj.URNS_SMITHING4_FULL,      -- ready to teleport
}

-- How many of an item are in the backpack. Returns 0 if the backpack
-- can't be read right now (e.g. during loading).
local function countInBackpack(item)
    local backpack = Inventory.Find(config.Inv.INV)
    if backpack == nil or not backpack.isValid or item == nil then return 0 end
    return backpack:GetTotal(item.id)
end

local function findSmithing()
    for _, skill in ipairs(Skills.list) do
        if skill.name == "Smithing" then return skill end
    end
end

-- Build the checklist from the player's current level and backpack.
function Activity.checklist()
    local lines = {}
    local function add(state, text) lines[#lines + 1] = { state = state, text = text } end

    if not Player.IsAvailable() then
        add("info", "Log in to check your setup.")
        return lines
    end

    -- 1. Level
    local level = Skills.read(findSmithing())
    if level >= Activity.minLevel then
        add("ok", "Smithing level " .. level .. " (orikalkum needs 60)")
    else
        add("todo", "Smithing level " .. level .. ": orikalkum needs 60")
    end

    -- 2. An urn that can fill
    local ready = countInBackpack(URN.ready)
    local filling = countInBackpack(URN.filling)
    if ready + filling > 0 then
        add("ok", (ready + filling) .. " strong smithing urn(s) ready in your backpack"
            .. (filling > 0 and " (" .. filling .. " filling)" or ""))
    else
        add("todo", "No strong smithing urn ready to fill in your backpack")
    end

    -- 3. Urns that still need their fire rune
    local noRune = countInBackpack(URN.noRune)
    if noRune > 0 then
        add("warn", noRune .. " urn(s) still need a fire rune added (needs 49 Crafting)")
    end

    -- 4. Full urns waiting to be teleported
    local full = countInBackpack(URN.full)
    if full > 0 then
        add("warn", full .. " full urn(s): teleport them for 1,450.8 Smithing XP each")
    end

    -- 5. Things the plugin can't see
    add("info", "Orikalkum bars in your metal bank (the plugin can't see the metal bank)")
    add("info", "Strong urns only fill from items needing level 70 or lower. Orikalkum counts.")

    return lines
end

return Activity
