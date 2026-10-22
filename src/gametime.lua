--[[
    gametime.lua
    ------------
    The current date and time, and countdowns to the game's resets.

    Plugins can't use Lua's os.time(), but the game keeps a variable that
    counts minutes since 1 January 1970 in UTC (CLOCK_TIME_DATE_MINUTES,
    checked in-game against the minimap clock). Everything here is worked
    out from that one number.

    Resets (from the RuneScape Wiki): daily 00:00 UTC, weekly Wednesday
    00:00 UTC, monthly on the 1st at 00:00 UTC.
]]

local GameTime = {}

local MINUTES_PER_DAY = 1440
-- The game's own day counter ("runeday") is days since 27 February 2002,
-- which is 11745 days after 1 January 1970. (Checked: runeday 9003 =
-- 22 October 2026.)
local RUNEDAY_OFFSET = 11745

local DAY_NAMES = { "Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday" }
local MONTH_NAMES = { "Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec" }

-- Minutes since 1970 in UTC, or nil if the game hasn't sent it yet.
function GameTime.nowMinutes()
    local ok, value = pcall(function() return var.VarPlayer.CLOCK_TIME_DATE_MINUTES.value end)
    if ok and type(value) == "number" and value > 0 then return value end
    return nil
end

-- Day number since 1970 -> year, month, day (standard civil-date formula).
local function civilDate(daysSince1970)
    local z = daysSince1970 + 719468
    local era = z // 146097
    local dayOfEra = z - era * 146097
    local yearOfEra = (dayOfEra - dayOfEra // 1460 + dayOfEra // 36524 - dayOfEra // 146096) // 365
    local dayOfYear = dayOfEra - (365 * yearOfEra + yearOfEra // 4 - yearOfEra // 100)
    local mp = (5 * dayOfYear + 2) // 153
    local day = dayOfYear - (153 * mp + 2) // 5 + 1
    local month = mp < 10 and mp + 3 or mp - 9
    local year = yearOfEra + era * 400 + (month <= 2 and 1 or 0)
    return year, month, day
end

-- year, month, day -> day number since 1970 (the reverse of civilDate).
local function daysFromCivil(year, month, day)
    year = month <= 2 and year - 1 or year
    local era = year // 400
    local yearOfEra = year - era * 400
    local mp = month > 2 and month - 3 or month + 9
    local dayOfYear = (153 * mp + 2) // 5 + day - 1
    local dayOfEra = yearOfEra * 365 + yearOfEra // 4 - yearOfEra // 100 + dayOfYear
    return era * 146097 + dayOfEra - 719468
end

-- Everything about "now" in one table, or nil if the clock isn't ready.
function GameTime.now()
    local minutes = GameTime.nowMinutes()
    if minutes == nil then return nil end
    local day = minutes // MINUTES_PER_DAY
    local minuteOfDay = minutes % MINUTES_PER_DAY
    local year, month, dayOfMonth = civilDate(day)
    local weekday = (day + 4) % 7          -- 1 Jan 1970 was a Thursday; 0 = Sunday
    return {
        minutes = minutes,
        day = day,
        runeday = day - RUNEDAY_OFFSET,
        hour = minuteOfDay // 60,
        minute = minuteOfDay % 60,
        weekday = weekday,
        weekdayName = DAY_NAMES[weekday + 1],
        year = year, month = month, dayOfMonth = dayOfMonth,
        text = string.format("%s %d %s, %02d:%02d UTC", DAY_NAMES[weekday + 1], dayOfMonth,
            MONTH_NAMES[month], minuteOfDay // 60, minuteOfDay % 60),
    }
end

-- Minutes until the next daily, weekly (Wednesday) and monthly reset.
function GameTime.untilResets(now)
    local minuteOfDay = now.minutes % MINUTES_PER_DAY
    local toDaily = MINUTES_PER_DAY - minuteOfDay

    -- Days until the next Wednesday 00:00 (weekday 3). If it's Wednesday,
    -- the next one is 7 days away (today's reset has already happened).
    local daysToWed = (3 - now.weekday) % 7
    if daysToWed == 0 then daysToWed = 7 end
    local toWeekly = (daysToWed - 1) * MINUTES_PER_DAY + toDaily

    local nextYear, nextMonth = now.year, now.month + 1
    if nextMonth > 12 then nextYear, nextMonth = nextYear + 1, 1 end
    local toMonthly = daysFromCivil(nextYear, nextMonth, 1) * MINUTES_PER_DAY - now.minutes

    return { daily = toDaily, weekly = toWeekly, monthly = toMonthly }
end

-- When the current period started, in clock minutes: today's 00:00 UTC
-- ("daily"), the last Wednesday 00:00 ("weekly"), or the 1st of this
-- month 00:00 ("monthly"). nil for any other kind.
function GameTime.periodStart(now, kind)
    local todayStart = now.day * MINUTES_PER_DAY
    if kind == "daily" then return todayStart end
    if kind == "weekly" then
        local daysSinceWed = (now.weekday - 3) % 7    -- Wednesday = 3
        return todayStart - daysSinceWed * MINUTES_PER_DAY
    end
    if kind == "monthly" then
        return daysFromCivil(now.year, now.month, 1) * MINUTES_PER_DAY
    end
    return nil
end

-- 125 -> "2h 5m", 3000 -> "2d 2h".
function GameTime.formatMinutes(total)
    total = math.max(0, math.floor(total))
    local days, hours, minutes = total // 1440, (total % 1440) // 60, total % 60
    if days > 0 then return days .. "d " .. hours .. "h" end
    if hours > 0 then return hours .. "h " .. minutes .. "m" end
    return minutes .. "m"
end

-- A runeday -> "22 Oct".
function GameTime.runedayText(runeday)
    local _, month, day = civilDate(runeday + RUNEDAY_OFFSET)
    return day .. " " .. MONTH_NAMES[month]
end

return GameTime
