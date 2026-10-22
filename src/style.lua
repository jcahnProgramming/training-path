--[[
    style.lua
    ---------
    Accessibility settings turned into fonts, colours and labels. Every
    piece of text the window adds goes through Style.text(), so a setting
    changes the whole window at once (see "newView" in src/pages.lua).

      Text size     small / normal / large: picks the body and title fonts.
      Colours       standard / contrast (brighter) / colourblind (blue and
                    orange instead of green and red, Okabe-Ito colours).
      Text shadow   on / off.
      Status labels symbols ([OK], [  ]) or words (Done:, Missing:).

    Text inside buttons is drawn by PrettyUI in its own font, so it doesn't
    change size.
]]

local Settings = require("src/settings")

local Style = {}

-- The colours the pages use (0xRRGGBBAA). Pages pick these by name.
Style.GOLD  = 0xF2C66DFF
Style.WHITE = 0xE7D7B0FF   -- also PrettyUI's default body text colour
Style.GREY  = 0x9A9A9AFF
Style.GREEN = 0x7CD67CFF
Style.RED   = 0xE06C6CFF
Style.AMBER = 0xE8B04BFF

-- How each colour changes in the other colour schemes.
local SCHEMES = {
    contrast = {
        [Style.GOLD]  = 0xFFD84AFF,
        [Style.WHITE] = 0xFFFFFFFF,
        [Style.GREY]  = 0xD6D6D6FF,
        [Style.GREEN] = 0x4CFF4CFF,
        [Style.RED]   = 0xFF5A5AFF,
        [Style.AMBER] = 0xFFC21AFF,
    },
    colourblind = {
        [Style.GREEN] = 0x56B4E9FF,   -- sky blue
        [Style.RED]   = 0xE69F00FF,   -- orange
        [Style.AMBER] = 0xF0E442FF,   -- yellow
    },
}

-- Fonts for each text size, best first. The first one the game has is
-- used, so a missing font can never break the page.
local FONTS = {
    small  = { body = { "MUSEO_SANS_13PT_REGULAR", "MUSEO_SANS_11PT_REGULAR" },
               title = { "CINZEL_13PT_BOLD" } },
    normal = { body = { "MUSEO_SANS_15PT_REGULAR" },
               title = { "CINZEL_13PT_BOLD" } },
    large  = { body = { "MUSEO_SANS_19PT_REGULAR", "MUSEO_SANS_17PT_REGULAR", "MUSEO_SANS_19PT_BOLD",
                        "MUSEO_SANS_15PT_BOLD" },
               title = { "CINZEL_18PT_BOLD", "CINZEL_13PT_BOLD" } },
}

local function firstFont(names)
    for _, name in ipairs(names) do
        local ok, fontId = pcall(function() return id.Font[name] end)
        if ok and type(fontId) == "number" and fontId >= 0 then return fontId end
    end
    return nil
end

-- A colour in the player's chosen scheme.
function Style.colour(colour)
    local scheme = SCHEMES[Settings.get("colours")]
    return (scheme and scheme[colour]) or colour
end

-- Add the font, colour and shadow settings to a piece of text.
-- `value` is what pages pass to AddText/AddTitle: a string or an options table.
function Style.text(value, isTitle)
    local options = {}
    if type(value) == "table" then
        for key, option in pairs(value) do options[key] = option end
    else
        options.text = tostring(value or "")
    end
    local fonts = FONTS[Settings.get("textSize")] or FONTS.normal
    if options.font == nil then options.font = firstFont(isTitle and fonts.title or fonts.body) end
    if not isTitle or options.colour ~= nil then
        options.colour = Style.colour(options.colour or Style.WHITE)
    end
    if Settings.get("textShadow") == "off" then options.shadowed = false end
    return options
end

-- Status markers: "[OK]" or "Done:" etc.
local MARKS = {
    symbols = { ok = "[OK]", todo = "[  ]", warn = "[!]", info = "[?]" },
    words   = { ok = "Done:", todo = "Missing:", warn = "Note:", info = "Check:" },
}
function Style.mark(state)
    local marks = MARKS[Settings.get("statusLabels")] or MARKS.symbols
    return marks[state] or marks.info
end

return Style
