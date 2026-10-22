--[[
    Developer tool, not part of the plugin (it runs on a computer, not in
    the game). Checks every guide in src/guides/ against docs/guide-format.md.

    Run from the plugin folder with Lua 5.4:
        lua tools/validate_guides.lua
    Prints problems and exits with code 1 if there are any.
]]

local SKILLS = {
    "Agility", "Archaeology", "Attack", "Constitution", "Construction", "Cooking",
    "Crafting", "Defence", "Divination", "Dungeoneering", "Farming", "Firemaking",
    "Fishing", "Fletching", "Herblore", "Hunter", "Invention", "Magic", "Mining",
    "Necromancy", "Prayer", "Ranged", "Runecrafting", "Slayer", "Smithing",
    "Strength", "Summoning", "Thieving", "Woodcutting",
}
local isSkill = {}
for _, name in ipairs(SKILLS) do isSkill[name] = true end

local INTENSITIES = { high = true, medium = true, low = true }

local problems = 0
local function problem(where, text)
    problems = problems + 1
    print("PROBLEM  " .. where .. ": " .. text)
end

-- Every string in a table (recursively) must be plain ASCII.
local function checkAscii(value, where)
    if type(value) == "string" then
        if value:find("[\128-\255]") then problem(where, "non-ASCII text: " .. value) end
    elseif type(value) == "table" then
        for key, inner in pairs(value) do checkAscii(inner, where .. "." .. tostring(key)) end
    end
end

local seenIds = {}
local totalMethods = 0

for _, skill in ipairs(SKILLS) do
    local path = "src/guides/" .. skill:lower() .. ".lua"
    local chunk, loadError = loadfile(path)
    if chunk == nil then
        problem(skill, "can't load " .. path .. ": " .. tostring(loadError))
    else
        local ok, guide = pcall(chunk)
        if not ok or type(guide) ~= "table" then
            problem(skill, "file didn't return a table: " .. tostring(guide))
        else
            checkAscii(guide, skill)
            if guide.skill ~= skill then problem(skill, "skill field is " .. tostring(guide.skill)) end
            if type(guide.maxLevel) ~= "number" then problem(skill, "missing maxLevel") end
            if type(guide.wiki) ~= "string" then problem(skill, "missing wiki") end
            if type(guide.source) ~= "string" then problem(skill, "missing source") end
            if type(guide.bands) ~= "table" or #guide.bands == 0 then
                problem(skill, "no bands")
            else
                local expectFrom = 1
                for b, band in ipairs(guide.bands) do
                    local where = skill .. " band " .. b
                    if band.from ~= expectFrom then
                        problem(where, "starts at " .. tostring(band.from) .. ", expected " .. expectFrom)
                    end
                    if type(band.to) ~= "number" or band.to <= (band.from or 0) then
                        problem(where, "bad 'to': " .. tostring(band.to))
                    end
                    expectFrom = band.to
                    if type(band.methods) ~= "table" or #band.methods == 0 then
                        problem(where, "no methods")
                    end
                    for m, method in ipairs(band.methods or {}) do
                        local mwhere = where .. " method " .. m .. " (" .. tostring(method.name) .. ")"
                        totalMethods = totalMethods + 1
                        if type(method.id) ~= "string" then
                            problem(mwhere, "missing id")
                        elseif seenIds[method.id] then
                            problem(mwhere, "duplicate id " .. method.id .. " (also in " .. seenIds[method.id] .. ")")
                        else
                            seenIds[method.id] = skill
                            if not method.id:match("^[a-z0-9_]+$") then problem(mwhere, "id not lowercase_with_underscores") end
                        end
                        if type(method.name) ~= "string" then problem(mwhere, "missing name") end
                        if not INTENSITIES[method.intensity] then
                            problem(mwhere, "intensity must be high/medium/low, is " .. tostring(method.intensity))
                        end
                        if method.xpPerHour ~= nil and type(method.xpPerHour) ~= "number" then
                            problem(mwhere, "xpPerHour must be a number")
                        end
                        if type(method.wiki) ~= "string" or not method.wiki:match("^https://runescape%.wiki/") then
                            problem(mwhere, "wiki must be a https://runescape.wiki/ link")
                        end
                        local req = method.requirements or {}
                        for _, levelReq in ipairs(req.levels or {}) do
                            if not isSkill[levelReq.skill] then problem(mwhere, "unknown skill in requirement: " .. tostring(levelReq.skill)) end
                            if type(levelReq.level) ~= "number" then problem(mwhere, "requirement level not a number") end
                        end
                        for _, quest in ipairs(req.quests or {}) do
                            if type(quest) ~= "string" then problem(mwhere, "quest must be text") end
                        end
                        for _, item in ipairs(method.items or {}) do
                            if type(item.label) ~= "string" then problem(mwhere, "item without label") end
                            if item.names == nil and item.contains == nil then problem(mwhere, "item " .. tostring(item.label) .. " has no names/contains") end
                            for _, part in ipairs(item.contains or {}) do
                                if part ~= part:lower() then problem(mwhere, "contains must be lowercase: " .. part) end
                                if #part < 4 then problem(mwhere, "contains too short to be safe: " .. part) end
                            end
                        end
                    end
                end
                if type(guide.maxLevel) == "number" and expectFrom ~= guide.maxLevel + 1 then
                    problem(skill, "last band ends at " .. tostring(expectFrom) .. ", expected maxLevel + 1 = " .. (guide.maxLevel + 1))
                end
            end
        end
    end
end

----------------------------------------------------------------------------
-- Travel data (src/travel_1..4.lua): every guide location needs directions;
-- coordinates must be real world tiles.
----------------------------------------------------------------------------
local travel = {}
for part = 1, 4 do
    local chunk, err = loadfile("src/travel_" .. part .. ".lua")
    if chunk == nil then
        problem("travel_" .. part, tostring(err))
    else
        for key, info in pairs(chunk()) do
            local where = "travel " .. key
            checkAscii(info, where)
            if travel[key] then problem(where, "listed twice") end
            travel[key] = info
            if type(info.directions) ~= "string" then problem(where, "missing directions") end
            local c = info.coord
            if c ~= nil then
                if type(c.x) ~= "number" or c.x < 0 or c.x > 12799
                    or type(c.z) ~= "number" or c.z < 0 or c.z > 12799
                    or type(c.level) ~= "number" or c.level < 0 or c.level > 3 then
                    problem(where, "coordinate out of range")
                end
            end
        end
    end
end
local withCoord, locations = 0, 0
for _, skill in ipairs(SKILLS) do
    local chunk = loadfile("src/guides/" .. skill:lower() .. ".lua")
    local guide = chunk and chunk()
    for _, band in ipairs(guide and guide.bands or {}) do
        for _, method in ipairs(band.methods or {}) do
            if method.location then
                locations = locations + 1
                local info = travel[method.location]
                if info == nil then
                    problem(skill .. " " .. tostring(method.id), "no travel entry for location: " .. method.location)
                elseif info.coord then
                    withCoord = withCoord + 1
                end
            end
        end
    end
end
print(string.format("travel: %d method locations, %d with a map spot", locations, withCoord))

----------------------------------------------------------------------------
-- Regions (src/regions_cities.lua, src/regions_dungeons.lua)
----------------------------------------------------------------------------
local regionCount = 0
for _, file in ipairs({ "src/regions_cities.lua", "src/regions_dungeons.lua" }) do
    local chunk, err = loadfile(file)
    if chunk == nil then
        problem(file, tostring(err))
    else
        for regionId, region in pairs(chunk()) do
            regionCount = regionCount + 1
            local where = "region " .. regionId
            checkAscii(region, where)
            if type(region.name) ~= "string" then problem(where, "missing name") end
            if type(region.howTo) ~= "string" then problem(where, "missing howTo") end
            if type(region.match) ~= "table" or #region.match == 0 then problem(where, "missing match") end
            for _, word in ipairs(region.match or {}) do
                if word ~= word:lower() then problem(where, "match must be lowercase: " .. word) end
            end
            for _, levelReq in ipairs((region.requirements or {}).levels or {}) do
                if not isSkill[levelReq.skill] then problem(where, "unknown skill " .. tostring(levelReq.skill)) end
            end
        end
    end
end
print(string.format("regions: %d", regionCount))

----------------------------------------------------------------------------
-- Gear (src/gear/<skill>.lua, docs/gear-format.md)
----------------------------------------------------------------------------
local SLOTS = {}
for _, slot in ipairs({ "Weapon", "Off-hand", "Two-handed", "Head", "Body", "Legs", "Hands", "Feet",
    "Cape", "Neck", "Ring", "Ammo", "Pocket", "Aura", "Outfit", "Tool", "Familiar", "Potion", "Other" }) do
    SLOTS[slot] = true
end

local function checkItemSpec(item, where)
    if type(item.label) ~= "string" then problem(where, "item without label") end
    if item.names == nil and item.contains == nil then problem(where, tostring(item.label) .. ": no names/contains") end
    for _, part in ipairs(item.contains or {}) do
        if part ~= part:lower() then problem(where, "contains must be lowercase: " .. part) end
        if #part < 4 then problem(where, "contains too short to be safe: " .. part) end
    end
    for _, levelReq in ipairs(item.levels or {}) do
        if not isSkill[levelReq.skill] then problem(where, "unknown skill " .. tostring(levelReq.skill)) end
    end
end

local gearFiles, gearItems = 0, 0
for _, skill in ipairs(SKILLS) do
    local path = "src/gear/" .. skill:lower() .. ".lua"
    local chunk, err = loadfile(path)
    if chunk then
        gearFiles = gearFiles + 1
        local ok, gear = pcall(chunk)
        local guideChunk = loadfile("src/guides/" .. skill:lower() .. ".lua")
        local guide = guideChunk and guideChunk() or {}
        if not ok or type(gear) ~= "table" then
            problem(path, "didn't return a table: " .. tostring(gear))
        else
            checkAscii(gear, "gear " .. skill)
            local function noLessThan(value, where)
                if type(value) == "string" and value:find("<", 1, true) then problem(where, "contains '<'") end
                if type(value) == "table" then for k, v in pairs(value) do noLessThan(v, where .. "." .. tostring(k)) end end
            end
            noLessThan(gear, "gear " .. skill)
            if gear.skill ~= skill then problem(path, "skill field is " .. tostring(gear.skill)) end
            local expectFrom = 1
            for b, band in ipairs(gear.bands or {}) do
                local where = "gear " .. skill .. " band " .. b
                if band.from ~= expectFrom then problem(where, "starts at " .. tostring(band.from) .. ", expected " .. expectFrom) end
                expectFrom = band.to
                if type(band.items) ~= "table" or #band.items == 0 then problem(where, "no items") end
                for i, item in ipairs(band.items or {}) do
                    local iwhere = where .. " item " .. i
                    gearItems = gearItems + 1
                    checkItemSpec(item, iwhere)
                    if not SLOTS[item.slot] then problem(iwhere, "unknown slot " .. tostring(item.slot)) end
                    if type(item.tradeable) ~= "boolean" then problem(iwhere, "tradeable must be true/false") end
                    if type(item.obtain) ~= "string" then problem(iwhere, "missing obtain") end
                    if type(item.wiki) ~= "string" or not item.wiki:match("^https://runescape%.wiki/") then
                        problem(iwhere, "wiki must be a https://runescape.wiki/ link")
                    end
                end
            end
            if guide.maxLevel and expectFrom ~= guide.maxLevel + 1 then
                problem("gear " .. skill, "bands end at " .. tostring(expectFrom) .. ", guide maxLevel + 1 = " .. (guide.maxLevel + 1))
            end
            for methodId, inventory in pairs(gear.inventories or {}) do
                local where = "gear " .. skill .. " inventory " .. methodId
                if not seenIds[methodId] then problem(where, "no such method id") end
                for _, item in ipairs(inventory.wear or {}) do checkItemSpec(item, where) end
                for _, item in ipairs(inventory.carry or {}) do checkItemSpec(item, where) end
            end
        end
    end
end
print(string.format("gear: %d skills, %d items", gearFiles, gearItems))

----------------------------------------------------------------------------
-- Activities (src/activities/<skill>.lua, docs/activity-format.md)
----------------------------------------------------------------------------
local function noLessThanAnywhere(value, where)
    if type(value) == "string" and value:find("<", 1, true) then problem(where, "contains '<'") end
    if type(value) == "table" then for k, v in pairs(value) do noLessThanAnywhere(v, where .. "." .. tostring(k)) end end
end
local activityIds, activityCount = {}, 0
for _, skill in ipairs(SKILLS) do
    local path = "src/activities/" .. skill:lower() .. ".lua"
    local chunk = loadfile(path)
    if chunk then
        local ok, data = pcall(chunk)
        if not ok or type(data) ~= "table" or type(data.activities) ~= "table" then
            problem(path, "didn't return { activities = ... }")
        else
            checkAscii(data, path)
            noLessThanAnywhere(data, path)
            for i, a in ipairs(data.activities) do
                local where = path .. " activity " .. i .. " (" .. tostring(a.id) .. ")"
                activityCount = activityCount + 1
                if type(a.id) ~= "string" then problem(where, "missing id")
                elseif activityIds[a.id] then problem(where, "duplicate id")
                else activityIds[a.id] = true end
                if not seenIds[a.method] then problem(where, "method doesn't exist: " .. tostring(a.method)) end
                if type(a.title) ~= "string" then problem(where, "missing title") end
                if type(a.steps) ~= "table" or #a.steps == 0 then problem(where, "no steps") end
                local list = a.checklist or {}
                for _, levelReq in ipairs(list.levels or {}) do
                    if not isSkill[levelReq.skill] then problem(where, "unknown skill " .. tostring(levelReq.skill)) end
                end
                for _, item in ipairs(list.items or {}) do checkItemSpec(item, where) end
                if a.repeats ~= nil and not ({ hourly = 1, daily = 1, weekly = 1, monthly = 1 })[a.repeats] then
                    problem(where, "repeats must be hourly/daily/weekly/monthly")
                end
            end
        end
    end
end
print(string.format("activities: %d", activityCount))

----------------------------------------------------------------------------
-- Distractions & Diversions (src/dnd.lua)
----------------------------------------------------------------------------
do
    local chunk, err = loadfile("src/dnd.lua")
    if chunk == nil then
        problem("src/dnd.lua", tostring(err))
    else
        local dnd = chunk()
        checkAscii(dnd, "dnd")
        noLessThanAnywhere(dnd, "dnd")
        local RESETS = { hourly = 1, daily = 1, weekly = 1, monthly = 1, every_n_hours = 1, scheduled = 1 }
        local seen = {}
        for i, d in ipairs(dnd.list or {}) do
            local where = "dnd " .. i .. " (" .. tostring(d.id) .. ")"
            if seen[d.id] then problem(where, "duplicate id") end
            seen[d.id] = true
            if not RESETS[d.resets] then problem(where, "bad resets " .. tostring(d.resets)) end
            if d.resets == "every_n_hours" and type(d.everyHours) ~= "number" then problem(where, "needs everyHours") end
            for _, sk in ipairs(d.skills or {}) do
                if not isSkill[sk] and sk ~= "lowest" and sk ~= "choice" and sk ~= "combat" then problem(where, "unknown skill " .. sk) end
            end
            for _, levelReq in ipairs((d.requirements or {}).levels or {}) do
                if not isSkill[levelReq.skill] then problem(where, "unknown skill " .. tostring(levelReq.skill)) end
            end
        end
        print(string.format("dnd: %d", #(dnd.list or {})))
    end
end

----------------------------------------------------------------------------
-- Regional content (src/regional.lua)
----------------------------------------------------------------------------
do
    local chunk, err = loadfile("src/regional.lua")
    if chunk == nil then
        print("regional: not present (" .. tostring(err):sub(1, 60) .. ")")
    else
        local regional = chunk()
        checkAscii(regional, "regional")
        noLessThanAnywhere(regional, "regional")
        local dndChunk = loadfile("src/dnd.lua")
        local usedIds = {}
        for _, d in ipairs(dndChunk and (dndChunk().list or {}) or {}) do usedIds[d.id] = "dnd" end
        local RESETS = { hourly = 1, daily = 1, weekly = 1, monthly = 1, every_n_hours = 1, anytime = 1, scheduled = 1 }
        local regionIds, contentCount = {}, 0
        for r, region in ipairs(regional.regions or {}) do
            local rwhere = "region " .. r .. " (" .. tostring(region.id) .. ")"
            if type(region.id) ~= "string" or regionIds[region.id] then problem(rwhere, "missing or duplicate id") end
            regionIds[region.id or ""] = true
            if type(region.name) ~= "string" then problem(rwhere, "missing name") end
            if type(region.wiki) ~= "string" or not region.wiki:match("^https://runescape%.wiki/") then problem(rwhere, "bad wiki") end
            for i, entry in ipairs(region.content or {}) do
                local where = rwhere .. " content " .. i .. " (" .. tostring(entry.id) .. ")"
                contentCount = contentCount + 1
                if type(entry.id) ~= "string" then problem(where, "missing id")
                elseif usedIds[entry.id] then problem(where, "id also used in " .. usedIds[entry.id])
                else usedIds[entry.id] = "regional" end
                if type(entry.name) ~= "string" then problem(where, "missing name") end
                if not RESETS[entry.resets] then problem(where, "bad resets " .. tostring(entry.resets)) end
                if entry.resets == "every_n_hours" and type(entry.everyHours) ~= "number" then problem(where, "needs everyHours") end
                for _, sk in ipairs(entry.skills or {}) do
                    if not isSkill[sk] then problem(where, "unknown skill " .. tostring(sk)) end
                end
                for _, levelReq in ipairs((entry.requirements or {}).levels or {}) do
                    if not isSkill[levelReq.skill] then problem(where, "unknown skill " .. tostring(levelReq.skill)) end
                end
                local c = entry.coord
                if c and (type(c.x) ~= "number" or c.x < 0 or c.x > 12799 or type(c.z) ~= "number" or c.z < 0 or c.z > 12799) then
                    problem(where, "coordinate out of range")
                end
            end
        end
        print(string.format("regional: %d regions, %d items", #(regional.regions or {}), contentCount))
    end
end

print(string.format("%d methods checked, %d problems", totalMethods, problems))
os.exit(problems == 0 and 0 or 1)
