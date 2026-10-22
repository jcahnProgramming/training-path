--[[
    Construction training guide (data only, no code).

    Source: RuneScape Wiki, "Pay-to-play Construction training"
    https://runescape.wiki/w/Pay-to-play_Construction_training
    Licensed CC BY-NC-SA 3.0. Numbers copied from that page as of
    2026-10-22; anything the wiki didn't state has been left out.
    The wiki marks the page as possibly outdated after the 2026
    Construction update.
    Format: see docs/guide-format.md
]]

return {
    skill = "Construction",
    maxLevel = 120,
    wiki = "https://runescape.wiki/w/Pay-to-play_Construction_training",
    source = "Data: RuneScape Wiki, Pay-to-play Construction training (CC BY-NC-SA 3.0)",

    bands = {
        {
            from = 1, to = 33,
            methods = {
                {
                    id = "construction_new_foundations",
                    name = "New Foundations (quest)",
                    intensity = "medium",
                    money = "Free",
                    notes = "Gives over 40,000 XP, enough for level 40. Also unlocks Fort Forinthry.",
                    wiki = "https://runescape.wiki/w/New_Foundations",
                },
                {
                    id = "construction_wooden_furniture",
                    name = "Wooden furniture at a workbench",
                    intensity = "high",
                    xpPerHour = 34800,
                    location = "Player-owned house workbench",
                    money = "About 178k coins for 1-33",
                    notes = "Crude chair, bookcase, round and long tables: 34.8k-136.8k XP/hr.",
                    wiki = "https://runescape.wiki/w/Furniture_workbench",
                    requirements = {
                        quests = { "There's No Place Like Home..." },
                    },
                    items = {
                        { label = "Planks", names = { "Plank" } },
                        { label = "Nails", contains = { " nails" } },
                    },
                },
                {
                    id = "construction_fort_stone_walls",
                    name = "Stone wall segments",
                    intensity = "low",
                    xpPerHour = 40000,
                    location = "Fort Forinthry workshop",
                    money = "Profitable",
                    notes = "Made from limestone bricks, about 1,000 per hour.",
                    wiki = "https://runescape.wiki/w/Fort_Forinthry",
                    requirements = {
                        quests = { "New Foundations" },
                    },
                },
            },
        },
        {
            from = 33, to = 56,
            methods = {
                {
                    id = "construction_oak_larder",
                    name = "Oak larders",
                    intensity = "high",
                    xpPerHour = 288000,
                    location = "Player-owned house workbench",
                    money = "About 1.4M coins for 33-56",
                    notes = "480 XP each, 8 oak planks per larder.",
                    wiki = "https://runescape.wiki/w/Oak_larder",
                    requirements = {
                        quests = { "There's No Place Like Home..." },
                    },
                    items = {
                        { label = "Oak planks", names = { "Oak plank" }, count = 8 },
                    },
                },
                {
                    id = "construction_contracts_low",
                    name = "Construction contracts",
                    intensity = "medium",
                    xpPerHour = 100000,
                    location = "Any estate agent",
                    money = "Cheapest per XP",
                    notes = "From 40. Normal planks 100k XP/hr at 40-50, oak 183k at 50-60. Buy a plank box first.",
                    wiki = "https://runescape.wiki/w/Construction_contracts",
                    requirements = {
                        levels = { { skill = "Construction", level = 40 } },
                    },
                    items = {
                        { label = "Planks", names = { "Plank", "Oak plank" } },
                        { label = "Nails", contains = { " nails" } },
                    },
                },
                {
                    id = "construction_fort_buildings_low",
                    name = "Fort Forinthry buildings",
                    intensity = "low",
                    location = "Fort Forinthry",
                    money = "Expensive",
                    notes = "Very AFK. Following the hotspot can raise XP by up to 60%.",
                    wiki = "https://runescape.wiki/w/Fort_Forinthry",
                    requirements = {
                        quests = { "New Foundations" },
                    },
                },
            },
        },
        {
            from = 56, to = 72,
            methods = {
                {
                    id = "construction_teak_long_table",
                    name = "Teak long tables",
                    intensity = "high",
                    xpPerHour = 432000,
                    location = "Player-owned house workbench",
                    money = "About 3.3M coins for 56-72",
                    notes = "720 XP each, 8 teak planks per table.",
                    wiki = "https://runescape.wiki/w/Teak_long_table",
                    requirements = {
                        quests = { "There's No Place Like Home..." },
                    },
                    items = {
                        { label = "Teak planks", names = { "Teak plank" }, count = 8 },
                    },
                },
                {
                    id = "construction_contracts_teak",
                    name = "Construction contracts (teak)",
                    intensity = "medium",
                    xpPerHour = 270000,
                    location = "Any estate agent",
                    money = "Cheapest per XP",
                    notes = "Teak from 60. 375k XP/hr with the master constructor's outfit.",
                    wiki = "https://runescape.wiki/w/Construction_contracts",
                    items = {
                        { label = "Planks", names = { "Oak plank", "Teak plank" } },
                        { label = "Nails", contains = { " nails" } },
                    },
                },
            },
        },
        {
            from = 72, to = 80,
            methods = {
                {
                    id = "construction_mahogany_long_table",
                    name = "Mahogany long tables",
                    intensity = "high",
                    xpPerHour = 672000,
                    location = "Player-owned house workbench",
                    money = "About 11.9M coins for 72-80",
                    notes = "1,120 XP each, 8 mahogany planks per table.",
                    wiki = "https://runescape.wiki/w/Mahogany_long_table",
                    requirements = {
                        quests = { "There's No Place Like Home..." },
                    },
                    items = {
                        { label = "Mahogany planks", names = { "Mahogany plank" }, count = 8 },
                    },
                },
                {
                    id = "construction_contracts_mahogany",
                    name = "Construction contracts (mahogany)",
                    intensity = "medium",
                    xpPerHour = 347000,
                    location = "Any estate agent",
                    money = "Cheap per XP",
                    notes = "550k XP/hr with the master constructor's outfit.",
                    wiki = "https://runescape.wiki/w/Construction_contracts",
                    items = {
                        { label = "Mahogany planks", names = { "Mahogany plank" } },
                        { label = "Nails", contains = { " nails" } },
                    },
                },
            },
        },
        {
            from = 80, to = 100,
            methods = {
                {
                    id = "construction_potion_cauldron",
                    name = "Basic potion cauldrons",
                    intensity = "high",
                    xpPerHour = 1570800,
                    location = "Player-owned house workbench",
                    money = "Very expensive",
                    notes = "2,618 XP each. Needs 5 bane bars, 25 blood runes and 1 eye of newt.",
                    wiki = "https://runescape.wiki/w/Basic_potion_cauldron",
                    requirements = {
                        quests = { "There's No Place Like Home..." },
                    },
                    items = {
                        { label = "Bane bars", names = { "Bane bar" }, count = 5 },
                        { label = "Blood runes", names = { "Blood rune" }, count = 25 },
                        { label = "Eye of newt", names = { "Eye of newt" } },
                    },
                },
                {
                    id = "construction_contracts_mahogany_80",
                    name = "Construction contracts (mahogany)",
                    intensity = "medium",
                    xpPerHour = 347000,
                    location = "Any estate agent",
                    money = "Cheap per XP",
                    notes = "550k XP/hr with the master constructor's outfit.",
                    wiki = "https://runescape.wiki/w/Construction_contracts",
                    items = {
                        { label = "Mahogany planks", names = { "Mahogany plank" } },
                        { label = "Nails", contains = { " nails" } },
                    },
                },
                {
                    id = "construction_teak_long_table_budget",
                    name = "Teak long tables (budget)",
                    intensity = "high",
                    xpPerHour = 432000,
                    location = "Player-owned house workbench",
                    money = "Cheaper than cauldrons",
                    wiki = "https://runescape.wiki/w/Teak_long_table",
                    items = {
                        { label = "Teak planks", names = { "Teak plank" }, count = 8 },
                    },
                },
                {
                    id = "construction_fort_buildings_high",
                    name = "Fort Forinthry buildings",
                    intensity = "low",
                    location = "Fort Forinthry",
                    money = "Expensive",
                    notes = "Very AFK. Command Centre T3 at 99 gives 264,960 XP baseline.",
                    wiki = "https://runescape.wiki/w/Fort_Forinthry",
                    requirements = {
                        quests = { "New Foundations" },
                    },
                },
            },
        },
        {
            from = 100, to = 106,
            methods = {
                {
                    id = "construction_contracts_eternal",
                    name = "Construction contracts (eternal)",
                    intensity = "medium",
                    xpPerHour = 1560000,
                    location = "Any estate agent",
                    notes = "Eternal planks from 100. About 54,000 XP per contract.",
                    wiki = "https://runescape.wiki/w/Construction_contracts",
                    items = {
                        { label = "Eternal planks", names = { "Eternal plank" } },
                        { label = "Nails", contains = { " nails" } },
                    },
                },
                {
                    id = "construction_potion_cauldron_100",
                    name = "Basic potion cauldrons",
                    intensity = "high",
                    xpPerHour = 1570800,
                    location = "Player-owned house workbench",
                    money = "Very expensive",
                    notes = "2,618 XP each.",
                    wiki = "https://runescape.wiki/w/Basic_potion_cauldron",
                    items = {
                        { label = "Bane bars", names = { "Bane bar" }, count = 5 },
                        { label = "Blood runes", names = { "Blood rune" }, count = 25 },
                        { label = "Eye of newt", names = { "Eye of newt" } },
                    },
                },
                {
                    id = "construction_mahogany_long_table_budget",
                    name = "Mahogany long tables (budget)",
                    intensity = "high",
                    xpPerHour = 672000,
                    location = "Player-owned house workbench",
                    wiki = "https://runescape.wiki/w/Mahogany_long_table",
                    items = {
                        { label = "Mahogany planks", names = { "Mahogany plank" }, count = 8 },
                    },
                },
            },
        },
        {
            from = 106, to = 110,
            methods = {
                {
                    id = "construction_eternal_round_table",
                    name = "Eternal round tables",
                    intensity = "high",
                    xpPerHour = 1872000,
                    location = "Player-owned house workbench",
                    money = "Very expensive",
                    notes = "3,120 XP each, 6 eternal planks per table.",
                    wiki = "https://runescape.wiki/w/Eternal_round_table",
                    items = {
                        { label = "Eternal planks", names = { "Eternal plank" }, count = 6 },
                    },
                },
                {
                    id = "construction_contracts_eternal_106",
                    name = "Construction contracts (eternal)",
                    intensity = "medium",
                    xpPerHour = 1560000,
                    location = "Any estate agent",
                    wiki = "https://runescape.wiki/w/Construction_contracts",
                    items = {
                        { label = "Eternal planks", names = { "Eternal plank" } },
                        { label = "Nails", contains = { " nails" } },
                    },
                },
            },
        },
        {
            from = 110, to = 121,
            methods = {
                {
                    id = "construction_eternal_long_table",
                    name = "Eternal long tables",
                    intensity = "high",
                    xpPerHour = 2496000,
                    location = "Player-owned house workbench",
                    money = "Very expensive",
                    notes = "4,160 XP each, 8 eternal planks per table.",
                    wiki = "https://runescape.wiki/w/Eternal_long_table",
                    items = {
                        { label = "Eternal planks", names = { "Eternal plank" }, count = 8 },
                    },
                },
                {
                    id = "construction_contracts_eternal_110",
                    name = "Construction contracts (eternal)",
                    intensity = "medium",
                    xpPerHour = 1560000,
                    location = "Any estate agent",
                    wiki = "https://runescape.wiki/w/Construction_contracts",
                    items = {
                        { label = "Eternal planks", names = { "Eternal plank" } },
                        { label = "Nails", contains = { " nails" } },
                    },
                },
                {
                    id = "construction_fort_eternal_reinforcement",
                    name = "Fort Forinthry eternal reinforcement",
                    intensity = "low",
                    location = "Fort Forinthry",
                    money = "Expensive",
                    notes = "891k XP/hr baseline, up to 1.99M following hotspots. Very AFK.",
                    wiki = "https://runescape.wiki/w/Fort_Forinthry",
                    requirements = {
                        levels = { { skill = "Construction", level = 105 } },
                        quests = { "New Foundations" },
                    },
                },
            },
        },
    },

    boosts = {
        "Portable workbench: +10% base XP, 7.5% plank save",
        "Constructor's outfit: +6% XP for the full set",
        "Master constructor's outfit: +3 boost, faster contracts",
        "Sculpting chisel: +1% XP",
        "Artificer's measure: +5% XP",
    },
}
