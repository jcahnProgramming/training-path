# Changelog

## 0.1.9

- Each skill guide has two tabs: Training (the methods) and Gear.
- Gear tab: gear by level band with "(you are here)"; each item green when worn/carried, level requirements checked, tradeable yes/no, how to get it, and a wiki link. Data in src/gear/<skill>.lua (format: docs/gear-format.md), loaded by src/gear/index.lua.
- Method pages: "Recommended inventory / preset" (what to wear and carry, each checked green/red) where the wiki recommends a setup.
- tools/validate_guides.lua also checks gear files.

## 0.1.8

- Guides for all 29 skills (578 methods), researched from the RuneScape Wiki (CC BY-NC-SA 3.0). Format: docs/guide-format.md.
- Window layout: tab row (Skills, Levels, gold-star Favourites) on every page; "< Back" with a breadcrumb on pages opened from a tab.
- Skills tab: two-column grid of skills with your level; click one for its guide.
- Guide page: bands with "(you are here)", each method with a star toggle, summary and a green "Ready" / red "Missing: ..." line.
- Method page: requirements (levels, quests) and items to wear/carry, each green when met and red when not; grey for things the plugin can't check (tool belt, bank, partial quests).
- Favourites: star any method; the star tab lists them and opens a method directly. Saved in PersistentDB.
- Wiki buttons: show the wiki link in a text box to select and copy (the plugin API can't open a browser).
- New src/checks.lua (level, quest via QuestType.hasFinishedQuest, item name matching on backpack + worn), src/favourites.lua; guides load automatically, a broken guide file only hides that guide.
- tools/validate_guides.lua: checks every guide against the format (run with Lua 5.4).
- Back button text fixed: the game reads "<" as a text tag, so the label is now written "<lt> Back". Added a "Home" button next to it (goes to the Skills tab).
- Regions: methods in gated areas (Prifddinas, Menaphos, dungeons, dig sites...) show a "Region" section on the method page: unlocked/locked (quests and levels checked in-game), how to unlock it, a wiki link, and a warning for dangerous areas. A locked region also appears in the guide's red "Missing:" line. Data in src/regions_cities.lua and src/regions_dungeons.lua (73 regions); matched to methods by location text (src/regions.lua). Regions in either/or locations ("X or Y") and travel shortcuts (fairy rings) are shown as optional, never as Missing.
- "How to get there" on every method page: directions from the wiki (src/travel_1-4.lua via src/travel.lua). Where the wiki gives a map spot, "Show directions" turns on a live line under the tabs on every page, e.g. "Heading to X: 340 tiles north-east" (src/compass.lua; reads only the player's own position), with a Stop button.
- Tried and removed: the game's in-world hint arrow (HintList) crashed the client when pointed at a far-away spot.

## 0.1.7

- Live tracking on the activity page: XP gained, XP/hr (after 30 s), XP and time to next level.
- Estimated urn fill (XP gained while an urn can fill; resets when a new full urn appears). Labelled as an estimate: the API doesn't expose urn charges.
- "Reset tracking" button. Tracking continues through page redraws (checklist changes, resize).
- New src/tracker.lua (any skill): timing from Event.Logic ticks (50/s), standard XP table to 120.

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
