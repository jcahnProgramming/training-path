# RS3 plugin API notes

Facts learned from the official docs (https://developer.runescape.com/rs/), in-game testing, and reading
Jagex-approved plugins (PrettyUI, Quest Helper, Tile Markers, Job Gauges, Entity Hider, Menu Entry Swapper,
as installed on 2026-10-21). "Seen in" names the plugin that demonstrates it.

## plugin.json
- Fields in use: `name`, `version`, `contactEmailAddress`, `hasRibbonIcon`, `hasSettingsIcon`,
  `requiredDependencies`, `optionalDependencies`, `requiredPermissions`, `optionalPermissions`.
- PrettyUI dependency: `"requiredDependencies": { "prettyui": 6398181 }`. The host injects a global
  `prettyui` (not `require`). Seen in all five non-library plugins.

## Lifecycle
- `function PluginShutdown()` (global) runs on disable/reload: unsubscribe events, destroy UI.
- `log(...)` and `print(...)` both write to the console. `formatStr("{}", x)` is a global helper.
- `require("src/foo")`: path from plugin root, slashes, no `.lua`.
- `Plugin.resources.<folder>.<name>` (no extension) -> assign to `ui.Sprite.sprite`.

## Ribbon / settings icons (for later)
- Ribbon icon click: `Event.ContentLayerReady.Subscribe(id, function(e) build UI into e.component end)`.
- Settings icon click: `Event.SettingsLayerReady` with `e.component`.
- PrettyUI's own RibbonBar is deprecated in favour of these.

## Reading game state
- Levels: `Player.IsAvailable()` first, then `Player.GetLevelUncapped(SkillType.X)`,
  `Player.GetLevelGameplay(st)` (boosted), `Player.GetLevelCapped(st)`.
  Skill name: `config.Enum.STAT_TO_STRING:GetOutputValue(st)`. (Quest Helper)
- **XP: not used by any approved plugin.** Must find the API in the docs before building XP/hr.
- Inventory: `Inventory.Find(config.Inv.INV | BANK | WORN | MONEY_POUCH)`, check `.isValid`, then
  `inv:GetTotal(objId)`, `inv:GetSlots()` (slot `.obj.id`, `.count`), `inv.freeSlotCount`.
  Item info: `config.Obj.FromID(id).name`. Change event: `Event.InventoryUpdated` (`e.inv.id`).
  WORN arrives only after the first game tick: nil-check. (Quest Helper, Job Gauges)
- Vars: `var.VarPlayer[name].value`; `Event.VarTransmit` (`e.var.configName`, `e.oldValue`, `e.newValue`).
- Player name: `PlayerList.Self().displayName`. Game state: `Event.GameStateChanged`, `GameState.GAME`.

## Events and timing
- `Event.X.Subscribe("unique-id", fn)` / `Event.X.Unsubscribe("unique-id")`.
- `Event.Logic`: 50 per second, `e.logicTick`. `Event.ServerLogic`: once per 0.6 s game tick.
  Driving UI from ServerLogic lags a tick (Job Gauges). No timer API: count ticks yourself.

## PersistentDB
- Get/Set String, Bool, Int, StructuredData; `Delete`. Getters return nil when unset.
- Per plugin, per device. Nobody keys by character; we must, if needed.

## UI
- Floating windows parent to `TOPLEVEL_V2__PLUGIN_BUILD_LAYER_TOP` (fallback `TOPLEVEL_V2__GAME_AREA`).
  The parent may not exist yet at load; Quest Helper retries on `Event.Logic`.
- `ui.Text` needs `.font` (e.g. `id.Font.MUSEO_SANS_15PT_REGULAR`, titles `id.Font.CINZEL_13PT_BOLD`).
- Colours: `.rgba = 0xRRGGBBAA` or `.colour = Vector4.new(r,g,b,a)` (0..1).
- Percentage sizing DOES work in approved plugins: `SetSize(0,0,1,1)` on ui.Layer, `SetSize(-24,30,1)` on
  ui.Button. Our 0.1.0 failure was probably something else.
- Components let clicks fall through to the game unless `clickthrough = false` (ui.Layer pattern).
- Drag/move pattern (PrettyUI window.lua): invisible `ui.Layer`, `clickthrough = false`, ONCLICK records
  start, ONHOLD moves (fires repeatedly while held), ONRELEASE/ONDRAGCOMPLETE stops. On first ONHOLD the
  layer stretches over the whole screen so the mouse can't slip off. Hook returning false stops propagation.
- `ONDRAG` never fired on a plugin-layer ui.Button, even with `dragConfig` fields set (tested 0.1.2).
  `component.dragConfig` is read-only as a whole; its fields are edited in place.
- `Mouse.GetPosition()` is raw window pixels; divide by scale (interface scaling, Retina) to get
  interface units. `game.options.InterfaceScale.setting` is a percent.
- Scrolling content: `prettyui.SimpleView.new(root, {x, y, width, height, contentHeight, scrollStep})`.

## Gotchas
- Touching a destroyed component can crash the client, even inside pcall (Quest Helper comment).
- Clamp saved window positions to the screen.
- `e.timeDeltaSecs` on Draw is buggy (Quest Helper uses a fixed 0.02).
