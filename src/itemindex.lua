--[[
    itemindex.lua
    -------------
    Finds an item's game id from its display name, so the window can show
    the item's in-game icon (our guide and gear data list items by name).

    The game can look items up by id but not by name, so we build a
    name -> item table once: look at every item id, a few thousand per
    client tick so the game never stutters, until we run out of items.
    Until it's finished, ItemIndex.find() returns nil and pages simply show
    text without icons. It only reads the game's item list.
]]

local ItemIndex = {}

local IDS_PER_TICK = 2000      -- how many ids to look at per logic tick (50 per second)
local GIVE_UP_AFTER = 5000     -- stop after this many ids in a row that don't exist
local EVENT_NAME = "trainingPathItemIndex"

local byName = {}              -- lowercase name -> ObjType (first id with that name)
local nextId = 0
local missesInARow = 0
local finished = false

function ItemIndex.isReady()
    return finished
end

-- The ObjType for an exact display name (case-insensitive), or nil.
function ItemIndex.find(name)
    if name == nil then return nil end
    return byName[string.lower(name)]
end

-- Look at the next batch of ids. Returns true when everything is indexed.
local function indexSome()
    for _ = 1, IDS_PER_TICK do
        local ok, obj = pcall(config.Obj.FromID, nextId)
        nextId = nextId + 1
        if ok and obj ~= nil and obj.name ~= nil and obj.name ~= "" and obj.name ~= "null" then
            missesInARow = 0
            local key = string.lower(obj.name)
            -- Keep the first (lowest) id: that's normally the real item,
            -- later ids with the same name are often noted or placeholder copies.
            if byName[key] == nil then byName[key] = obj end
        else
            missesInARow = missesInARow + 1
            if missesInARow >= GIVE_UP_AFTER then return true end
        end
    end
    return false
end

-- Start building in the background (called once from main.lua).
function ItemIndex.start()
    Event.Logic.Subscribe(EVENT_NAME, function()
        if indexSome() then
            finished = true
            Event.Logic.Unsubscribe(EVENT_NAME)
            print("[Training Path] Item icons ready (" .. nextId .. " ids checked)")
        end
    end)
end

function ItemIndex.stop()
    Event.Logic.Unsubscribe(EVENT_NAME)
end

return ItemIndex
