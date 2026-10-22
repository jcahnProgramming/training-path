# Changelog

## 0.1.16

- Item names checked against the game's own item list (all 648 exact names in guides, gear, inventories and activities). The 13 that didn't exist are fixed: unfinished potions are "... potion (unfinished)" and unstrung bows "... (unstrung)" in-game. These lines now turn green when you have the item.
- New ItemIndex.search() (find in-game item names containing some text), used for that check.

## 0.1.15

- Training queue:
  - Method pages have "Add to queue": train for 15 min / 30 min / 1 hour / 2 hours, or until a level (next level, end of the method's level range, or the skill's max).
  - New "Queue" tab: entries in order with skill icon, goal, progress ("23 / 60 min", "Level 64 / 70, 12,345 XP to go") and Now / Up next / Done; Up, Down, Open, Remove; Pause/Resume, "Done, next" and "Clear finished".
  - Timers count game-clock minutes only while logged in and not paused; level goals finish when your real level reaches the target. Then the next entry starts by itself.
  - Under the nav on every page: the current queue item with its progress, and a "Finished: X. Next up: Y" banner until you press OK.
  - Saved in PersistentDB. New src/queue.lua.

## 0.1.14

- Settings > Accessibility:
  - Text size: Small / Normal / Large (body and title fonts; uses the first size the game has, so a missing font can't break anything).
  - Colours: Standard / High contrast / Colour-blind (blue for done, orange for missing, Okabe-Ito colours).
  - Text shadow: On / Off.
  - Status labels: Symbols ([OK], [  ]) or Words (Done:, Missing:, Note:, Check:).
- All window text goes through the new src/style.lua (one wrapper when each page is created). Button labels keep PrettyUI's own font.

## 0.1.13

- Navigation redesign:
  - Row 1 (every page): Home, Now, Levels and the Favourites star on the left; the Settings cog on its own at the right edge. Each has a hover tooltip. "Skills" is now "Home" (the separate Home button is gone, the tab does the same).
  - Row 2 (inner pages only): "< Back" with a one-line breadcrumb beside it, e.g. "Home > Smithing > Gear".
  - Skill pages: a header with the skill icon, name and "Level X of Y", then the Training | Gear buttons under it.

## 0.1.12

- Activity helpers for every skill (154, plus the urn one): setup checklist (green/red), how to get there, numbered steps, tips, live tracking, "when you're done", and daily/weekly limits. Data in src/activities/<skill>.lua (format: docs/activity-format.md). Method pages have an "Activity helper: ..." button per activity.
- New "Now" tab:
  - Game date/time and countdowns to the daily, weekly (Wednesday) and monthly resets.
  - "On the calendar today", read from the game's own events calendar. Only events running today are shown, never future ones.
  - "Worth training now": skills featured in today's events, and the five skills closest to a level-up.
  - Distractions & Diversions (30, from the wiki) grouped by daily / weekly / monthly / timer / any time, with reset countdowns and whether you meet the requirements; each opens a page with reward, requirements, directions and wiki link.
- Time comes from the game variable CLOCK_TIME_DATE_MINUTES (Lua's os library isn't available to plugins). New src/gametime.lua, src/calendar.lua, src/dnd.lua.
- Data fixes found while writing activities (checked on the wiki): Willow longbow Fletching 25; cleansing crystals need 75 Prayer; Sift Soil needs 91 Magic and Lunar Diplomacy; hydrix dragons need 101 Slayer; Green Gobbo Goodies needs 83 Archaeology; net trapping needs the small fishing net in the backpack (not the tool belt).

## 0.1.11

- Every new page opens at the top (guides and gear no longer jump down to your band; it's open and highlighted instead).
- Settings tab (the game's cog icon, next to the star) with:
  - Skills screen: "Large icons" or "Compact" (small icons close together, like the game's Skills tab).
  - "Best method means": High intensity, Medium or AFK.
- Hovering a skill on the Skills screen shows the best method for your current level, of the chosen kind (the first that's Ready, else the first of that kind, else the first in your band).
- New src/settings.lua (saved in PersistentDB).

## 0.1.10

- Design pass using the game's own art (no image files):
  - Skills tab is a grid of the game's high-res skill icons with your level next to each (hover for the name).
  - Guide, gear and method pages show the skill icon next to the title.
  - Level bands are collapsible: your band starts open and highlighted; click "[+]"/"[-]" to open or close others.
  - Methods are compact cards: star, intensity badge (HIGH / MED / AFK in red / amber / green), name, XP/hr and place, and a Ready / Missing line.
  - Items (gear, wear/carry, recommended inventory) show their in-game icon in an inventory-style slot, dimmed when you don't have them.
- New src/icons.lua (skill icon sprites) and src/itemindex.lua (item name -> icon, built in the background a few thousand ids per tick).

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
