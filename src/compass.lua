--[[
    compass.lua
    -----------
    "Which way, and how far?" to a training location, shown as text in the
    window: e.g. "340 tiles north-east". The player turns it on for one
    location with "Show directions" and off with "Stop".

    It only READS the player's own position (Player.GetEntity().coordGrid)
    and compares it with the location's map coordinate from the wiki.
    Nothing is drawn in the game world and nothing is sent to the game.

    (This replaces an in-world hint arrow, which crashed the game client
    in v0.1.8 testing. See docs/api-notes.md.)
]]

local Compass = {}

local ARRIVED_TILES = 5   -- this close counts as "you're there"

local target = nil   -- { name = location text, coord = { x, z, level } } or nil

function Compass.start(name, coord)
    target = { name = name, coord = coord }
end

function Compass.stop()
    target = nil
end

-- The location being followed (its text), or nil.
function Compass.current()
    return target and target.name or nil
end

-- 8 compass points. In RuneScape, x grows to the east and z to the north.
local POINTS = { "east", "north-east", "north", "north-west", "west", "south-west", "south", "south-east" }

local function directionWord(dx, dz)
    local angle = math.atan(dz, dx)                      -- -pi .. pi, 0 = east
    local slice = math.floor((angle / (2 * math.pi)) * 8 + 0.5) % 8
    return POINTS[slice + 1]
end

-- One line of text for the current target, or nil if nothing is followed.
function Compass.describe()
    if target == nil then return nil end
    local heading = "Heading to " .. target.name .. ": "

    local ok, me = pcall(function()
        local entity = Player.IsAvailable() and Player.GetEntity() or nil
        if entity == nil or not entity.isValid then return nil end
        return entity.coordGrid
    end)
    if not ok or me == nil then return heading .. "log in to see the direction" end

    local dx = target.coord.x - me.x
    local dz = target.coord.z - me.z
    local distance = math.floor(math.sqrt(dx * dx + dz * dz) + 0.5)
    local floorNote = ((target.coord.level or 0) ~= me.level) and " (different floor)" or ""

    if distance <= ARRIVED_TILES then
        return heading .. "you're there" .. floorNote
    end
    return heading .. distance .. " tiles " .. directionWord(dx, dz) .. floorNote
end

return Compass
