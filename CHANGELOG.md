# Changelog

## 0.1.6

- First activity: "Orikalkum with strong smithing urns" (Fort Forinthry), opened from the Smithing guide.
- Setup checklist, live from the backpack: Smithing level, urns ready/filling, urns needing a fire rune, full urns to teleport. Metal bank is shown as a manual check (not visible to plugins).
- Urns recognised by internal item names (URNS_SMITHING4_*), checked in-game.
- docs/api-notes.md: item lookup, urn item names, metal bank visibility.

## 0.1.5

- Guide engine: data format in src/guides/ (level bands -> methods with intensity, XP/hr, location, items, requirements, money, notes; plus boosts and a source credit).
- First guide: Smithing, from the RuneScape Wiki's Pay-to-play Smithing training page (CC BY-NC-SA 3.0).
- Pages (src/pages.lua): home page with guide buttons and levels; guide page with "(you are here)" on the player's band, scrolled to it.
- Page is rebuilt after a resize so text re-wraps.

## 0.1.4

- Window lists every skill with the player's level and total XP (Player.GetLevelUncapped / GetXPUncapped).
- New src/skills.lua: skill list, read helper, number formatting.
- Refreshes once per game tick (Event.ServerLogic); only changed lines are rewritten.

## 0.1.3

- Window now built with PrettyUI (required dependency, mod.io ID 6398181), the UI library used by Quest Helper and other approved plugins.
- Move: drag the title bar (PrettyUI built-in).
- Resize: hold the bottom-right corner and drag. Uses PrettyUI's technique: an invisible ui.Layer with clickthrough = false, ONCLICK / ONHOLD / ONRELEASE, stretched over the screen while held.
- Position and size saved together in PersistentDB under "window" (old panelWidth/panelHeight keys no longer used).
- PluginShutdown removes the window on reload.

## 0.1.2 (never confirmed in-game; replaced by 0.1.3)

- Corner resize is now click-based: click the corner button, move the mouse, click it again to save. Dragging plugin-layer components did not trigger ONDRAG in testing, even with dragConfig set.
- Live resize uses Event.Logic (50 times a second) and only reads the mouse position.

## 0.1.1

- Text now renders: font set explicitly to MUSEO_SANS_15PT_REGULAR.
- Layout uses plain interface units, recalculated after every resize.
- Added "+" / "-" resize buttons in the title bar.
- Corner grip is now a button so it can receive drag and scroll input.

## 0.1.0 (skeleton)

- Resizable panel on the plugin layer: drag the corner grip, or scroll over it.
- Panel size saved in PersistentDB and restored on load.
