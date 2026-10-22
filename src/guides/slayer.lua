--[[
    Slayer training guide (data only, no code).

    Source: RuneScape Wiki, "Pay-to-play Slayer training"
    https://runescape.wiki/w/Pay-to-play_Slayer_training
    Licensed CC BY-NC-SA 3.0. Numbers copied from that page as of
    2026-10-22. Slayer masters unlock by combat level, which the plugin
    can't check, so those requirements are listed under `other`.
    XP rates are the wiki's maximal on-task rates per assignment.
]]

return {
    skill = "Slayer",
    maxLevel = 120,
    wiki = "https://runescape.wiki/w/Pay-to-play_Slayer_training",
    source = "Data: RuneScape Wiki, Pay-to-play Slayer training (CC BY-NC-SA 3.0)",

    bands = {
        {
            from = 1, to = 35,
            methods = {
                {
                    id = "slayer_jacquelyn_vannaka",
                    name = "Tasks from Jacquelyn or Vannaka",
                    intensity = "medium",
                    location = "Jacquelyn in Lumbridge, Vannaka in Edgeville",
                    notes = "Recommended at low levels. Vannaka needs 30 combat and gives 2 points per task.",
                    wiki = "https://runescape.wiki/w/Vannaka",
                    requirements = {
                        other = { "Vannaka: 30 combat" },
                    },
                },
                {
                    id = "slayer_raptor_low",
                    name = "Tasks from The Raptor",
                    intensity = "medium",
                    location = "Fort Forinthry",
                    notes = "Points scale with Slayer level, so they are poor at very low levels.",
                    wiki = "https://runescape.wiki/w/The_Raptor",
                    requirements = {
                        quests = { "Unwelcome Guests" },
                        other = { "35 combat" },
                    },
                },
                {
                    id = "slayer_animal_magnetism",
                    name = "Animal Magnetism (quest)",
                    intensity = "high",
                    notes = "Gives 1,000 Slayer XP.",
                    wiki = "https://runescape.wiki/w/Animal_Magnetism",
                    requirements = {
                        levels = {
                            { skill = "Slayer", level = 18 },
                            { skill = "Crafting", level = 19 },
                            { skill = "Ranged", level = 30 },
                            { skill = "Thieving", level = 15 },
                            { skill = "Woodcutting", level = 35 },
                        },
                    },
                },
            },
        },
        {
            from = 35, to = 50,
            methods = {
                {
                    id = "slayer_sumona",
                    name = "Tasks from Sumona",
                    intensity = "medium",
                    location = "Pollnivneach",
                    notes = "12 points per task. Smoking Kills is needed for full points from any master.",
                    wiki = "https://runescape.wiki/w/Sumona",
                    requirements = {
                        levels = { { skill = "Slayer", level = 35 } },
                        quests = { "Smoking Kills" },
                        other = { "90 combat" },
                    },
                    items = {
                        { label = "Slayer helmet", contains = { "slayer helmet" } },
                    },
                },
                {
                    id = "slayer_raptor_mid",
                    name = "Tasks from The Raptor",
                    intensity = "medium",
                    location = "Fort Forinthry",
                    notes = "The wiki suggests using The Raptor exclusively from about 90 combat until Kuradal.",
                    wiki = "https://runescape.wiki/w/The_Raptor",
                    requirements = {
                        quests = { "Unwelcome Guests" },
                        other = { "35 combat" },
                    },
                },
            },
        },
        {
            from = 50, to = 75,
            methods = {
                {
                    id = "slayer_duradel",
                    name = "Tasks from Duradel or Lapalok",
                    intensity = "medium",
                    location = "Shilo Village",
                    notes = "15 points per task.",
                    wiki = "https://runescape.wiki/w/Duradel",
                    requirements = {
                        levels = { { skill = "Slayer", level = 50 } },
                        quests = { "Shilo Village" },
                        other = { "100 combat" },
                    },
                    items = {
                        { label = "Slayer helmet", contains = { "slayer helmet" } },
                    },
                },
                {
                    id = "slayer_raptor_high",
                    name = "Tasks from The Raptor",
                    intensity = "medium",
                    location = "Fort Forinthry",
                    notes = "Points scale with level. Good until you can use Kuradal.",
                    wiki = "https://runescape.wiki/w/The_Raptor",
                    requirements = {
                        quests = { "Unwelcome Guests" },
                    },
                },
                {
                    id = "slayer_vyrewatch",
                    name = "Vyrewatch or Cres's creations tasks",
                    intensity = "medium",
                    xpPerHour = 280000,
                    notes = "Both marked Do by the wiki at Slayer 67. Cres's creations about 320k XP/hr.",
                    wiki = "https://runescape.wiki/w/Vyrewatch",
                    requirements = {
                        levels = { { skill = "Slayer", level = 67 } },
                    },
                },
            },
        },
        {
            from = 75, to = 85,
            methods = {
                {
                    id = "slayer_kuradal",
                    name = "Tasks from Kuradal",
                    intensity = "medium",
                    location = "Kuradal's Dungeon, Ancient Cavern",
                    notes = "18 points per task. Her assignments are likely to be doable in her dungeon.",
                    wiki = "https://runescape.wiki/w/Kuradal",
                    requirements = {
                        levels = { { skill = "Slayer", level = 75 } },
                        other = { "110 combat", "Barbarian Firemaking" },
                    },
                    items = {
                        { label = "Slayer helmet", contains = { "slayer helmet" } },
                        { label = "Ferocious ring (optional)", contains = { "ferocious ring" } },
                    },
                },
                {
                    id = "slayer_nightmare_creatures",
                    name = "Nightmare creatures tasks",
                    intensity = "medium",
                    xpPerHour = 650000,
                    notes = "Extremely high XP per hour when assigned.",
                    wiki = "https://runescape.wiki/w/Nightmare_creature",
                    requirements = {
                        levels = { { skill = "Slayer", level = 80 } },
                    },
                },
                {
                    id = "slayer_gargoyles",
                    name = "Gargoyle tasks",
                    intensity = "medium",
                    xpPerHour = 180000,
                    notes = "Very fast task. Needs a rock hammer, upgraded Darklight or quick kills unlocked.",
                    wiki = "https://runescape.wiki/w/Gargoyle",
                    requirements = {
                        levels = { { skill = "Slayer", level = 75 } },
                    },
                },
            },
        },
        {
            from = 85, to = 90,
            methods = {
                {
                    id = "slayer_morvran",
                    name = "Tasks from Morvran",
                    intensity = "medium",
                    location = "Prifddinas",
                    notes = "20 points per task.",
                    wiki = "https://runescape.wiki/w/Morvran",
                    requirements = {
                        levels = { { skill = "Slayer", level = 85 } },
                        quests = { "Plague's End" },
                        other = { "120 combat" },
                    },
                    items = {
                        { label = "Slayer helmet", contains = { "slayer helmet" } },
                    },
                },
                {
                    id = "slayer_abyssal_demons",
                    name = "Abyssal demon tasks",
                    intensity = "medium",
                    xpPerHour = 400000,
                    notes = "Extremely fast task. Abyssal lords give up to 1.8M XP/hr but are semi-AFK.",
                    wiki = "https://runescape.wiki/w/Abyssal_demon",
                    requirements = {
                        levels = { { skill = "Slayer", level = 85 } },
                    },
                },
            },
        },
        {
            from = 90, to = 95,
            methods = {
                {
                    id = "slayer_laniakea",
                    name = "Tasks from Laniakea",
                    intensity = "medium",
                    location = "Anachronia",
                    notes = "22 points per task.",
                    wiki = "https://runescape.wiki/w/Laniakea",
                    requirements = {
                        levels = { { skill = "Slayer", level = 90 } },
                        other = { "120 combat" },
                    },
                    items = {
                        { label = "Slayer helmet", contains = { "slayer helmet" } },
                    },
                },
                {
                    id = "slayer_dark_beasts",
                    name = "Dark beast tasks",
                    intensity = "medium",
                    xpPerHour = 340000,
                    notes = "Extremely fast and profitable. Aggression potions are discouraged here.",
                    wiki = "https://runescape.wiki/w/Dark_beast",
                    requirements = {
                        levels = { { skill = "Slayer", level = 90 } },
                    },
                },
            },
        },
        {
            from = 95, to = 105,
            methods = {
                {
                    id = "slayer_gemstone_dragons",
                    name = "Gemstone dragon tasks (hydrix)",
                    intensity = "low",
                    xpPerHour = 1400000,
                    location = "Gemstone cavern, or your Sunken Pyramid",
                    notes = "Ranged. Placing one in the Sunken Pyramid allows AFK training.",
                    wiki = "https://runescape.wiki/w/Gemstone_dragon",
                    requirements = {
                        levels = { { skill = "Slayer", level = 101 } },
                    },
                },
                {
                    id = "slayer_ripper_demons",
                    name = "Ripper demon tasks",
                    intensity = "medium",
                    xpPerHour = 700000,
                    notes = "700k XP/hr with Darklight; upgraded Darklight recommended.",
                    wiki = "https://runescape.wiki/w/Ripper_demon",
                    requirements = {
                        levels = { { skill = "Slayer", level = 96 } },
                    },
                    items = {
                        { label = "Darklight", contains = { "darklight" } },
                    },
                },
                {
                    id = "slayer_mandrith",
                    name = "Tasks from Mandrith",
                    intensity = "medium",
                    location = "Deep Wilderness",
                    notes = "22 points per task.",
                    wiki = "https://runescape.wiki/w/Mandrith",
                    requirements = {
                        levels = { { skill = "Slayer", level = 95 } },
                        other = { "120 combat" },
                    },
                    items = {
                        { label = "Slayer helmet", contains = { "slayer helmet" } },
                    },
                },
            },
        },
        {
            from = 105, to = 121,
            methods = {
                {
                    id = "slayer_gemstone_dragons_high",
                    name = "Gemstone dragon tasks (hydrix)",
                    intensity = "low",
                    xpPerHour = 1400000,
                    location = "Gemstone cavern, or your Sunken Pyramid",
                    notes = "Ranged. Placing one in the Sunken Pyramid allows AFK training.",
                    wiki = "https://runescape.wiki/w/Gemstone_dragon",
                    requirements = {
                        levels = { { skill = "Slayer", level = 101 } },
                    },
                },
                {
                    id = "slayer_akhs",
                    name = "Akh tasks",
                    intensity = "medium",
                    xpPerHour = 680000,
                    location = "Sophanem Slayer Dungeon",
                    notes = "Melee (magic for imperial guard akhs). Extremely high XP per hour.",
                    wiki = "https://runescape.wiki/w/Akh",
                    requirements = {
                        levels = { { skill = "Slayer", level = 105 } },
                    },
                },
                {
                    id = "slayer_laniakea_mandrith",
                    name = "Tasks from Laniakea or Mandrith",
                    intensity = "medium",
                    notes = "Highest points per task (22). Block slow assignments.",
                    wiki = "https://runescape.wiki/w/Slayer_master",
                    requirements = {
                        levels = { { skill = "Slayer", level = 90 } },
                        other = { "120 combat" },
                    },
                    items = {
                        { label = "Slayer helmet", contains = { "slayer helmet" } },
                    },
                },
            },
        },
    },

    boosts = {
        "Slayer helmet: most important item, big on-task damage and accuracy",
        "Every 10th and 50th task gives 5x and 15x the master's points",
        "Dragon slayer gloves: +15% Slayer XP on dragon tasks",
        "Morytania legs 4: +10% Slayer XP in the Slayer Tower on task",
        "Every 50 quest points allows one extra block or preference",
    },
}
