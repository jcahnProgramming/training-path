--[[
    dndprogress.lua
    ---------------
    Which Distractions & Diversions the player has ticked off as done.

    The player clicks "Done" on a daily, weekly or monthly D&D. We save the
    game-clock time of that click. It counts as done until that D&D's next
    reset (src/gametime.lua periodStart), then clears itself; nothing needs
    deleting.

    Saved per character (PersistentDB is shared by everyone on this
    computer), keyed by the character's display name.

    Later, D&Ds whose game flags we can read could be marked done
    automatically; this file is where that would go.
]]

local GameTime = require("src/gametime")

local DnDProgress = {}

local DB_KEY = "dndDone"

-- Every character's ticks: { ["Name"] = { [dndId] = clockMinutes } }.
local saved = PersistentDB:GetStructuredData(DB_KEY) or {}

local function characterName()
    local ok, name = pcall(function()
        local me = Player.GetEntity()
        return me and me.isValid and me.displayName or nil
    end)
    return (ok and name) or nil
end

local function myTicks()
    local name = characterName()
    if name == nil then return nil end
    saved[name] = saved[name] or {}
    return saved[name]
end

-- Can this D&D be ticked off? Only ones with a fixed reset period.
function DnDProgress.canTick(entry)
    return entry.resets == "daily" or entry.resets == "weekly" or entry.resets == "monthly"
end

-- Done since the last reset?
function DnDProgress.isDone(entry)
    if not DnDProgress.canTick(entry) then return false end
    local ticks, now = myTicks(), GameTime.now()
    if ticks == nil or now == nil or ticks[entry.id] == nil then return false end
    return ticks[entry.id] >= GameTime.periodStart(now, entry.resets)
end

-- Tick or untick a D&D for this period.
function DnDProgress.setDone(entry, done)
    local ticks, minutes = myTicks(), GameTime.nowMinutes()
    if ticks == nil or minutes == nil then return end
    ticks[entry.id] = done and minutes or nil
    PersistentDB:SetStructuredData(DB_KEY, saved)
end

return DnDProgress
