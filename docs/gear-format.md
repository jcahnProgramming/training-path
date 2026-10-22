# Gear data format

One file per skill: `src/gear/<skill>.lua` (lowercase, e.g. `woodcutting.lua`). Data only, plain ASCII.
It adds two things to that skill's guide (`src/guides/<skill>.lua`, see docs/guide-format.md):
1. **Gear by level**: what to wear/use while training, and how to get it.
2. **Inventories**: a recommended inventory / preset for specific training methods.

```lua
return {
    skill = "Woodcutting",                 -- exactly as in src/skills.lua
    source = "Data: RuneScape Wiki, Woodcutting equipment (CC BY-NC-SA 3.0)",

    -- Gear by level. Bands work like guide bands: from <= level < to, lowest first,
    -- no gaps or overlaps, the last band ends at the skill's maxLevel + 1.
    bands = {
        {
            from = 1, to = 11,
            items = {
                {
                    slot = "Tool",                       -- see slot list below
                    label = "Bronze hatchet",            -- name shown to the player
                    names = { "Bronze hatchet" },        -- exact in-game names that count as owning it
                    -- or: contains = { "hatchet" }      -- lowercase text in the name (see guide-format.md)
                    toolBelt = true,                     -- optional: can live on the tool belt
                    levels = { { skill = "Woodcutting", level = 1 } },  -- optional: needed to wear/use
                    tradeable = true,                    -- true / false, from the wiki infobox
                    obtain = "Bob's Brilliant Axes in Lumbridge, or the Grand Exchange.",  -- 1-2 short sentences
                    notes = "Optional short note.",      -- optional
                    wiki = "https://runescape.wiki/w/Bronze_hatchet",
                },
            },
        },
    },

    -- Recommended inventory / preset for methods in the guide, keyed by method id.
    -- Only for methods where the wiki recommends a setup. Items use the same matching as above.
    inventories = {
        woodcutting_ivy = {
            notes = "Optional one-line tip, e.g. 'Leave the backpack empty so you never have to bank.'",
            wear = {
                { label = "Lumberjack outfit", contains = { "lumberjack" } },
            },
            carry = {
                { label = "Any hatchet", contains = { "hatchet" }, toolBelt = true },
                { label = "Juju woodcutting potions", contains = { "juju woodcutting" }, count = 1 },
            },
        },
    },
}
```

## Slots
`Weapon`, `Off-hand`, `Two-handed`, `Head`, `Body`, `Legs`, `Hands`, `Feet`, `Cape`, `Neck`, `Ring`,
`Ammo`, `Pocket`, `Aura`, `Outfit` (a whole set), `Tool`, `Familiar`, `Potion`, `Other`.

## Rules
- Facts from the RuneScape Wiki only (RS3, runescape.wiki). Never guess requirements or tradeability.
- 2 to 6 items per band; best/most useful first. Prefer gear a new player can realistically get, and
  note when an item is expensive or end-game.
- `obtain` must tell a new player how to actually get it: shop (and where), Grand Exchange, quest
  reward, skill to make it, minigame/reward shop, drop (from what), and roughly the cost when the wiki
  gives it.
- `tradeable` comes from the item's infobox ("Tradeable: Yes/No").
- Method ids in `inventories` must exist in `src/guides/<skill>.lua`.
- Short text, plain ASCII (no fancy dashes, quotes, bullets or arrows). Never use the character "<".
