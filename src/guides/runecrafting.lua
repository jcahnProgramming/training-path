--[[
    Runecrafting training guide (data only, no code).

    Source: RuneScape Wiki, "Pay-to-play Runecrafting training"
    https://runescape.wiki/w/Pay-to-play_Runecrafting_training
    Licensed CC BY-NC-SA 3.0. Numbers copied from that page as of
    2026-10-22; anything the wiki didn't state has been left out.
    Where the wiki gives a range, xpPerHour is the low (base) end.
    Format: see docs/guide-format.md
]]

return {
    skill = "Runecrafting",
    maxLevel = 110,
    wiki = "https://runescape.wiki/w/Pay-to-play_Runecrafting_training",
    source = "Data: RuneScape Wiki, Pay-to-play Runecrafting training (CC BY-NC-SA 3.0)",

    bands = {
        {
            from = 1, to = 20,
            methods = {
                {
                    id = "runecrafting_necrotic_spirit",
                    name = "Necrotic runes (spirit runes)",
                    intensity = "high",
                    xpPerHour = 59000,
                    location = "Necromantic Rune Temple",
                    notes = "59k-87k XP/hr base. Passing bracelet gives unlimited nearby teleports.",
                    wiki = "https://runescape.wiki/w/Necromantic_Rune_Temple",
                    items = {
                        { label = "Impure essence", names = { "Impure essence" } },
                    },
                },
                {
                    id = "runecrafting_runespan_low",
                    name = "Runespan (low level)",
                    intensity = "medium",
                    xpPerHour = 16500,
                    location = "Runespan, portal in the Wizards' Tower",
                    money = "Free",
                    notes = "Island 1 at 1-9, island 16 at 9-33 (26k-28.5k XP/hr). Less intensive than the Abyss.",
                    wiki = "https://runescape.wiki/w/Runespan",
                },
                {
                    id = "runecrafting_abyss_low",
                    name = "Abyss (air to body runes)",
                    intensity = "high",
                    xpPerHour = 12000,
                    location = "The Abyss, via the Mage of Zamorak",
                    notes = "12k-25k XP/hr base. Dangerous PvP area: you can lose items on death.",
                    wiki = "https://runescape.wiki/w/The_Abyss",
                    requirements = {
                        other = { "Enter the Abyss miniquest" },
                    },
                    items = {
                        { label = "Pure essence", names = { "Pure essence" } },
                    },
                },
            },
        },
        {
            from = 20, to = 40,
            methods = {
                {
                    id = "runecrafting_necrotic_bone",
                    name = "Necrotic runes (bone runes)",
                    intensity = "high",
                    xpPerHour = 81000,
                    location = "Necromantic Rune Temple",
                    notes = "81k-118k XP/hr base at 20-25, 94k-138k at 25-40.",
                    wiki = "https://runescape.wiki/w/Necromantic_Rune_Temple",
                    items = {
                        { label = "Impure essence", names = { "Impure essence" } },
                    },
                },
                {
                    id = "runecrafting_abyss_cosmic",
                    name = "Abyss (cosmic runes)",
                    intensity = "high",
                    xpPerHour = 47775,
                    location = "The Abyss",
                    money = "Profitable",
                    notes = "Cosmic from 27, chaos from 35 (76.6k XP/hr). Dangerous PvP area.",
                    wiki = "https://runescape.wiki/w/The_Abyss",
                    requirements = {
                        levels = { { skill = "Runecrafting", level = 27 } },
                        quests = { "Lost City" },
                        other = { "Enter the Abyss miniquest" },
                    },
                    items = {
                        { label = "Pure essence", names = { "Pure essence" } },
                        { label = "Wilderness sword", contains = { "wilderness sword" } },
                    },
                },
                {
                    id = "runecrafting_runespan_mid",
                    name = "Runespan",
                    intensity = "medium",
                    location = "Runespan",
                    money = "Free",
                    notes = "Middle level from 33: islands 5 and 6, about 36.5k XP/hr.",
                    wiki = "https://runescape.wiki/w/Runespan",
                },
            },
        },
        {
            from = 40, to = 60,
            methods = {
                {
                    id = "runecrafting_necrotic_flesh",
                    name = "Necrotic runes (flesh runes)",
                    intensity = "high",
                    xpPerHour = 109000,
                    location = "Necromantic Rune Temple",
                    notes = "109k-160k XP/hr base at 40-50, 134k-197k at 50-60.",
                    wiki = "https://runescape.wiki/w/Necromantic_Rune_Temple",
                    items = {
                        { label = "Impure essence", names = { "Impure essence" } },
                    },
                },
                {
                    id = "runecrafting_abyss_astral_nature_law",
                    name = "Abyss (astral, nature, law runes)",
                    intensity = "high",
                    xpPerHour = 78408,
                    location = "The Abyss",
                    money = "Very profitable",
                    notes = "Astral 78k XP/hr, nature (44) 81k, law (54) 105k. Dangerous PvP area.",
                    wiki = "https://runescape.wiki/w/The_Abyss",
                    requirements = {
                        other = { "Enter the Abyss miniquest" },
                    },
                    items = {
                        { label = "Pure essence", names = { "Pure essence" } },
                        { label = "Wilderness sword", contains = { "wilderness sword" } },
                    },
                },
                {
                    id = "runecrafting_runespan_mid2",
                    name = "Runespan",
                    intensity = "medium",
                    location = "Runespan",
                    money = "Free",
                    notes = "Islands 16 and 18-23 at 50-66: 35.5k-59k XP/hr.",
                    wiki = "https://runescape.wiki/w/Runespan",
                },
            },
        },
        {
            from = 60, to = 77,
            methods = {
                {
                    id = "runecrafting_necrotic_miasma",
                    name = "Necrotic runes (miasma runes)",
                    intensity = "high",
                    xpPerHour = 154000,
                    location = "Necromantic Rune Temple",
                    notes = "154k-227k XP/hr base at 60-75.",
                    wiki = "https://runescape.wiki/w/Necromantic_Rune_Temple",
                    items = {
                        { label = "Impure essence", names = { "Impure essence" } },
                    },
                },
                {
                    id = "runecrafting_abyss_death",
                    name = "Abyss (death runes)",
                    intensity = "high",
                    xpPerHour = 125775,
                    location = "The Abyss",
                    money = "Profitable",
                    notes = "Death runes from 65. Dangerous PvP area.",
                    wiki = "https://runescape.wiki/w/The_Abyss",
                    requirements = {
                        levels = { { skill = "Runecrafting", level = 65 } },
                        quests = { "Mourning's End Part II" },
                        other = { "Enter the Abyss miniquest" },
                    },
                    items = {
                        { label = "Pure essence", names = { "Pure essence" } },
                        { label = "Wilderness sword", contains = { "wilderness sword" } },
                    },
                },
                {
                    id = "runecrafting_runespan_high",
                    name = "Runespan (high level)",
                    intensity = "medium",
                    xpPerHour = 63000,
                    location = "Runespan",
                    money = "Free",
                    notes = "From 66: islands 12-16.",
                    wiki = "https://runescape.wiki/w/Runespan",
                },
            },
        },
        {
            from = 77, to = 90,
            methods = {
                {
                    id = "runecrafting_necrotic_high",
                    name = "Necrotic runes (miasma runes)",
                    intensity = "high",
                    xpPerHour = 194000,
                    location = "Necromantic Rune Temple",
                    notes = "194k-285k XP/hr base at 75-90.",
                    wiki = "https://runescape.wiki/w/Necromantic_Rune_Temple",
                    items = {
                        { label = "Impure essence", names = { "Impure essence" } },
                    },
                },
                {
                    id = "runecrafting_abyss_blood",
                    name = "Abyss (blood runes)",
                    intensity = "high",
                    xpPerHour = 183566,
                    location = "The Abyss",
                    money = "Profitable",
                    notes = "Dangerous PvP area.",
                    wiki = "https://runescape.wiki/w/The_Abyss",
                    requirements = {
                        levels = { { skill = "Runecrafting", level = 77 } },
                        quests = { "Legacy of Seergaze" },
                        other = { "Enter the Abyss miniquest" },
                    },
                    items = {
                        { label = "Pure essence", names = { "Pure essence" } },
                        { label = "Wilderness sword", contains = { "wilderness sword" } },
                    },
                },
                {
                    id = "runecrafting_runespan_77",
                    name = "Runespan (high level)",
                    intensity = "medium",
                    location = "Runespan",
                    money = "Free",
                    notes = "Islands 20-22 from 77. Blood pool nodes about 120k XP/hr equivalent.",
                    wiki = "https://runescape.wiki/w/Runespan",
                },
            },
        },
        {
            from = 90, to = 100,
            methods = {
                {
                    id = "runecrafting_soul_altar",
                    name = "Soul altar",
                    intensity = "low",
                    xpPerHour = 364000,
                    location = "Soul altar, fairy ring CKQ",
                    notes = "364k-407k XP/hr base. Charge the altar with pure essence (4 per charge). Very AFK.",
                    wiki = "https://runescape.wiki/w/Soul_altar",
                    requirements = {
                        levels = { { skill = "Runecrafting", level = 90 } },
                        quests = { "'Phite Club" },
                    },
                    items = {
                        { label = "Pure essence", names = { "Pure essence" } },
                    },
                },
                {
                    id = "runecrafting_abyss_soul",
                    name = "Abyss (soul runes)",
                    intensity = "high",
                    xpPerHour = 407312,
                    location = "The Abyss",
                    money = "Profitable",
                    notes = "Dangerous PvP area.",
                    wiki = "https://runescape.wiki/w/The_Abyss",
                    requirements = {
                        levels = { { skill = "Runecrafting", level = 90 } },
                        quests = { "'Phite Club" },
                        other = { "Enter the Abyss miniquest" },
                    },
                    items = {
                        { label = "Pure essence", names = { "Pure essence" } },
                        { label = "Wilderness sword", contains = { "wilderness sword" } },
                    },
                },
                {
                    id = "runecrafting_necrotic_90",
                    name = "Necrotic runes",
                    intensity = "high",
                    xpPerHour = 255000,
                    location = "Necromantic Rune Temple",
                    notes = "255k-374k XP/hr base at 90-105.",
                    wiki = "https://runescape.wiki/w/Necromantic_Rune_Temple",
                    items = {
                        { label = "Impure essence", names = { "Impure essence" } },
                    },
                },
            },
        },
        {
            from = 100, to = 105,
            methods = {
                {
                    id = "runecrafting_soul_altar_100",
                    name = "Soul altar",
                    intensity = "low",
                    xpPerHour = 390000,
                    location = "Soul altar, fairy ring CKQ",
                    notes = "390k-436k XP/hr base at 95-105. Very AFK.",
                    wiki = "https://runescape.wiki/w/Soul_altar",
                    requirements = {
                        quests = { "'Phite Club" },
                    },
                    items = {
                        { label = "Pure essence", names = { "Pure essence" } },
                    },
                },
                {
                    id = "runecrafting_abyss_time",
                    name = "Abyss (time runes)",
                    intensity = "high",
                    xpPerHour = 321896,
                    location = "The Abyss",
                    money = "Very profitable",
                    notes = "Dangerous PvP area.",
                    wiki = "https://runescape.wiki/w/The_Abyss",
                    requirements = {
                        levels = { { skill = "Runecrafting", level = 100 } },
                        other = { "Enter the Abyss miniquest", "Enchanted key from Making History or Meeting History" },
                    },
                    items = {
                        { label = "Pure essence", names = { "Pure essence" } },
                        { label = "Wilderness sword", contains = { "wilderness sword" } },
                    },
                },
            },
        },
        {
            from = 105, to = 111,
            methods = {
                {
                    id = "runecrafting_runic_attuner",
                    name = "Runic attuner at the soul altar",
                    intensity = "high",
                    xpPerHour = 900000,
                    location = "The Abyss and soul altar",
                    notes = "900k-1.1M XP/hr base. Every 50th attunement gives a 2,200% XP bonus; finish it on a full soul altar.",
                    wiki = "https://runescape.wiki/w/Runic_attuner",
                    requirements = {
                        quests = { "'Phite Club" },
                        other = { "Enter the Abyss miniquest", "Runic attuner" },
                    },
                    items = {
                        { label = "Pure essence", names = { "Pure essence" } },
                    },
                },
                {
                    id = "runecrafting_abyss_expansive",
                    name = "Abyss with expansive pouch",
                    intensity = "high",
                    xpPerHour = 469092,
                    location = "The Abyss",
                    money = "Very profitable",
                    notes = "Expansive pouch holds 70 essence and doesn't degrade. Dangerous PvP area.",
                    wiki = "https://runescape.wiki/w/The_Abyss",
                    requirements = {
                        other = { "Enter the Abyss miniquest" },
                    },
                    items = {
                        { label = "Pure essence", names = { "Pure essence" } },
                        { label = "Wilderness sword", contains = { "wilderness sword" } },
                    },
                },
                {
                    id = "runecrafting_soul_altar_105",
                    name = "Soul altar",
                    intensity = "low",
                    xpPerHour = 418000,
                    location = "Soul altar, fairy ring CKQ",
                    notes = "418k-465k XP/hr base. Very AFK.",
                    wiki = "https://runescape.wiki/w/Soul_altar",
                    requirements = {
                        quests = { "'Phite Club" },
                    },
                    items = {
                        { label = "Pure essence", names = { "Pure essence" } },
                    },
                },
            },
        },
    },

    boosts = {
        "Master runecrafter robes: +5% XP for the full set",
        "Runic attuner: +50% XP at the attuned altar",
        "Runecrafting urns: +20% XP (exquisite +25%)",
        "Abyssal titan and infinity ethereal outfit raise Abyss rates",
        "Ring of imbuing: +10% runes; crystal binding rod +5%",
    },
}
