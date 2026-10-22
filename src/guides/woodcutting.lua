--[[
    Woodcutting training guide (data only, no code).
    Source: RuneScape Wiki, "Pay-to-play Woodcutting training"
    https://runescape.wiki/w/Pay-to-play_Woodcutting_training
    Licensed CC BY-NC-SA 3.0. Format: docs/guide-format.md
]]

return {
    skill = "Woodcutting",
    maxLevel = 110,
    wiki = "https://runescape.wiki/w/Pay-to-play_Woodcutting_training",
    source = "Data: RuneScape Wiki, Pay-to-play Woodcutting training (CC BY-NC-SA 3.0)",

    bands = {
        {
            from = 1, to = 10,
            methods = {
                {
                    id = "woodcutting_regular_trees",
                    name = "Regular trees",
                    intensity = "medium",
                    xpPerHour = 14500,
                    location = "South-west of the Grand Exchange, Varrock",
                    notes = "Rate assumes a dwarven army axe. Trees are found almost everywhere.",
                    wiki = "https://runescape.wiki/w/Tree",
                    items = {
                        { label = "Any hatchet", contains = { "hatchet", "army axe" }, toolBelt = true },
                    },
                },
            },
        },
        {
            from = 10, to = 20,
            methods = {
                {
                    id = "woodcutting_oak",
                    name = "Oak trees",
                    intensity = "medium",
                    xpPerHour = 19000,
                    location = "East of Draynor Village bank",
                    wiki = "https://runescape.wiki/w/Oak_tree",
                    requirements = { levels = { { skill = "Woodcutting", level = 10 } } },
                    items = {
                        { label = "Any hatchet", contains = { "hatchet", "army axe" }, toolBelt = true },
                    },
                },
            },
        },
        {
            from = 20, to = 30,
            methods = {
                {
                    id = "woodcutting_willow",
                    name = "Willow trees",
                    intensity = "medium",
                    xpPerHour = 27000,
                    location = "South-west of Draynor Village bank",
                    wiki = "https://runescape.wiki/w/Willow_tree",
                    requirements = { levels = { { skill = "Woodcutting", level = 20 } } },
                    items = {
                        { label = "Any hatchet", contains = { "hatchet", "army axe" }, toolBelt = true },
                    },
                },
            },
        },
        {
            from = 30, to = 40,
            methods = {
                {
                    id = "woodcutting_teak",
                    name = "Teak trees",
                    intensity = "medium",
                    xpPerHour = 30000,
                    location = "Hardwood Grove, Tai Bwo Wannai",
                    notes = "30k XP/hr at 30, up to 41k at 40. Entry costs 100 trading sticks.",
                    wiki = "https://runescape.wiki/w/Teak_tree",
                    requirements = {
                        levels = { { skill = "Woodcutting", level = 30 } },
                        other = { "100 trading sticks for Hardwood Grove" },
                    },
                    items = {
                        { label = "Any hatchet", contains = { "hatchet", "army axe" }, toolBelt = true },
                    },
                },
                {
                    id = "woodcutting_creeping_ivy_low",
                    name = "Creeping ivy",
                    intensity = "low",
                    xpPerHour = 30000,
                    location = "Isaac's house, north of Wendlewick lodestone",
                    notes = "AFK. Gives no logs but can drop bird's nests. 30k to 75k XP/hr.",
                    wiki = "https://runescape.wiki/w/Creeping_ivy",
                    requirements = { levels = { { skill = "Woodcutting", level = 35 } } },
                    items = {
                        { label = "Any hatchet", contains = { "hatchet", "army axe" }, toolBelt = true },
                    },
                },
            },
        },
        {
            from = 40, to = 58,
            methods = {
                {
                    id = "woodcutting_maple",
                    name = "Maple trees",
                    intensity = "medium",
                    xpPerHour = 40000,
                    location = "Seers' Village, near the bank",
                    notes = "40k XP/hr at 40, up to 55k at 56.",
                    wiki = "https://runescape.wiki/w/Maple_tree",
                    requirements = { levels = { { skill = "Woodcutting", level = 40 } } },
                    items = {
                        { label = "Any hatchet", contains = { "hatchet", "army axe" }, toolBelt = true },
                    },
                },
                {
                    id = "woodcutting_arctic_pine",
                    name = "Arctic pine",
                    intensity = "medium",
                    xpPerHour = 60000,
                    location = "Neitiznot",
                    notes = "About 60k XP/hr. Without Neitiznot access, stay on maple until 58.",
                    wiki = "https://runescape.wiki/w/Arctic_pine",
                    requirements = {
                        levels = { { skill = "Woodcutting", level = 56 } },
                        other = { "Must start The Fremennik Isles" },
                    },
                    items = {
                        { label = "Any hatchet", contains = { "hatchet", "army axe" }, toolBelt = true },
                    },
                },
                {
                    id = "woodcutting_creeping_ivy",
                    name = "Creeping ivy",
                    intensity = "low",
                    xpPerHour = 30000,
                    location = "Isaac's house, north of Wendlewick lodestone",
                    notes = "AFK. Gives no logs. 30k to 75k XP/hr up to level 68.",
                    wiki = "https://runescape.wiki/w/Creeping_ivy",
                    requirements = { levels = { { skill = "Woodcutting", level = 35 } } },
                    items = {
                        { label = "Any hatchet", contains = { "hatchet", "army axe" }, toolBelt = true },
                    },
                },
            },
        },
        {
            from = 58, to = 60,
            methods = {
                {
                    id = "woodcutting_eucalyptus",
                    name = "Eucalyptus trees",
                    intensity = "medium",
                    xpPerHour = 62000,
                    location = "Around Oo'glog",
                    notes = "Up to 62k XP/hr.",
                    wiki = "https://runescape.wiki/w/Eucalyptus_tree",
                    requirements = { levels = { { skill = "Woodcutting", level = 58 } } },
                    items = {
                        { label = "Any hatchet", contains = { "hatchet", "army axe" }, toolBelt = true },
                    },
                },
            },
        },
        {
            from = 60, to = 68,
            methods = {
                {
                    id = "woodcutting_mahogany",
                    name = "Mahogany trees",
                    intensity = "medium",
                    xpPerHour = 63000,
                    location = "Southern Karamja, Ape Atoll or Mos Le'Harmless",
                    notes = "63k XP/hr at 60.",
                    wiki = "https://runescape.wiki/w/Mahogany_tree",
                    requirements = { levels = { { skill = "Woodcutting", level = 60 } } },
                    items = {
                        { label = "Any hatchet", contains = { "hatchet", "army axe" }, toolBelt = true },
                    },
                },
            },
        },
        {
            from = 68, to = 94,
            methods = {
                {
                    id = "woodcutting_mahogany_crystallise",
                    name = "Mahogany with Crystallise",
                    intensity = "high",
                    xpPerHour = 109000,
                    location = "Southern Karamja, Ape Atoll or Mos Le'Harmless",
                    notes = "Base 109k XP/hr at 99. Crystallise and Light Form give the best rates up to 99.",
                    wiki = "https://runescape.wiki/w/Crystallise",
                    requirements = {
                        levels = {
                            { skill = "Woodcutting", level = 80 },
                            { skill = "Magic", level = 88 },
                            { skill = "Prayer", level = 80 },
                        },
                        quests = { "The Light Within" },
                    },
                    items = {
                        { label = "Any hatchet", contains = { "hatchet", "army axe" }, toolBelt = true },
                    },
                },
                {
                    id = "woodcutting_choking_ivy",
                    name = "Choking ivy",
                    intensity = "low",
                    xpPerHour = 86000,
                    location = "Crwys district (Prifddinas), Varrock Palace or Falador",
                    notes = "AFK. 86k XP/hr at 68, 126k at 99. Voice of Seren gives +20% in Crwys.",
                    wiki = "https://runescape.wiki/w/Choking_ivy",
                    requirements = { levels = { { skill = "Woodcutting", level = 68 } } },
                    items = {
                        { label = "Any hatchet", contains = { "hatchet", "army axe" }, toolBelt = true },
                    },
                },
            },
        },
        {
            from = 94, to = 100,
            methods = {
                {
                    id = "woodcutting_crystal_tree",
                    name = "Crystal trees",
                    intensity = "medium",
                    xpPerHour = 130000,
                    notes = "Up to 130k XP/hr at 94, 133k at 99. Seven trees; the active one moves every 2 hours.",
                    wiki = "https://runescape.wiki/w/Crystal_tree",
                    requirements = { levels = { { skill = "Woodcutting", level = 94 } } },
                    items = {
                        { label = "Any hatchet", contains = { "hatchet", "army axe" }, toolBelt = true },
                    },
                },
                {
                    id = "woodcutting_choking_ivy_high",
                    name = "Choking ivy",
                    intensity = "low",
                    xpPerHour = 126000,
                    location = "Crwys district (Prifddinas)",
                    notes = "AFK alternative. 126k XP/hr at 99.",
                    wiki = "https://runescape.wiki/w/Choking_ivy",
                    requirements = { levels = { { skill = "Woodcutting", level = 68 } } },
                    items = {
                        { label = "Any hatchet", contains = { "hatchet", "army axe" }, toolBelt = true },
                    },
                },
            },
        },
        {
            from = 100, to = 111,
            methods = {
                {
                    id = "woodcutting_eternal_magic",
                    name = "Eternal magic trees",
                    intensity = "medium",
                    xpPerHour = 300000,
                    location = "Piscatoris, north of Eagle's Peak, or Dalia's Tree Nursery",
                    notes = "300k+ XP/hr with boosts, up to 375k. Chop the correct side for Lumberjack's Intuition.",
                    wiki = "https://runescape.wiki/w/Eternal_magic_tree",
                    requirements = {
                        levels = { { skill = "Woodcutting", level = 100 } },
                        other = { "Tree Nursery needs The Lute of Love and From Here to Eternity achievements" },
                    },
                    items = {
                        { label = "Any hatchet", contains = { "hatchet", "army axe" }, toolBelt = true },
                    },
                },
            },
        },
    },

    boosts = {
        "Lumberjack outfit: +5% XP for the full set",
        "Woodcutting urns: +20% XP",
        "Crystallise: +20% XP, +40% with Light Form",
        "Skillchompas: +10% XP",
        "Brawling gloves (Woodcutting): +50% XP",
        "Perfect juju woodcutting potion: 5% chance of two logs",
    },
}
