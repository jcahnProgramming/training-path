--[[
    tracker.lua
    -----------
    Live XP tracking for one skill: XP gained, XP per hour, and how long
    until the next level at that rate. Works for any skill.

    How time is measured: the client runs exactly 50 logic ticks per second
    (official docs, Event.Logic). We remember the tick number when tracking
    starts; elapsed seconds = ticks passed / 50.

    Only reads the player's XP. Nothing is sent to the game.
]]

local Skills = require("src/skills")

local Tracker = {}

local TICKS_PER_SECOND = 50

-- Total XP needed to reach `level` (the standard RuneScape XP table, which
-- holds for levels 1-120 in normal skills). Level 2 = 83 XP, 99 = 13,034,431.
function Tracker.xpForLevel(level)
    local points = 0
    for l = 1, level - 1 do
        points = points + math.floor(l + 300 * 2 ^ (l / 7))
    end
    return math.floor(points / 4)
end

-- The latest logic tick number, kept up to date by Event.Logic below.
local currentTick = 0
Event.Logic.Subscribe("trainingPathTrackerClock", function(event)
    currentTick = event.logicTick
end)

-- Stop the clock subscription (called on plugin shutdown).
function Tracker.shutdown()
    Event.Logic.Unsubscribe("trainingPathTrackerClock")
end

-- Start a new tracking session for a skill (an entry from Skills.list).
-- Returns a session table; pass it to Tracker.read to get the numbers.
function Tracker.start(skill)
    local _, xp = Skills.read(skill)
    return {
        skill = skill,
        startXp = xp,          -- nil if not logged in yet; filled in later
        startTick = currentTick,
    }
end

-- Work out the current numbers for a session. Returns a table:
--   gained, perHour (nil until 30 s have passed), level, toNextLevel,
--   secondsToLevel (nil if no rate yet), elapsedSeconds
function Tracker.read(session)
    local level, xp = Skills.read(session.skill)
    if xp == nil then return nil end

    -- If we started before login, start counting from now.
    if session.startXp == nil then
        session.startXp = xp
        session.startTick = currentTick
    end

    local elapsed = (currentTick - session.startTick) / TICKS_PER_SECOND
    local gained = xp - session.startXp
    local result = {
        gained = gained,
        level = level,
        toNextLevel = math.max(0, Tracker.xpForLevel(level + 1) - xp),
        elapsedSeconds = elapsed,
    }

    -- Wait 30 seconds before showing a rate, so it isn't wildly off.
    if elapsed >= 30 then
        result.perHour = gained / elapsed * 3600
        if gained > 0 then
            result.secondsToLevel = result.toNextLevel / (gained / elapsed)
        end
    end
    return result
end

-- Turn seconds into "1h 23m" or "4m 05s".
function Tracker.formatDuration(seconds)
    seconds = math.floor(seconds)
    local hours = seconds // 3600
    local minutes = (seconds % 3600) // 60
    if hours > 0 then return hours .. "h " .. minutes .. "m" end
    return minutes .. "m " .. string.format("%02d", seconds % 60) .. "s"
end

return Tracker
