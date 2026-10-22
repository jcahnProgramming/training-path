# Activity data format

An **activity** is step-by-step help for actually doing one training method: set up, run it, finish.
One file per skill: `src/activities/<skill>.lua` (lowercase). Data only, plain ASCII, never the character "<".

```lua
return {
    skill = "Woodcutting",                 -- exactly as in src/skills.lua
    source = "Data: RuneScape Wiki (CC BY-NC-SA 3.0)",

    activities = {
        {
            id = "woodcutting_ivy_activity",   -- unique: "<skill>_<slug>_activity"
            method = "woodcutting_ivy",        -- the guide method this helps with (must exist in src/guides/<skill>.lua)
            title = "Chopping ivy",            -- short
            intro = "One or two sentences: what you'll do and why it's good.",

            -- Setup checklist. Each part optional. The plugin checks levels, quests and items
            -- (backpack + worn) and shows each line green/red; `other` lines are shown as "check yourself".
            checklist = {
                levels = { { skill = "Woodcutting", level = 68 } },
                quests = { "The Quest Name" },
                items  = {   -- same item format as guides (docs/guide-format.md): names/contains/count/toolBelt
                    { label = "Any hatchet", contains = { "hatchet" }, toolBelt = true },
                },
                other  = { "Empty backpack (ivy gives no logs)" },
            },

            -- How to do it, in order. 3 to 8 short steps.
            steps = {
                "Teleport to the Varrock lodestone and walk to the north wall of Varrock Palace.",
                "Click an ivy plant on the wall and keep chopping.",
            },

            tips = { "Short tips while doing it." },        -- optional, 1 to 5
            finish = { "What to do when done, or the next step / next unlock." },  -- optional, 1 to 4

            -- Optional: repeating limits, if the method is a daily/weekly/etc. activity.
            repeats = "daily",       -- "hourly" | "daily" | "weekly" | "monthly" | nil
            repeatNote = "Resets at 00:00 UTC.",            -- optional, from the wiki
        },
    },
}
```

## Rules
- Facts from the RuneScape Wiki only (RS3, runescape.wiki). Never guess.
- 3 to 6 activities per skill: the guide's most useful methods across the level range (a low, a mid,
  a high level one, and both an active and an AFK one where the guide has them).
- `method` must be a real method id from that skill's guide. Don't repeat the guide's location
  directions (the plugin already shows them); steps start from "you've arrived".
- Never tell the player to automate anything. No "where to stand" tile instructions for combat.
- Short text, plain ASCII (no fancy dashes, quotes, bullets, arrows). Never the character "<".
