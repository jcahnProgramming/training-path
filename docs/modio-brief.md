# Brief: mod.io listing for the "Training Path" RuneScape plugin

You are helping the plugin's author fill in the mod.io "Add plugin" form for a RuneScape 3 plugin.
This brief has every fact you need. Don't invent features, numbers or claims that aren't in it:
Jagex moderators check that the listing matches what the plugin actually does, and misleading
listings are rejected.

## 1. Background

- RuneScape 3 has an official Lua plugin API (released 19 October 2026). Plugins are distributed
  through mod.io and must pass manual moderation by Jagex before players can use them.
- Jagex's process: https://developer.runescape.com/rs/submission/process.html
- Jagex's rules: https://developer.runescape.com/rs/submission/guidelines.html
  (in short: plugins may show and organise information; they must never automate actions, send
  input to the game, reveal hidden or future information, or automatically show where to stand).
- Mod.io form steps: 1. Profile (name, summary, listing image, description, tags),
  2. Media (gallery), 3. Dependencies, 4. Upload files.

## 2. The plugin in one paragraph

Training Path shows players the best ways to train every one of RuneScape's 29 skills, from level 1
to max, tailored to their current levels. For each training method it checks whether the player is
ready (levels, quests, region access, items carried or worn), shows how to get there, suggests gear
and an inventory setup, and gives step-by-step help. A "Now" tab shows reset countdowns, today's
in-game calendar events, Distractions & Diversions and regional dailies/weeklies that the player
can tick off. Players can queue methods for a set time or until a level. It never plays the game:
it only shows information.

## 3. Facts (use these, nothing else)

| Item | Value |
|---|---|
| Plugin name | Training Path |
| Version | 1.0.0 |
| Author (shown in the game's plugin manager) | PathPlays |
| Contact email | jamie@meownetstudios.com (author asks Jagex to hide it from public view) |
| Source code | https://github.com/jcahnProgramming/training-path (public) |
| Required dependency | PrettyUI (Jagex-approved UI library plugin, mod.io id 6398181) |
| Permissions requested | None (no httpAccess, chatAccess or trackingAccess) |
| Data leaves the plugin? | Never. Data protection case 1. |
| Data source credit | RuneScape Wiki (https://runescape.wiki), licensed CC BY-NC-SA 3.0 |
| Platforms to tick on upload | Windows, Linux, Android, iOS, and Source |

### Features (accurate list)

- **Home**: all 29 skills as icons with your level; hover a skill to see the best method for your
  level (you choose in Settings whether "best" means high intensity, medium or AFK).
- **Skill guides (Training tab)**: 581 training methods grouped into level ranges. Your range is
  open and highlighted. Each method shows intensity (HIGH / MED / AFK), XP per hour where the wiki
  gives one, and "Ready" or what you're missing.
- **Gear tab**: gear for every skill by level; whether you're wearing or carrying it; whether it's
  tradeable; how to get it.
- **Method pages**: requirements (skill levels, quests, region unlocks) checked green/red against
  your character; items checked against your backpack and worn equipment; a recommended
  inventory/preset; how to get there with written directions and an optional live text readout
  ("340 tiles north-east"); wiki link; add to queue; favourite star.
- **Activity helpers**: 155 step-by-step helpers with a setup checklist, numbered steps, tips, live
  XP/hr and time-to-level tracking, and "when you're done" next steps.
- **Now tab**: game time, countdowns to the daily, weekly and monthly resets, events running today
  on the in-game calendar (never future events), skills worth training (featured in today's events,
  or closest to a level-up), 30 Distractions & Diversions and 17 regions (Menaphos, Prifddinas,
  the Arc, Player-owned port and more) with reputation shown where the game exposes it. Daily,
  weekly and monthly ones can be ticked Done; ticks clear themselves at the reset.
- **Queue**: queue training methods for 15 minutes to 2 hours, or until a level. Timers count only
  while logged in; level goals finish when you reach the level; the next one starts by itself.
- **Favourites**: star any method; the star tab lists them with their ready/missing status.
- **Settings and accessibility**: large or compact skills screen; text size (small / normal /
  large); colours (standard / high contrast / colour-blind friendly); text shadow on/off; status
  labels as symbols or words.
- **Window**: movable and resizable; closing it leaves a small "Training Path" button to reopen it.

### Limits to state honestly

- Plugins can't see the bank, metal bank or tool belt, so those items show as "check yourself".
- Plugins can't open web pages; wiki links are shown in a box to copy.
- Guide data comes from the RuneScape Wiki and can lag behind game updates.
- Distractions & Diversions are ticked off by the player; the plugin doesn't detect them by itself yet.

### What it reads (for the data protection section)

Skill levels and XP; backpack and worn equipment contents; quest completion; the player's position
(only while "Show directions" is on); the player's display name (to keep tick-offs separate per
character); the game clock; the in-game events calendar; a few in-game progress values (Menaphos
district reputation, the Arc currencies).

What it stores, locally, in the plugin's own storage: window position and size, settings,
favourites, the training queue, and Distraction & Diversion / regional tick-offs (keyed by
character name). Nothing else, and nothing is sent anywhere.

## 4. Form fields and limits

| Field | Rule | What to put |
|---|---|---|
| Plugin name | 1-50 characters, ASCII only | Training Path |
| Summary | 10-250 characters, ASCII only | See 5.1 (197 characters) |
| Listing image | 16:9, at least 512x288 | The author has `listing-16x9.png` ready |
| Homepage | optional | https://github.com/jcahnProgramming/training-path |
| Allow comments | | On |
| Allow dependents | | Off (nothing builds on this plugin) |
| Allow collections | | On |
| Description | up to 50,000 characters; must include the required sections in 5.3 | See 5.2 + 5.3 |
| Tags | any; permission tags only if permissions are requested | Skilling, Guides, Utility (no permission tags) |
| Dependencies (step 3) | must match plugin.json's requiredDependencies | PrettyUI |
| Files (step 4) | zip with main.lua and plugin.json at the top level | `training-path-1.0.0.zip` |
| Version (step 4) | numbers and full stops only | 1.0.0 |
| Changelog (step 4) | optional for a first version | "First release." |

Keep all text plain ASCII (straight quotes, plain hyphens, no emoji, bullets or arrows). The
description editor may support formatting; simple headings and "-" lists are fine.

## 5. Text to use

You may polish 5.1 and 5.2 for tone, but keep every fact accurate and don't add features.
Copy 5.3 exactly: Jagex requires these sections, and the EULA paragraph is Jagex's own wording.

### 5.1 Summary

Training guides, gear and step-by-step help for every skill, tailored to your levels. Checks your requirements and items, shows how to get there, and tracks dailies, events and your training queue.

### 5.2 Description (main part)

Training Path shows you the best ways to train every skill from level 1 to max, tailored to your current levels. It never plays the game for you: it only shows information.

Features
- Guides for all 29 skills: methods by level range, with intensity (high / medium / AFK), XP per hour and whether you're ready.
- Gear for every skill by level: what to use, whether you have it, whether it's tradeable, and how to get it.
- Method pages: requirements (levels, quests, region access) and items checked against your backpack and worn equipment, directions, a recommended inventory, and the wiki link.
- Activity helpers: setup checklist, steps, tips, live XP/hr tracking and next steps.
- Now tab: reset countdowns, today's events from the in-game calendar, skills worth training, Distractions & Diversions and regional content (Menaphos, Prifddinas, the Arc and more) with tick-off tracking.
- Training queue: queue methods for a set time or until a level.
- Favourites, settings and accessibility options (text size, high contrast, colour-blind friendly colours, text shadow, status words).

How to use
Open the window from the Training Path icon on the plugin ribbon, or click the small "Training Path" button left behind when you close the window. Use Home, Now, Queue and Levels along the top; click a skill, then a method. Drag the title bar to move the window and the gold corner to resize it.

Good to know
- Plugins can't see your bank, metal bank or tool belt, so those items show as "check yourself".
- Plugins can't open web pages; wiki links are shown ready to copy.
- Guide data comes from the RuneScape Wiki and may lag behind game updates. Reports are welcome at the contact email below.

Requires the PrettyUI plugin (added as a dependency).

Navigation note for reviewers: "Show directions" is a player-requested text readout of distance and compass direction to a training location from the RuneScape Wiki. It is never shown automatically, draws nothing in the game world, and is not used for combat positioning.

Data credit: guide data is based on the RuneScape Wiki (https://runescape.wiki), licensed CC BY-NC-SA 3.0. Made by PathPlays. Source code: https://github.com/jcahnProgramming/training-path

### 5.3 Required sections (copy exactly, at the end of the description)

Email
The contact email address for this plugin is jamie@meownetstudios.com.

EULA
By submitting a Plugin (as defined in Schedule 4 of the EULA), you acknowledge that you agree to the terms of the Jagex End User License Agreement (EULA) found at https://legal.jagex.com/docs/terms/eula (and all terms incorporated into it be reference) and acknowledge that such terms are legally binding on you. If you do not agree to the terms of the EULA, you must not submit a Plugin or use the Plugin functionality anyway. In such circumstances, Jagex does not licence the software to you, or grant you any of the relevant rights relating to the submission of Plugins set out in the EULA and you will not be permitted to access or use the Plugin functionality in any way whatsoever.

Permissions
This plugin does not request any permissions.

Data Protection (case 1)
This plugin uses the following information: your skill levels and XP, the items in your backpack and worn equipment, quest completion, your character's position (only while "Show directions" is on), your character's display name (to keep tick-offs separate per character), the game clock, the in-game events calendar, and a few in-game progress values (Menaphos reputation, the Arc currencies).
This information is not transmitted outside of the plugin under any circumstances.
Game information is not stored by the plugin between sessions, except for the player's own choices: window position and size, settings, favourites, the training queue, and Distractions & Diversions / regional tick-offs (stored per character name). These are stored locally in the plugin's own storage.

For Jagex: I request that the supplied email is hidden from public view.

## 6. Media (step 2)

Gallery images: .png or .jpg, up to 10 per upload. Suggested order, with a one-line caption each:
1. Home: every skill with your level at a glance.
2. Skill guide: methods by level range, your range highlighted.
3. Gear tab: what to use at your level and how to get it.
4. Method page: requirements and items checked for you, plus directions.
5. Activity helper: setup checklist and step-by-step instructions.
6. Now tab: resets, today's events and dailies.
7. Regions: Menaphos reputation and regional dailies.
8. Queue: plan your training for a set time or until a level.
9. Settings: layout and accessibility options.
10. Accessibility: large text with colour-blind friendly colours.

## 7. After submitting

- Jagex starts moderation when a moderator is free. Once they say the plugin is under review,
  don't change the mod.io page or files until review ends.
- The report will be Pass, Minor corrections, Major corrections or Fail; changes requested will be
  made in the code and resubmitted as new files on the same mod.io plugin (e.g. 1.0.1).
