--[[
    Fishing training guide (data only, no code).
    Source: RuneScape Wiki, "Pay-to-play Fishing training" (CC BY-NC-SA 3.0).
    Format: docs/guide-format.md
]]

return {
    skill = "Fishing",
    maxLevel = 99,
    wiki = "https://runescape.wiki/w/Pay-to-play_Fishing_training",
    source = "Data: RuneScape Wiki, Pay-to-play Fishing training (CC BY-NC-SA 3.0)",

    bands = {
        {
            from = 1, to = 20,
            methods = {
                {
                    id = "fishing_crayfish",
                    name = "Crayfish",
                    intensity = "medium",
                    xpPerHour = 11500,
                    location = "East of Lumbridge Church, or north shore of Taverley lake",
                    money = "Free",
                    notes = "No bait needed. About 23 minutes to level 20. Crayfish cage can be on your tool belt.",
                    crossovers = "Cook the catch for Cooking XP",
                    wiki = "https://runescape.wiki/w/Raw_crayfish",
                },
            },
        },
        {
            from = 20, to = 45,
            methods = {
                {
                    id = "fishing_fly_fishing",
                    name = "Fly fishing trout and salmon",
                    intensity = "medium",
                    xpPerHour = 17000,
                    location = "East of Gunnarsgrunn, River Lum or Shilo Village",
                    money = "Cost of feathers",
                    notes = "Use the Lure option. 17k XP/hr at 20 rising to 57k at 69. Shilo Village spot needs the quest.",
                    crossovers = "Cook the catch for Cooking XP",
                    wiki = "https://runescape.wiki/w/Pay-to-play_Fishing_training#Fly_fishing",
                    requirements = { levels = { { skill = "Fishing", level = 20 } } },
                    items = {
                        { label = "Feathers", names = { "Feather" } },
                    },
                },
            },
        },
        {
            from = 45, to = 52,
            methods = {
                {
                    id = "fishing_wendlewick_farm",
                    name = "Wendlewick fish farm",
                    intensity = "high",
                    xpPerHour = 60000,
                    location = "Docks west of Wendlewick",
                    notes = "Active: feed fish, clean water and clear algae in up to four pools. Rates rise as pools unlock.",
                    wiki = "https://runescape.wiki/w/Wendlewick_fish_farm",
                    requirements = {
                        levels = {
                            { skill = "Fishing", level = 45 },
                            { skill = "Farming", level = 25 },
                        },
                        other = { "Trader Woes achievement (talk to Nathan the Banker)" },
                    },
                },
                {
                    id = "fishing_fly_fishing_mid",
                    name = "Fly fishing trout and salmon",
                    intensity = "medium",
                    location = "East of Gunnarsgrunn, River Lum or Shilo Village",
                    money = "Cost of feathers",
                    notes = "Up to 57k XP/hr at level 69.",
                    wiki = "https://runescape.wiki/w/Pay-to-play_Fishing_training#Fly_fishing",
                    items = {
                        { label = "Feathers", names = { "Feather" } },
                    },
                },
            },
        },
        {
            from = 52, to = 66,
            methods = {
                {
                    id = "fishing_wendlewick_farm_mid",
                    name = "Wendlewick fish farm",
                    intensity = "high",
                    xpPerHour = 90000,
                    location = "Docks west of Wendlewick",
                    notes = "90k XP/hr at 55. Swordfish pool needs Fishing 55 and Construction 50.",
                    wiki = "https://runescape.wiki/w/Wendlewick_fish_farm",
                    requirements = {
                        levels = { { skill = "Farming", level = 25 } },
                        other = { "Trader Woes achievement" },
                    },
                },
                {
                    id = "fishing_menaphos_desert_sole",
                    name = "Desert sole, Menaphos",
                    intensity = "low",
                    xpPerHour = 38600,
                    location = "Port district, Menaphos",
                    notes = "38.6k XP/hr at 52, 63k at 60. AFK option.",
                    crossovers = "Cook the sole for Cooking XP",
                    wiki = "https://runescape.wiki/w/Raw_desert_sole",
                    requirements = {
                        levels = { { skill = "Fishing", level = 52 } },
                        other = { "Menaphos access (partial The Jack of Spades)" },
                    },
                },
            },
        },
        {
            from = 66, to = 84,
            methods = {
                {
                    id = "fishing_ghostly_sole",
                    name = "Ghostly sole",
                    intensity = "low",
                    xpPerHour = 90000,
                    location = "Reflection Pool, City of Um",
                    notes = "The longest AFK method. 90k to 100k XP/hr; bank to the west.",
                    crossovers = "Cook the sole for Cooking XP",
                    wiki = "https://runescape.wiki/w/Raw_ghostly_sole",
                    requirements = {
                        levels = { { skill = "Fishing", level = 66 } },
                        quests = { "Necromancy!" },
                    },
                },
                {
                    id = "fishing_menaphos_port",
                    name = "Menaphos port fishing",
                    intensity = "low",
                    xpPerHour = 84000,
                    location = "Port district, Menaphos (VIP area at reputation tier 7)",
                    notes = "84k XP/hr at 72. Up to 120k with full fury shark outfit and tier 8 reputation.",
                    wiki = "https://runescape.wiki/w/Pay-to-play_Fishing_training#Menaphos",
                    requirements = {
                        levels = { { skill = "Fishing", level = 72 } },
                        other = { "Menaphos access (partial The Jack of Spades)" },
                    },
                },
                {
                    id = "fishing_wendlewick_farm_high",
                    name = "Wendlewick fish farm",
                    intensity = "high",
                    location = "Docks west of Wendlewick",
                    notes = "Shark pool from 79 (Construction 70). Up to 250k XP/hr at 84.",
                    wiki = "https://runescape.wiki/w/Wendlewick_fish_farm",
                    requirements = {
                        levels = { { skill = "Farming", level = 25 } },
                        other = { "Trader Woes achievement" },
                    },
                },
                {
                    id = "fishing_minnows",
                    name = "Minnow shoals",
                    intensity = "medium",
                    xpPerHour = 48000,
                    notes = "48k XP/hr at 68. No quest needed.",
                    wiki = "https://runescape.wiki/w/Pay-to-play_Fishing_training#Minnows",
                    requirements = { levels = { { skill = "Fishing", level = 68 } } },
                },
            },
        },
        {
            from = 84, to = 88,
            methods = {
                {
                    id = "fishing_wendlewick_farm_crayfish",
                    name = "Wendlewick fish farm",
                    intensity = "high",
                    xpPerHour = 250000,
                    location = "Docks west of Wendlewick",
                    notes = "250k XP/hr at 84 with the giant crayfish pool (Construction 80 to repair).",
                    wiki = "https://runescape.wiki/w/Wendlewick_fish_farm",
                    requirements = {
                        levels = {
                            { skill = "Fishing", level = 84 },
                            { skill = "Farming", level = 25 },
                            { skill = "Construction", level = 80 },
                        },
                        other = { "Trader Woes achievement" },
                    },
                },
                {
                    id = "fishing_ghostly_sole_high",
                    name = "Ghostly sole",
                    intensity = "low",
                    xpPerHour = 90000,
                    location = "Reflection Pool, City of Um",
                    notes = "Best AFK option.",
                    wiki = "https://runescape.wiki/w/Raw_ghostly_sole",
                    requirements = { quests = { "Necromancy!" } },
                },
            },
        },
        {
            from = 88, to = 94,
            methods = {
                {
                    id = "fishing_croesus_front",
                    name = "Croesus Front",
                    intensity = "low",
                    location = "Croesus Front, Senntisten",
                    money = "Trove and resonant anima rewards",
                    notes = "Up to 200k XP/hr at 99 with boosts. 92 unlocks all nodes. Upgraded Pontifex shadow ring helps.",
                    wiki = "https://runescape.wiki/w/Pay-to-play_Fishing_training#Croesus_Front",
                    requirements = { levels = { { skill = "Fishing", level = 88 } } },
                },
                {
                    id = "fishing_crystallise_fly",
                    name = "Crystallise fly fishing",
                    intensity = "medium",
                    location = "Fly fishing spots",
                    money = "About 856k coins/hr in runes",
                    notes = "Cast Crystallise on the spot. Up to 118k XP/hr at 99. Light Form doubles the bonus.",
                    wiki = "https://runescape.wiki/w/Crystallise",
                    requirements = { levels = { { skill = "Magic", level = 88 } } },
                    items = {
                        { label = "Feathers", names = { "Feather" } },
                    },
                },
                {
                    id = "fishing_prif_waterfall",
                    name = "Prifddinas waterfall",
                    intensity = "medium",
                    xpPerHour = 119000,
                    location = "Waterfall between Crwys and Meilyr districts",
                    notes = "Crystal urchins trade for points. Grapple shortcut needs 90 Ranged, Agility, Strength.",
                    wiki = "https://runescape.wiki/w/Pay-to-play_Fishing_training#Prifddinas_waterfall",
                    requirements = {
                        levels = { { skill = "Fishing", level = 93 } },
                        quests = { "Plague's End" },
                    },
                },
                {
                    id = "fishing_ghostly_sole_88",
                    name = "Ghostly sole",
                    intensity = "low",
                    xpPerHour = 90000,
                    location = "Reflection Pool, City of Um",
                    wiki = "https://runescape.wiki/w/Raw_ghostly_sole",
                    requirements = { quests = { "Necromancy!" } },
                },
            },
        },
        {
            from = 94, to = 100,
            methods = {
                {
                    id = "fishing_frenzy",
                    name = "Fishing Frenzy",
                    intensity = "high",
                    xpPerHour = 285000,
                    location = "Deep Sea Fishing hub (talk to Goomah at the Fishing Guild)",
                    notes = "Over 285k XP/hr at 99. Click-intensive.",
                    wiki = "https://runescape.wiki/w/Fishing_Frenzy",
                    requirements = { levels = { { skill = "Fishing", level = 94 } } },
                },
                {
                    id = "fishing_wobbegong",
                    name = "Raw wobbegongs",
                    intensity = "medium",
                    xpPerHour = 137000,
                    location = "Uncharted Isles (from The Arc)",
                    notes = "About 100 per spot per day. Needs voyage supplies. Rod can be on your tool belt.",
                    wiki = "https://runescape.wiki/w/Raw_wobbegong",
                    requirements = {
                        levels = { { skill = "Fishing", level = 96 } },
                        quests = { "Impressing the Locals" },
                        other = { "Flag Fall miniquest" },
                    },
                },
                {
                    id = "fishing_croesus_front_high",
                    name = "Croesus Front",
                    intensity = "low",
                    xpPerHour = 200000,
                    location = "Croesus Front, Senntisten",
                    notes = "Up to 200k XP/hr at 99 with boosts. Relaxed.",
                    wiki = "https://runescape.wiki/w/Pay-to-play_Fishing_training#Croesus_Front",
                },
                {
                    id = "fishing_ghostly_sole_max",
                    name = "Ghostly sole",
                    intensity = "low",
                    xpPerHour = 100000,
                    location = "Reflection Pool, City of Um",
                    notes = "Up to 100k XP/hr at 99. Fully AFK.",
                    wiki = "https://runescape.wiki/w/Raw_ghostly_sole",
                    requirements = { quests = { "Necromancy!" } },
                },
            },
        },
    },

    boosts = {
        "Fishing outfit: +1 to 5% XP",
        "Fishing urns: +20 to 25% XP, urn enhancer +25%",
        "Brawling gloves (Fishing): +50 to 75% XP",
        "Crystallise: +20% XP (40% with Light Form)",
        "Fury shark outfit: 10% double catch, saves bait",
        "Perfect juju fishing potion: +10% success",
    },
}
