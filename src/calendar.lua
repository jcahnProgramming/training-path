--[[
    calendar.lua
    ------------
    Reads the game's own events calendar (the data behind the in-game
    calendar) so the Now tab can show what's on today.

    The calendar lives in game database tables: CALENDAR_ENTRY (one row per
    event) and CALENDAR_CATEGORY (News, Game Updates, In-game Events...).
    Column meanings were worked out in-game (docs/api-notes.md):
      entry col 2 = category, 3 = start runeday, 4 = end runeday,
            5 = start time (HHMM, UTC), 6 = length in minutes,
            8 = title, 10 = description, 24 = title for community events
      category col 1 = category number, col 4 = category name

    Jagex's rules: no hidden or future information. So only events that are
    running TODAY are ever shown, never ones that haven't started.

    Rows are found by looking at every database row id (a few thousand per
    client tick, like the item icon index), once.
]]

local Calendar = {}

local IDS_PER_TICK = 2000
local MAX_ROW_ID = 60000
local EVENT_NAME = "trainingPathCalendar"

local entries = {}        -- list of { category, startDay, endDay, startTime, length, title, description }
local categoryNames = {}  -- category number -> name
local nextId = 0
local finished = false

-- First value of a column, or nil.
local function first(row, column)
    local ok, values = pcall(function() return row:GetColumnValues(column) end)
    if ok and values and values[1] ~= nil then return values[1] end
    return nil
end

-- Remove the game's text tags (e.g. <col=FF981F>) and tidy spaces.
local function plain(text)
    if type(text) ~= "string" then return nil end
    text = text:gsub("<[^>]*>", ""):gsub("%s+", " ")
    if text == "" then return nil end
    return text
end

local function readRow(row, owner)
    if owner == "CALENDAR_ENTRY" then
        local title = plain(first(row, 8)) or plain(first(row, 24))
        local startDay, endDay = first(row, 3), first(row, 4)
        if title and type(startDay) == "number" and type(endDay) == "number" then
            entries[#entries + 1] = {
                category = first(row, 2),
                startDay = startDay,
                endDay = endDay,
                startTime = first(row, 5),
                length = first(row, 6),
                title = title,
                description = plain(first(row, 10)),
            }
        end
    elseif owner == "CALENDAR_CATEGORY" then
        local number, name = first(row, 1), plain(first(row, 4))
        if number ~= nil and name then categoryNames[number] = name end
    end
end

local function readSome()
    for _ = 1, IDS_PER_TICK do
        if nextId > MAX_ROW_ID then return true end
        local ok, row = pcall(config.DBRow.FromID, nextId)
        nextId = nextId + 1
        if ok and row ~= nil then
            local okOwner, owner = pcall(function() return row.ownerDBTable.configName end)
            if okOwner and (owner == "CALENDAR_ENTRY" or owner == "CALENDAR_CATEGORY") then
                pcall(readRow, row, owner)
            end
        end
    end
    return false
end

function Calendar.start()
    Event.Logic.Subscribe(EVENT_NAME, function()
        if readSome() then
            finished = true
            Event.Logic.Unsubscribe(EVENT_NAME)
        end
    end)
end

function Calendar.stop()
    Event.Logic.Unsubscribe(EVENT_NAME)
end

function Calendar.isReady()
    return finished
end

function Calendar.categoryName(number)
    return categoryNames[number]
end

-- Events running today (start <= today <= end), longest-running first.
-- Never returns events that haven't started yet.
function Calendar.today(runeday)
    local list = {}
    for _, entry in ipairs(entries) do
        if entry.startDay <= runeday and runeday <= entry.endDay then
            list[#list + 1] = entry
        end
    end
    table.sort(list, function(a, b) return (a.endDay - a.startDay) > (b.endDay - b.startDay) end)
    return list
end

return Calendar
