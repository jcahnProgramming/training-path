--[[
    settings.lua
    ------------
    The player's choices from the Settings page, saved in PersistentDB so
    they survive reloads.
      skillsView      "grid" (large icons) or "compact" (like the game's
                      Skills tab)
      bestIntensity   which kind of method counts as "best" in the compact
                      view's hover text: "high", "medium" or "low" (AFK)
      textSize, colours, textShadow, statusLabels
                      accessibility choices, applied by src/style.lua
]]

local Settings = {}

local DB_KEY = "settings"

local DEFAULTS = {
    skillsView = "grid",
    bestIntensity = "medium",
    -- Accessibility (see src/style.lua)
    textSize = "normal",      -- "small", "normal", "large"
    colours = "standard",     -- "standard", "contrast", "colourblind"
    textShadow = "on",        -- "on", "off"
    statusLabels = "symbols", -- "symbols" ([OK] / [  ]) or "words" (Done: / Missing:)
}

local saved = PersistentDB:GetStructuredData(DB_KEY) or {}

function Settings.get(name)
    if saved[name] ~= nil then return saved[name] end
    return DEFAULTS[name]
end

function Settings.set(name, value)
    saved[name] = value
    PersistentDB:SetStructuredData(DB_KEY, saved)
end

return Settings
