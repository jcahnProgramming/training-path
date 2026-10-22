--[[
    favourites.lua
    --------------
    The player's starred training methods, saved in PersistentDB so they
    survive reloads. Stored as a list of method ids (see docs/guide-format.md),
    in the order they were starred.
]]

local Favourites = {}

local DB_KEY = "favourites"

-- Load the saved list once. PersistentDB stores tables as { ids = {...} }.
local saved = PersistentDB:GetStructuredData(DB_KEY)
local ids = (saved and saved.ids) or {}

local function save()
    PersistentDB:SetStructuredData(DB_KEY, { ids = ids })
end

function Favourites.has(methodId)
    for _, id in ipairs(ids) do
        if id == methodId then return true end
    end
    return false
end

-- Star or unstar a method.
function Favourites.set(methodId, starred)
    if starred and not Favourites.has(methodId) then
        ids[#ids + 1] = methodId
    elseif not starred then
        for i = #ids, 1, -1 do
            if ids[i] == methodId then table.remove(ids, i) end
        end
    end
    save()
end

-- The starred method ids, oldest first.
function Favourites.list()
    return ids
end

return Favourites
