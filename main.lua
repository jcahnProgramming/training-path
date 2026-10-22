--[[
    Training Path  -  v0.1.12
    -----------------------------------
    A movable, resizable window with skill training guides.

    What this file does:
      1. Builds a window using PrettyUI, the shared UI library that Quest
         Helper, Tile Markers, Job Gauges and others are built on. The game
         loads PrettyUI for us because plugin.json lists it under
         "requiredDependencies", and gives it to us as the global `prettyui`.
      2. PrettyUI's window can already be MOVED by dragging its title bar.
      3. We add a RESIZE corner (bottom-right) using the same technique
         PrettyUI uses for its title bar:
           - ONCLICK   (mouse pressed on the corner)  -> remember start values
           - ONHOLD    (fires repeatedly while held)  -> resize to follow mouse
           - ONRELEASE (mouse let go)                 -> stop and save
         The corner is an invisible ui.Layer with clickthrough = false.
         Without that flag, clicks fall through to the game (our v0.1.1 bug).
      4. Saves the window position and size in PersistentDB so they are
         restored the next time the plugin loads.
      5. Shows the pages from src/pages.lua: tabs for Skills, Levels and
         Favourites (star), a guide for every skill (src/guides/), a page per
         training method with green/red requirement and item checks, and
         activity helpers (src/activities/).

    Nothing in this plugin sends input or actions to the game. It only reads
    where the mouse is while the player holds the resize corner.
]]

----------------------------------------------------------------------------
-- Settings
----------------------------------------------------------------------------

-- Window position and size used the very first time, in interface units.
local DEFAULT_WINDOW = { x = 20, y = 120, w = 300, h = 260 }

-- Limits for the window size, in interface units.
local MIN_WIDTH, MIN_HEIGHT = 220, 160
local MAX_WIDTH, MAX_HEIGHT = 800, 900

-- Size of the resize corner in the bottom-right of the window.
local GRIP_SIZE = 16

-- PersistentDB key. Records are already isolated per plugin.
local DB_KEY_WINDOW = "window"

----------------------------------------------------------------------------
-- Checks before we build anything
----------------------------------------------------------------------------

if prettyui == nil then
    print("[Training Path] PrettyUI is not loaded. Install PrettyUI from the plugin hub.")
    return
end

-- The layer above most game interfaces that plugins are allowed to use.
local gameLayer = ui.Interfaces:GetComponent(id.Component.TOPLEVEL_V2__PLUGIN_BUILD_LAYER_TOP)
if gameLayer == nil then
    print("[Training Path] Could not find the plugin layer. Window not created.")
    return
end

----------------------------------------------------------------------------
-- Saved position and size
----------------------------------------------------------------------------

-- Keep a value between a minimum and a maximum.
local function clamp(value, low, high)
    if value < low then return low end
    if value > high then return high end
    return value
end

-- Read the saved window, falling back to the defaults for anything missing.
-- The position is kept on screen in case the game window got smaller.
local function loadSavedWindow()
    local saved = PersistentDB:GetStructuredData(DB_KEY_WINDOW) or {}
    local x = saved.x or DEFAULT_WINDOW.x
    local y = saved.y or DEFAULT_WINDOW.y
    local w = clamp(saved.w or DEFAULT_WINDOW.w, MIN_WIDTH, MAX_WIDTH)
    local h = clamp(saved.h or DEFAULT_WINDOW.h, MIN_HEIGHT, MAX_HEIGHT)
    if (gameLayer.width or 0) > 0 then x = clamp(x, 0, gameLayer.width - 80) end
    if (gameLayer.height or 0) > 0 then y = clamp(y, 0, gameLayer.height - 40) end
    return x, y, w, h
end

----------------------------------------------------------------------------
-- Build the window
----------------------------------------------------------------------------

local startX, startY, startW, startH = loadSavedWindow()

local window = prettyui.Window.new(gameLayer, {
    title = "Training Path",
    x = startX,
    y = startY,
    width = startW,
    height = startH,
    minWidth = MIN_WIDTH,
    minHeight = MIN_HEIGHT,
    maxWidth = MAX_WIDTH,
    maxHeight = MAX_HEIGHT,
    -- Closing just hides the window for now. A ribbon button to reopen it
    -- comes later; until then, reload the plugin to bring it back.
    onClose = function()
        print("[Training Path] Window closed. Run 'prl training-path' to reopen it.")
    end,
})

----------------------------------------------------------------------------
-- Window contents (see src/pages.lua)
----------------------------------------------------------------------------

local Pages = require("src/pages")
Pages.start(window)

-- Check once per game tick (every 0.6 seconds). Levels and XP only change
-- when the server tells the client, which happens on these ticks.
Event.ServerLogic.Subscribe("trainingPathRefreshLevels", Pages.refresh)

-- Small gold square drawn inside the window's bottom-right corner, so the
-- player can see where to grab. It's only a picture; it doesn't take clicks.
local gripMarker = ui.Rectangle.new(window.root)
gripMarker.fill = true
gripMarker.colour = Vector4.new(0.85, 0.70, 0.30, 0.8)

-- The invisible layer that actually receives the mouse for resizing.
-- Like PrettyUI's title-bar drag layer, it sits on the game layer (not inside
-- the window) so it can stretch over the whole screen while resizing.
local grip = ui.Layer.new(gameLayer)
grip.clickthrough = false

----------------------------------------------------------------------------
-- Keeping the corner in place, and saving
----------------------------------------------------------------------------

local isResizing = false

-- Put the corner layer and marker over the window's bottom-right corner.
local function placeGrip()
    local root = window.root
    gripMarker:SetPos(root.width - GRIP_SIZE + 4, root.height - GRIP_SIZE + 4)
    gripMarker:SetSize(GRIP_SIZE - 8, GRIP_SIZE - 8)
    if not isResizing then
        grip:SetPos(root.x + root.width - GRIP_SIZE, root.y + root.height - GRIP_SIZE)
        grip:SetSize(GRIP_SIZE, GRIP_SIZE)
    end
    grip.hidden = root.hidden
    grip:MoveToFront()
end

-- Save position and size, but only if something changed.
local lastSaved = {}
local function saveWindowIfChanged()
    local root = window.root
    if root.x == lastSaved.x and root.y == lastSaved.y
        and root.width == lastSaved.w and root.height == lastSaved.h then
        return
    end
    lastSaved = { x = root.x, y = root.y, w = root.width, h = root.height }
    PersistentDB:SetStructuredData(DB_KEY_WINDOW, lastSaved)
    print("[Training Path] Saved window: " .. lastSaved.x .. "," .. lastSaved.y
        .. "  " .. lastSaved.w .. " x " .. lastSaved.h)
end

-- PrettyUI calls this whenever the window finishes moving, is shown, or
-- changes size. (Quest Helper uses the same _RegisterOverlay hook for this.)
window:_RegisterOverlay(grip, function() return true end, function()
    placeGrip()
    if not isResizing then saveWindowIfChanged() end
end)

placeGrip()
lastSaved = { x = window.root.x, y = window.root.y, w = window.root.width, h = window.root.height }

----------------------------------------------------------------------------
-- Resizing from the corner
----------------------------------------------------------------------------

-- Values remembered when the player presses the corner.
local startMouseX, startMouseY = 0, 0
local startWidth, startHeight = 0, 0
local mouseScale = 1        -- raw mouse pixels per interface unit
local captureExpanded = false

-- Raw mouse pixels can differ from interface units (interface scaling and
-- Mac Retina screens). PrettyUI works out the ratio at the moment of the
-- click: it knows where the click was in interface units, and the raw mouse
-- position, so it divides one by the other. We do the same.
-- Fallback: the game's "Interface scaling" option, e.g. 100% -> 1.0.
local function interfaceScaleSetting()
    local option = game and game.options and game.options.InterfaceScale
    local percent = option and tonumber(option.setting) or 100
    if percent <= 0 then percent = 100 end
    return percent / 100
end

local function measureMouseScale(clickX, clickY)
    local raw = Mouse.GetPosition()
    -- Too close to the screen edge to measure reliably: use the fallback.
    if raw == nil or clickX < 32 or clickY < 32 then return interfaceScaleSetting() end
    local scaleX, scaleY = raw.x / clickX, raw.y / clickY
    -- The two should agree; if they don't, use the fallback.
    if math.abs(scaleX - scaleY) > (scaleX + scaleY) / 2 * 0.1 then return interfaceScaleSetting() end
    return (scaleX + scaleY) / 2
end

-- Current mouse position in interface units.
local function mouseInInterfaceUnits()
    local raw = Mouse.GetPosition()
    if raw == nil then return nil, nil end
    return raw.x / mouseScale, raw.y / mouseScale
end

-- Mouse pressed on the corner: remember where everything started.
-- x, y are where the click landed inside the corner layer.
grip:Subscribe(ui.Hook.ONCLICK, "trainingPathResizeStart", function(component, x, y)
    if not Mouse.IsAvailable() then return false end
    mouseScale = measureMouseScale(grip.x + x, grip.y + y)
    startMouseX, startMouseY = mouseInInterfaceUnits()
    startWidth, startHeight = window.root.width, window.root.height
    isResizing = true
    captureExpanded = false
    return false   -- don't let the click also reach the game
end)

-- Mouse held: resize the window to follow the mouse.
grip:Subscribe(ui.Hook.ONHOLD, "trainingPathResizeMove", function()
    if not isResizing then return false end

    -- First time through: stretch the corner layer over the whole screen so
    -- the mouse can't slip off it while moving quickly (PrettyUI's trick).
    if not captureExpanded then
        captureExpanded = true
        grip:SetPos(0, 0)
        grip:SetSize(gameLayer.width, gameLayer.height)
        grip:MoveToFront()
        return false
    end

    local mouseX, mouseY = mouseInInterfaceUnits()
    if mouseX == nil then return false end
    window:SetSize(startWidth + (mouseX - startMouseX),
                   startHeight + (mouseY - startMouseY))
    return false
end)

-- Mouse let go: stop resizing, shrink the corner layer back, save.
local function stopResize()
    if not isResizing then return false end
    isResizing = false
    captureExpanded = false
    placeGrip()
    saveWindowIfChanged()
    Pages.rebuild()   -- re-wrap the text to the new width
    return false
end
grip:Subscribe(ui.Hook.ONRELEASE, "trainingPathResizeStop", stopResize)
grip:Subscribe(ui.Hook.ONDRAGCOMPLETE, "trainingPathResizeStop", stopResize)

----------------------------------------------------------------------------
-- Clean up when the plugin is reloaded or disabled
----------------------------------------------------------------------------

-- The game calls PluginShutdown before unloading. PrettyUI's window lives on
-- the shared game layer, so we remove ours to avoid duplicates after reload.
-- The window goes first because it still refers to the corner layer.
function PluginShutdown()
    Event.ServerLogic.Unsubscribe("trainingPathRefreshLevels")
    Pages.stop()
    window:Destroy()
    grip:Destroy()
end

print("[Training Path] Loaded v0.1.12. Window " .. window.root.width .. " x " .. window.root.height)
