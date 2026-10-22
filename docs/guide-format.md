# Guide data format

Every skill guide is one Lua file: `src/guides/<skill>.lua` (lowercase, e.g. `constitution.lua`).
It contains **data only** (no functions, no API calls) and returns one table.

## Top level

```lua
return {
    skill  = "Mining",        -- exactly as in src/skills.lua (e.g. "Constitution", "Runecrafting")
    maxLevel = 110,           -- the skill's real max level today (99, 110 or 120), per the wiki
    wiki   = "https://runescape.wiki/w/Pay-to-play_Mining_training",   -- main training page
    source = "Data: RuneScape Wiki, Pay-to-play Mining training (CC BY-NC-SA 3.0)",
    bands  = { ... },         -- see below; lowest first; together they cover 1 .. maxLevel
    boosts = { "Short line about a boost", ... },   -- optional
}
```

## Bands

```lua
{ from = 1, to = 15, methods = { ... } }    -- applies when from <= level < to
```
- Bands must not overlap and must not leave gaps: the next band's `from` equals this band's `to`.
- The last band's `to` is `maxLevel + 1`.
- Typical guides have 5 to 10 bands. Each band has 1 to 4 methods, best first.

## Methods

```lua
{
    id        = "mining_copper_tin",    -- unique across ALL guides: "<skill>_<short_slug>", lowercase, underscores
    name      = "Copper and tin ore",   -- short title
    intensity = "low",                  -- "high" click-intensive, "medium" a click every so often, "low" AFK
    xpPerHour = 9000,                   -- number from the wiki, or omit if the wiki gives none
    location  = "Lumbridge Swamp mine", -- optional
    money     = "Profitable",           -- optional short text: profit / cost / "Free"
    notes     = "One or two short sentences.",   -- optional
    crossovers = "Also trains Smithing if you smelt the ore",  -- optional
    wiki      = "https://runescape.wiki/w/Copper_ore",   -- page for THIS method (or the training page section)
    requirements = {                    -- optional; each part optional
        levels = { { skill = "Mining", level = 1 } },     -- skill names as in src/skills.lua
        quests = { "The Knight's Sword" },                 -- exact in-game quest names
        other  = { "Members only" },                       -- anything the plugin can't check
    },
    items = {                           -- optional: things to wear or carry
        { label = "Pickaxe", contains = { "pickaxe" }, toolBelt = true },
        { label = "Hammer", names = { "Hammer" } },
        { label = "Fire runes", names = { "Fire rune" }, count = 100 },
    },
    activity  = "urn_smithing",         -- optional: id of a src/activities/ activity
}
```

### Items: how matching works
The plugin looks at the player's **backpack and worn equipment**, takes each item's in-game display name,
and turns the line green when a match is found (`count` defaults to 1).
- `names`: exact in-game display names (case-insensitive), any one of them matches.
- `contains`: lowercase text that must appear in the name, e.g. `"pickaxe"` matches "Rune pickaxe".
  Use this for "any X" (any pickaxe, any hatchet). Avoid words that match unrelated items.
- In-game names (checked against the game's item list): unfinished potions are "Guam potion (unfinished)",
  unstrung bows are "Magic longbow (unstrung)"; bolts keep "(unf)", e.g. "Rune bolts (unf)".
- `toolBelt = true`: the item can be kept on the tool belt (hatchets, pickaxes, hammers...). The plugin
  can't see the tool belt, so if it's not carried the line shows grey "(or on your tool belt)", not red.
- List only items the player must actually wear or carry. Bank/metal bank/tool belt contents can't be
  checked, so mention those in `notes` instead.

## Rules
- Only use numbers and facts from the RuneScape Wiki. If the wiki doesn't give a value, leave the field out.
  Never guess XP rates.
- Short text: one line for names, one or two sentences for notes. The window is narrow.
- Plain ASCII only (no bullets, en dashes, arrows, stars): the game font may not have them.
- Pay-to-play (members) training pages are the main source; free-to-play methods are fine where the
  wiki recommends them.
- Credit the wiki in `source`. Data is CC BY-NC-SA 3.0.
- Never tell the player to automate anything.
