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

## Items (tested in-game 2026-10-22)
- Any item can be looked up without owning it: `config.Obj.FromID(id)` or `config.Obj.INTERNAL_NAME`
  -> `.name`, `.configName`, `.id`. Worked: `ORIKALKUM_BAR` (44838), `HAMMER` (2347).
  `FIRE_RUNE` is NOT the internal name of fire runes (unknown yet).
- InvSlot only has `.obj` and `.count`: item charges/ObjVars (e.g. urn fill) are NOT exposed.
- Smithing urns, internal names `URNS_SMITHING<tier>_<STATE>`; tier 2 fragile, 3 plain, 4 strong.
  States: UNFIRED, NORUNE ("(no rune)"), RUNE ("(empty)", ready to fill), STARTED (filling), FULL.
  Strong: 20289 unfired, 20290 no rune, 20292 empty, 20293 filling, 20294 full. CERT_ = noted.
- `config.Inv.METAL_BANK` exists, but `Inventory.Find` gave isValid = false on a level-1 beta
  account. Unknown whether it's ever sent to the client.

## Quests, links (from docs, 2026-10-22)
- Quest completion: `config.Quest.<NAME>` or `config.Quest.FromID(id)` -> `.name`, `.hasFinishedQuest`,
  `.hasStartedQuest`, `.canStartQuest`, `.deprecated`. We map display name -> quest by scanning ids.
- There is NO API to open a web page or copy to the clipboard (searched the whole docs index).
  `"urls"` in plugin.json is only for HTTPRequest (needs httpAccess). Wiki links are shown in a
  PrettyUI text field the player can select and copy.
- PrettyUI SpriteButton names include "STAR" (silver/bronze/gold). Gold star sprite:
  `id.Sprite.RAND_SPEEDRUN_STAR_GOLD_0`.

## Hint arrow and coordinates
- `HintList.AddArrow({ name, coordFine, arrowID = 0 })` / `HintList.RemoveArrow(name)`: the game's own
  yellow hint arrow. NOT in the public docs. **It CRASHED THE CLIENT (not catchable by pcall)** when we
  pointed it at a wiki coordinate (v0.1.8, probably far away / not loaded). Quest Helper only uses the
  plain arrow for targets in the loaded scene (checks distance and `World.GetGroundHeight` first) and a
  "pointer" variant (`pointerModelID = id.Model.YELLOW_HINT_ARROW_SMALL`, y = 0) otherwise.
  We removed it and show text directions instead (src/compass.lua). Don't retry without those checks.
- Player position: `Player.GetEntity().coordGrid` -> `.x`, `.z`, `.level` (check `.isValid`).
- World tile -> CoordGrid: `CoordGrid.new(level << 28 | x << 14 | z)`; `:ToCoordFine(true)` = tile centre;
  `CoordFine.new(level, x, y, z)` in fine units (512 per tile). RS Wiki map x,y = game tile x,z.
- Guidelines: "Navigation or guidance systems" are allowed but subject to review; "automatically indicating
  where players should stand or move" is prohibited. Our arrow is player-requested only, points to a
  destination area from the wiki, one at a time, never in combat. Mention this in the submission notes.
- Text: "<" starts a text tag in game strings; write "<lt>" for a literal "<".

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
