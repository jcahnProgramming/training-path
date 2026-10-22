--[[
    travel.lua
    ----------
    "How to get there" for every training location: short directions and,
    where the RuneScape Wiki gives one, a map coordinate for live
    directions (src/compass.lua). Data files: src/travel_1.lua to src/travel_4.lua,
    keyed by the exact `location` text used in the guides.
]]

local Travel = {}

Travel.byLocation = {}

for part = 1, 4 do
    local path = "src/travel_" .. part
    local ok, data = pcall(require, path)
    if ok and type(data) == "table" then
        for locationText, info in pairs(data) do
            Travel.byLocation[locationText] = info
        end
    else
        print("[Training Path] Couldn't load " .. path .. ": " .. tostring(data))
    end
end

-- Travel info for a method, or nil if it has no location / no data.
function Travel.forMethod(method)
    if method.location == nil then return nil end
    return Travel.byLocation[method.location]
end

return Travel
