--[[
    queue.lua
    ---------
    A to-do list of training methods. Each entry has a goal:
      { goal = "time",  target = 60 }   train for 60 minutes
      { goal = "level", target = 70 }   train until the skill reaches 70

    The first entry that isn't done is the "current" one. Once per game
    tick, Queue.update() checks it:
      - time goals count minutes on the game clock, only while the player
        is logged in and the queue isn't paused
      - level goals compare the player's real level with the target
    When a goal is reached the entry is marked done, the next one becomes
    current, and Queue.lastFinished() remembers it for the "Finished" banner.

    Everything is saved in PersistentDB so the queue survives reloads.
    It only reads the player's levels and the game clock.
]]

local Skills = require("src/skills")
local Guides = require("src/guides/index")
local GameTime = require("src/gametime")
local Tracker = require("src/tracker")

local Queue = {}

local DB_KEY = "queue"

local saved = PersistentDB:GetStructuredData(DB_KEY) or {}
local entries = saved.entries or {}   -- list of { method, goal, target, spent, done }
local paused = saved.paused == true
local nextNumber = saved.nextNumber or 1
local finished = nil                  -- the entry that just finished (for the banner)
local lastClock = nil                 -- game clock minutes at the previous check

local function save()
    PersistentDB:SetStructuredData(DB_KEY, { entries = entries, paused = paused, nextNumber = nextNumber })
end

-- The skill a method trains (from its guide), as a Skills.list entry.
function Queue.skillFor(entry)
    local found = Guides.methodById[entry.method]
    return found and Skills.find(found.guide.skill) or nil
end

function Queue.methodFor(entry)
    local found = Guides.methodById[entry.method]
    return found and found.method or nil
end

function Queue.list() return entries end
function Queue.isPaused() return paused end

function Queue.current()
    for i, entry in ipairs(entries) do
        if not entry.done then return entry, i end
    end
    return nil
end

-- Add a method with a goal. goal = "time" (target = minutes) or "level".
function Queue.add(methodId, goal, target)
    entries[#entries + 1] = {
        number = nextNumber, method = methodId, goal = goal, target = target, spent = 0, done = false,
    }
    nextNumber = nextNumber + 1
    save()
end

-- Position of a method in the queue (first unfinished entry), or nil.
function Queue.positionOf(methodId)
    for i, entry in ipairs(entries) do
        if entry.method == methodId and not entry.done then return i end
    end
    return nil
end

function Queue.remove(index)
    table.remove(entries, index)
    save()
end

-- Move an entry up (-1) or down (+1).
function Queue.move(index, direction)
    local other = index + direction
    if other < 1 or other > #entries then return end
    entries[index], entries[other] = entries[other], entries[index]
    save()
end

function Queue.setPaused(value)
    paused = value
    lastClock = nil   -- don't count the paused time when resuming
    save()
end

-- Mark the current entry done now (the player decided to move on).
function Queue.skipCurrent()
    local entry = Queue.current()
    if entry then
        entry.done = true
        finished = entry
        save()
    end
end

function Queue.clearFinished()
    for i = #entries, 1, -1 do
        if entries[i].done then table.remove(entries, i) end
    end
    save()
end

-- The entry that finished most recently (until dismissed), or nil.
function Queue.lastFinished() return finished end
function Queue.dismissFinished() finished = nil end

-- How far along an entry is: returns done-so-far, target and a short text.
function Queue.progress(entry)
    if entry.goal == "time" then
        local spent = math.floor(entry.spent or 0)
        return spent, entry.target, spent .. " / " .. entry.target .. " min"
    end
    local skill = Queue.skillFor(entry)
    local level, xp = nil, nil
    if skill then level, xp = Skills.read(skill) end
    if level == nil then return 0, entry.target, "Level ? / " .. entry.target end
    local text = "Level " .. level .. " / " .. entry.target
    if level < entry.target then
        -- XP still needed to reach the target level.
        local need = Tracker.xpForLevel(entry.target) - xp
        text = text .. ", " .. Skills.formatNumber(math.max(0, need)) .. " XP to go"
    end
    return level, entry.target, text
end

-- Short goal text: "for 1 hour" / "until level 70".
function Queue.goalText(entry)
    if entry.goal == "time" then
        if entry.target % 60 == 0 then
            local hours = entry.target // 60
            return "for " .. hours .. (hours == 1 and " hour" or " hours")
        end
        return "for " .. entry.target .. " min"
    end
    return "until level " .. entry.target
end

-- Called once per game tick: count time and check the current goal.
-- Returns true if something changed (so the page should redraw).
function Queue.update()
    local entry = Queue.current()
    local now = GameTime.nowMinutes()
    if entry == nil or not Player.IsAvailable() or now == nil then
        lastClock = nil
        return false
    end

    local changed = false
    if entry.goal == "time" and not paused then
        if lastClock ~= nil and now > lastClock then
            entry.spent = (entry.spent or 0) + (now - lastClock)
            changed = true
        end
    end
    lastClock = now

    local current, target = Queue.progress(entry)
    if current >= target then
        entry.done = true
        finished = entry
        changed = true
    end
    if changed then save() end
    return changed
end

return Queue
