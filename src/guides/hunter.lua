--[[
    Hunter training guide (data only, no code).
    Source: RuneScape Wiki, "Pay-to-play Hunter training"
    https://runescape.wiki/w/Pay-to-play_Hunter_training
    Licensed CC BY-NC-SA 3.0. Numbers copied from the wiki on 2026-10-22;
    values the wiki doesn't state are left out. The wiki notes early-level
    rates may be out of date after the 2026 early-game rebalance, so
    XP/hr is left out for snared birds and whirligigs (the rebalance
    changed their XP per catch and cut whirligig rates by about half).
    Format: docs/guide-format.md
]]

return {
    skill = "Hunter",
    maxLevel = 110,
    wiki = "https://runescape.wiki/w/Pay-to-play_Hunter_training",
    source = "Data: RuneScape Wiki, Pay-to-play Hunter training (CC BY-NC-SA 3.0)",

    bands = {
        {
            from = 1, to = 11,
            methods = {
                {
                    id = "hunter_crimson_swift",
                    name = "Crimson swifts",
                    intensity = "medium",
                    location = "Taverley, north of the Druids",
                    notes = "22 XP per catch. The Varrock Museum natural history quiz takes you from 1 to 9.",
                    wiki = "https://runescape.wiki/w/Crimson_swift",
                    items = {
                        { label = "Bird snare", names = { "Bird snare" } },
                    },
                },
            },
        },
        {
            from = 11, to = 19,
            methods = {
                {
                    id = "hunter_cerulean_twitch",
                    name = "Cerulean twitches",
                    intensity = "medium",
                    location = "Rellekka Hunter area (fairy ring DKS)",
                    notes = "61 XP per catch.",
                    wiki = "https://runescape.wiki/w/Cerulean_twitch",
                    items = {
                        { label = "Bird snare", names = { "Bird snare" } },
                    },
                },
                {
                    id = "hunter_plain_whirligig",
                    name = "Plain whirligigs",
                    intensity = "high",
                    location = "Het's Oasis",
                    notes = "From level 16. 20 XP per catch.",
                    wiki = "https://runescape.wiki/w/Het%27s_Oasis",
                    requirements = {
                        levels = { { skill = "Hunter", level = 16 } },
                    },
                },
            },
        },
        {
            from = 19, to = 30,
            methods = {
                {
                    id = "hunter_tropical_wagtail",
                    name = "Tropical wagtails",
                    intensity = "medium",
                    location = "Feldip Hunter area, north of the Monastery of Ascension",
                    notes = "100 XP per catch. 2 snares at 19, 3 at 30. Jungle camo top and legs raise success.",
                    wiki = "https://runescape.wiki/w/Tropical_wagtail",
                    items = {
                        { label = "Bird snares", names = { "Bird snare" }, count = 2 },
                    },
                },
            },
        },
        {
            from = 30, to = 50,
            methods = {
                {
                    id = "hunter_gliding_whirligig",
                    name = "Gliding whirligigs",
                    intensity = "high",
                    location = "Het's Oasis",
                    money = "Uses 100-200 roses per hour",
                    notes = "100 XP per catch. Put roses in flower baskets (5 teak planks, 10 steel nails).",
                    wiki = "https://runescape.wiki/w/Gliding_whirligig",
                },
                {
                    id = "hunter_tropical_wagtail_30",
                    name = "Tropical wagtails",
                    intensity = "medium",
                    location = "Feldip Hunter area",
                    notes = "100 XP per catch, three snares from 30.",
                    wiki = "https://runescape.wiki/w/Tropical_wagtail",
                    items = {
                        { label = "Bird snares", names = { "Bird snare" }, count = 3 },
                    },
                },
            },
        },
        {
            from = 50, to = 59,
            methods = {
                {
                    id = "hunter_swift_whirligig",
                    name = "Swift whirligigs",
                    intensity = "high",
                    location = "Het's Oasis",
                    money = "Uses 100-200 irises per hour",
                    notes = "180 XP per catch. Uses irises in flower baskets. Stacked catches give 25% XP.",
                    wiki = "https://runescape.wiki/w/Swift_whirligig",
                },
                {
                    id = "hunter_viridian_skillchompa",
                    name = "Viridian skillchompas",
                    intensity = "medium",
                    xpPerHour = 50000,
                    notes = "From level 53. 50k to 72k XP/hr with 3 box traps, 60k to 82k with 4 from 60.",
                    wiki = "https://runescape.wiki/w/Viridian_skillchompa",
                    requirements = {
                        levels = { { skill = "Hunter", level = 53 } },
                    },
                },
            },
        },
        {
            from = 59, to = 63,
            methods = {
                {
                    id = "hunter_red_salamander",
                    name = "Red salamanders",
                    intensity = "medium",
                    xpPerHour = 72000,
                    location = "Ourania Hunter area",
                    notes = "224 XP per catch. 3 net traps at 59, 4 at 60. Ourania Cave bank costs 20 runes.",
                    wiki = "https://runescape.wiki/w/Red_salamander",
                    items = {
                        { label = "Small fishing nets", names = { "Small fishing net" }, count = 3 },
                        { label = "Rope", names = { "Rope" }, count = 3 },
                    },
                },
                {
                    id = "hunter_swift_whirligig_59",
                    name = "Swift whirligigs",
                    intensity = "high",
                    location = "Het's Oasis",
                    wiki = "https://runescape.wiki/w/Swift_whirligig",
                },
            },
        },
        {
            from = 63, to = 70,
            methods = {
                {
                    id = "hunter_black_salamander",
                    name = "Black salamanders",
                    intensity = "medium",
                    xpPerHour = 110000,
                    location = "Boneyard Hunter area, Wilderness",
                    notes = "From level 67. 110k to 186k XP/hr. Wilderness: other players can attack you.",
                    wiki = "https://runescape.wiki/w/Black_salamander",
                    requirements = {
                        levels = { { skill = "Hunter", level = 67 } },
                    },
                    items = {
                        { label = "Small fishing nets", names = { "Small fishing net" }, count = 4 },
                        { label = "Rope", names = { "Rope" }, count = 4 },
                    },
                },
                {
                    id = "hunter_carnivorous_chinchompa",
                    name = "Carnivorous chinchompas",
                    intensity = "medium",
                    xpPerHour = 82000,
                    location = "Feldip Hunter area, north of the Oo'glog lodestone",
                    wiki = "https://runescape.wiki/w/Carnivorous_chinchompa",
                    items = {
                        { label = "Box traps", names = { "Box trap" } },
                    },
                },
            },
        },
        {
            from = 70, to = 80,
            methods = {
                {
                    id = "hunter_hasty_whirligig",
                    name = "Hasty whirligigs",
                    intensity = "high",
                    location = "Het's Oasis",
                    money = "Uses 100-200 hydrangeas per hour",
                    notes = "300 XP per catch. Dundee's upgrades (+5% XP) and Het's statue (+10%) add more.",
                    wiki = "https://runescape.wiki/w/Hasty_whirligig",
                },
                {
                    id = "hunter_bgh_anachronia_75",
                    name = "Big Game Hunter (Anachronia)",
                    intensity = "medium",
                    xpPerHour = 90000,
                    location = "Anachronia",
                    money = "Very profitable",
                    notes = "90k to 400k XP/hr. Raw sharks as bait for tier 1. About 2 to 5 minutes a kill.",
                    wiki = "https://runescape.wiki/w/Big_Game_Hunter",
                    requirements = {
                        levels = {
                            { skill = "Hunter", level = 75 },
                            { skill = "Slayer", level = 55 },
                        },
                    },
                },
                {
                    id = "hunter_black_salamander_70",
                    name = "Black salamanders",
                    intensity = "medium",
                    xpPerHour = 110000,
                    location = "Boneyard Hunter area, Wilderness",
                    notes = "Wilderness: other players can attack you.",
                    wiki = "https://runescape.wiki/w/Black_salamander",
                    items = {
                        { label = "Small fishing nets", names = { "Small fishing net" }, count = 4 },
                        { label = "Rope", names = { "Rope" }, count = 4 },
                    },
                },
            },
        },
        {
            from = 80, to = 88,
            methods = {
                {
                    id = "hunter_bgh_anachronia_80",
                    name = "Big Game Hunter (Anachronia)",
                    intensity = "medium",
                    xpPerHour = 90000,
                    location = "Anachronia",
                    money = "Very profitable",
                    notes = "90k to 400k XP/hr. Tier 2 dinosaurs need Hunter 80 to 90.",
                    wiki = "https://runescape.wiki/w/Big_Game_Hunter",
                    requirements = {
                        levels = { { skill = "Slayer", level = 55 } },
                    },
                },
                {
                    id = "hunter_hasty_whirligig_80",
                    name = "Hasty whirligigs",
                    intensity = "high",
                    location = "Het's Oasis",
                    wiki = "https://runescape.wiki/w/Hasty_whirligig",
                },
                {
                    id = "hunter_butterflies",
                    name = "Butterflies (barehanded)",
                    intensity = "low",
                    xpPerHour = 72000,
                    notes = "72k to 120k XP/hr. Needs Agility 75 to 90 by type.",
                    crossovers = "Also 12k to 32k Agility XP/hr",
                    wiki = "https://runescape.wiki/w/Pay-to-play_Hunter_training",
                },
            },
        },
        {
            from = 88, to = 96,
            methods = {
                {
                    id = "hunter_fungal_spores",
                    name = "Fungal spores (decaying guards)",
                    intensity = "high",
                    xpPerHour = 500000,
                    location = "Croesus Front",
                    notes = "Enriched spores from 92. Needs 1,200+ porter charges an hour.",
                    wiki = "https://runescape.wiki/w/Pay-to-play_Hunter_training",
                },
                {
                    id = "hunter_charming_moths",
                    name = "Charming moths (barehanded)",
                    intensity = "medium",
                    xpPerHour = 180000,
                    notes = "180k to 240k XP/hr with no items. About 360 charms/hr at 99.",
                    crossovers = "Also 34k to 45k Agility XP/hr",
                    wiki = "https://runescape.wiki/w/Charming_moth",
                    requirements = {
                        levels = { { skill = "Agility", level = 83 } },
                    },
                },
                {
                    id = "hunter_speedy_whirligig",
                    name = "Speedy whirligigs",
                    intensity = "high",
                    location = "Het's Oasis",
                    notes = "From level 90. 500 XP per catch. Hollyhocks in flower baskets. Very click-intensive.",
                    wiki = "https://runescape.wiki/w/Speedy_whirligig",
                    requirements = {
                        levels = { { skill = "Hunter", level = 90 } },
                    },
                },
                {
                    id = "hunter_grenwall",
                    name = "Grenwalls with Crystallise",
                    intensity = "medium",
                    xpPerHour = 70000,
                    location = "Anachronia",
                    notes = "70k to 180k XP/hr base. Crystallise on traps: +10% XP, +20% with Light Form.",
                    wiki = "https://runescape.wiki/w/Grenwall",
                    requirements = {
                        levels = {
                            { skill = "Magic", level = 88 },
                            { skill = "Prayer", level = 80 },
                        },
                        quests = { "Regicide" },
                        other = { "Medium Tirannwn achievements" },
                    },
                    items = {
                        { label = "Box traps", names = { "Box trap" } },
                    },
                },
            },
        },
        {
            from = 96, to = 111,
            methods = {
                {
                    id = "hunter_bgh_havenhythe",
                    name = "Big Game Hunter (Havenhythe)",
                    intensity = "medium",
                    xpPerHour = 420000,
                    location = "Havenhythe",
                    notes = "420k XP/hr at 96 (giant chinchompas), up to 2.46M at 110.",
                    wiki = "https://runescape.wiki/w/Pay-to-play_Hunter_training",
                    requirements = {
                        levels = { { skill = "Slayer", level = 77 } },
                    },
                },
                {
                    id = "hunter_ornate_tortles",
                    name = "Ornate tortles",
                    intensity = "medium",
                    xpPerHour = 280000,
                    notes = "280k to 420k XP/hr, 500k+ with Contracts.",
                    wiki = "https://runescape.wiki/w/Ornate_tortle",
                },
                {
                    id = "hunter_fungal_spores_96",
                    name = "Fungal spores (decaying guards)",
                    intensity = "high",
                    xpPerHour = 575000,
                    location = "Croesus Front",
                    notes = "Over 575k XP/hr at 99. Needs 1,200+ porter charges an hour.",
                    wiki = "https://runescape.wiki/w/Pay-to-play_Hunter_training",
                },
                {
                    id = "hunter_crystal_skillchompa",
                    name = "Crystal skillchompas",
                    intensity = "high",
                    xpPerHour = 250000,
                    money = "Moderate profit",
                    notes = "From 97. 410 XP per catch, 250k to 300k XP/hr.",
                    wiki = "https://runescape.wiki/w/Crystal_skillchompa",
                    requirements = {
                        levels = { { skill = "Hunter", level = 97 } },
                    },
                    items = {
                        { label = "Protean traps", names = { "Protean trap" } },
                    },
                },
            },
        },
    },

    boosts = {
        "Hunter's outfit: up to +6% XP",
        "Brawling gloves (Hunter): +50 to 75% XP",
        "Hunter urns: +20% XP (exquisite +25%)",
        "Crystallise: +10% XP, +20% with Light Form",
        "Enhanced yaktwee stick: +2% XP",
        "Ring of metamorphosis: +6% XP on butterflies",
        "Zamorak's favour: +10% XP from jadinkos",
    },
}
