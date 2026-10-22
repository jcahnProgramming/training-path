# Training Path

**Training guides, gear and step-by-step help for every RuneScape skill, tailored to your levels.**

Training Path is a RuneScape 3 plugin. It shows you the best ways to train each skill from level 1
to max, checks whether you're ready (levels, quests, items), tells you how to get there, and keeps
track of what you've done today. It never plays the game for you: it only shows information.

## Getting started

1. Install **Training Path** from the plugin hub. It also needs **PrettyUI** (installed automatically
   as a dependency).
2. The Training Path window opens on its own. Drag its title bar to move it, and drag the small
   gold square in the bottom-right corner to resize it.
3. Closed the window? Click the **Training Path icon** on the plugin ribbon and choose
   **Open Training Path**.

## What's in the window

The buttons along the top take you anywhere:

| Button | What it does |
|---|---|
| **Home** | All skills with your levels. Click a skill to open its guide. Hover a skill to see the best method for your level. |
| **Now** | Today's game time, reset countdowns, events from the in-game calendar, skills worth training now, Distractions & Diversions, and regional content. |
| **Queue** | Your training plan: methods queued for a set time or until a level. |
| **Levels** | Every skill's level and XP. |
| **Star** | Your favourite training methods. |
| **Cog** | Settings, including text size, colours and other accessibility options. |

On inner pages, **< Back** returns to the previous page and the line next to it shows where you are.

### Skill guides
Each skill has two tabs:
- **Training**: methods grouped by level range. Your range is open and highlighted. Each method
  shows how intense it is (**HIGH** = click-intensive, **MED** = a click now and then,
  **AFK** = idle), XP per hour where known, and **Ready** or what you're missing.
- **Gear**: the gear to use at each level, whether you have it, whether it's tradeable, and how to get it.

### Method pages
Click a method to see everything about it:
- **Requirements**: levels, quests and the region you need, each **green** when met and **red** when not.
- **Wear or carry**: items checked against your backpack and worn equipment. Items that can sit on
  your tool belt show grey, because plugins can't see the tool belt or bank.
- **How to get there**: directions, plus **Show directions** for a live "340 tiles north-east" line.
- **Recommended inventory / preset**: what to wear and carry. Save it as a preset at a bank.
- **Add to queue**: train it for 15 minutes to 2 hours, or until a level.
- **Activity helper**: step-by-step setup, steps, tips, live XP/hr tracking and what to do next.
- **Wiki page**: the wiki link, ready to copy into your browser.

### Now tab
- **Resets**: countdowns to the daily, weekly (Wednesday) and monthly resets (all UTC).
- **On the calendar today**: events running today, from the game's own calendar.
- **Distractions & Diversions** and **Regions**: grouped by daily, weekly, monthly and timers.
  Press **Done** after doing one; it clears itself at the next reset.

### Queue
Add methods from their pages, reorder them, and pause. Timers only count while you're logged in;
level goals finish when you reach the level. When one finishes, the next starts and a banner tells you.

## Settings and accessibility
Open the **cog**:
- Skills screen: large icons or compact (like the in-game Skills tab).
- "Best method means": high intensity, medium or AFK.
- Text size (small / normal / large), colours (standard / high contrast / colour-blind friendly),
  text shadow on/off, and status labels as symbols or words.

## Good to know
- The plugin only reads information you can already see in the game. It never sends input or
  actions to the game and doesn't tell you where to stand in combat.
- Plugins can't open web pages or see your bank, tool belt or metal bank.
- Guide data comes from the RuneScape Wiki and can lag behind game updates. If something looks
  wrong, please tell us (contact below).

## Credits
Guide, gear, activity, region and Distractions & Diversions data is based on the
[RuneScape Wiki](https://runescape.wiki/), licensed under
[CC BY-NC-SA 3.0](https://creativecommons.org/licenses/by-nc-sa/3.0/). Those data files
(`src/guides`, `src/gear`, `src/activities`, `src/regions_*.lua`, `src/travel_*.lua`, `src/dnd.lua`,
`src/regional.lua`) are shared under the same licence. The window uses
[PrettyUI](https://mod.io/g/runescape) and the game's own icons.

## Author and contact
Training Path is made by **PathPlays**. Contact: jamie@meownetstudios.com
