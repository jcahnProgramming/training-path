--[[
    Mining training guide (data only, no code).
    Source: RuneScape Wiki, "Pay-to-play Mining training" (CC BY-NC-SA 3.0).
    Format: docs/guide-format.md
]]

return {
    skill = "Mining",
    maxLevel = 110,
    wiki = "https://runescape.wiki/w/Pay-to-play_Mining_training",
    source = "Data: RuneScape Wiki, Pay-to-play Mining training (CC BY-NC-SA 3.0)",

    bands = {
        {
            from = 1, to = 10,
            methods = {
                {
                    id = "mining_copper_tin",
                    name = "Copper and tin ore",
                    intensity = "high",
                    xpPerHour = 5025,
                    location = "Lumbridge SE, Burthorpe or Varrock SE mine",
                    notes = "Rate assumes clicking rockertunities; semi-AFK is about 4,050 XP/hr. Pickaxe can be on your tool belt.",
                    crossovers = "Also trains Smithing if you smelt the ore",
                    wiki = "https://runescape.wiki/w/Copper_ore",
                },
            },
        },
        {
            from = 10, to = 20,
            methods = {
                {
                    id = "mining_iron",
                    name = "Iron ore",
                    intensity = "medium",
                    xpPerHour = 13845,
                    location = "Lumbridge SW, Varrock SW or Piscatoris south mine",
                    notes = "Rate assumes clicking rockertunities; semi-AFK is about 10,530 XP/hr.",
                    wiki = "https://runescape.wiki/w/Iron_ore",
                    requirements = { levels = { { skill = "Mining", level = 10 } } },
                },
            },
        },
        {
            from = 20, to = 30,
            methods = {
                {
                    id = "mining_coal",
                    name = "Coal",
                    intensity = "medium",
                    xpPerHour = 26447,
                    location = "Lumbridge SW, Falador west or Gunnarsgrunn mine",
                    notes = "Rate assumes clicking rockertunities; semi-AFK is about 20,115 XP/hr.",
                    wiki = "https://runescape.wiki/w/Coal",
                    requirements = { levels = { { skill = "Mining", level = 20 } } },
                },
            },
        },
        {
            from = 30, to = 40,
            methods = {
                {
                    id = "mining_mithril",
                    name = "Mithril ore",
                    intensity = "medium",
                    xpPerHour = 38022,
                    location = "Varrock SE, Varrock SW or Karamja Volcano mine",
                    notes = "Rate assumes clicking rockertunities; semi-AFK is about 30,645 XP/hr.",
                    wiki = "https://runescape.wiki/w/Mithril_ore",
                    requirements = { levels = { { skill = "Mining", level = 30 } } },
                },
            },
        },
        {
            from = 40, to = 50,
            methods = {
                {
                    id = "mining_adamantite_luminite",
                    name = "Adamantite or luminite",
                    intensity = "medium",
                    xpPerHour = 49077,
                    location = "Rimmington (adamantite) or Mining Guild resource dungeon (luminite)",
                    notes = "Rate assumes clicking rockertunities; semi-AFK is about 39,555 XP/hr.",
                    wiki = "https://runescape.wiki/w/Adamantite_ore",
                    requirements = { levels = { { skill = "Mining", level = 40 } } },
                },
            },
        },
        {
            from = 50, to = 60,
            methods = {
                {
                    id = "mining_runite",
                    name = "Runite ore",
                    intensity = "medium",
                    xpPerHour = 64077,
                    location = "South-east of the Fight Arena",
                    notes = "Rate assumes clicking rockertunities; semi-AFK is about 48,735 XP/hr.",
                    wiki = "https://runescape.wiki/w/Runite_ore",
                    requirements = { levels = { { skill = "Mining", level = 50 } } },
                },
            },
        },
        {
            from = 60, to = 70,
            methods = {
                {
                    id = "mining_orichalcite_drakolith",
                    name = "Orichalcite or drakolith",
                    intensity = "medium",
                    xpPerHour = 74202,
                    location = "Mining Guild (orichalcite) or Al Kharid resource dungeon (drakolith)",
                    notes = "Rate assumes clicking rockertunities; semi-AFK is about 59,805 XP/hr.",
                    wiki = "https://runescape.wiki/w/Orichalcite_ore",
                    requirements = { levels = { { skill = "Mining", level = 60 } } },
                },
            },
        },
        {
            from = 70, to = 80,
            methods = {
                {
                    id = "mining_phasmatite_necrite",
                    name = "Phasmatite or necrite",
                    intensity = "medium",
                    xpPerHour = 95317,
                    location = "Port Phasmatys south (phasmatite) or Uzer mine (necrite)",
                    notes = "Rate assumes clicking rockertunities; semi-AFK is about 72,495 XP/hr.",
                    wiki = "https://runescape.wiki/w/Necrite_ore",
                    requirements = { levels = { { skill = "Mining", level = 70 } } },
                },
            },
        },
        {
            from = 80, to = 89,
            methods = {
                {
                    id = "mining_banite",
                    name = "Banite ore",
                    intensity = "medium",
                    xpPerHour = 104520,
                    location = "Pirates' Hideout (forge and bank nearby)",
                    notes = "Rate assumes clicking rockertunities; semi-AFK is about 84,240 XP/hr.",
                    wiki = "https://runescape.wiki/w/Banite_ore",
                    requirements = { levels = { { skill = "Mining", level = 80 } } },
                },
            },
        },
        {
            from = 89, to = 97,
            methods = {
                {
                    id = "mining_corrupted_ore",
                    name = "Corrupted ore",
                    intensity = "low",
                    xpPerHour = 146400,
                    location = "Seren stones, Trahaearn district, Prifddinas",
                    notes = "AFK, uses no stamina. Ore is untradeable but can be smelted for Smithing XP.",
                    crossovers = "Smelt the ore for Smithing XP",
                    wiki = "https://runescape.wiki/w/Corrupted_ore",
                    requirements = {
                        levels = { { skill = "Mining", level = 89 } },
                        quests = { "Plague's End" },
                    },
                },
                {
                    id = "mining_animica",
                    name = "Light or dark animica",
                    intensity = "medium",
                    xpPerHour = 124072,
                    location = "Lletya (light) or Empty Throne Room (dark)",
                    notes = "Rate assumes clicking rockertunities; semi-AFK is about 94,365 XP/hr.",
                    wiki = "https://runescape.wiki/w/Light_animica",
                    requirements = { levels = { { skill = "Mining", level = 90 } } },
                },
            },
        },
        {
            from = 97, to = 100,
            methods = {
                {
                    id = "mining_alaea_crablets",
                    name = "Alaea crablets",
                    intensity = "high",
                    xpPerHour = 207000,
                    location = "Uncharted Isles (from The Arc)",
                    money = "Sea salt sales cover the supplies",
                    notes = "About 35 minutes per colony per day. Needs voyage supplies from Rosie.",
                    wiki = "https://runescape.wiki/w/Pay-to-play_Mining_training#Alaea_crablets",
                    requirements = {
                        levels = { { skill = "Mining", level = 97 } },
                        quests = { "Impressing the Locals" },
                        other = { "Flag Fall miniquest recommended" },
                    },
                },
                {
                    id = "mining_corrupted_ore_high",
                    name = "Corrupted ore",
                    intensity = "low",
                    xpPerHour = 146400,
                    location = "Seren stones, Trahaearn district, Prifddinas",
                    notes = "Best AFK option.",
                    wiki = "https://runescape.wiki/w/Corrupted_ore",
                    requirements = { quests = { "Plague's End" } },
                },
            },
        },
        {
            from = 100, to = 111,
            methods = {
                {
                    id = "mining_alaea_crablets_high",
                    name = "Alaea crablets",
                    intensity = "high",
                    xpPerHour = 207000,
                    location = "Uncharted Isles (from The Arc)",
                    notes = "Limited by daily colony visits.",
                    wiki = "https://runescape.wiki/w/Pay-to-play_Mining_training#Alaea_crablets",
                    requirements = { quests = { "Impressing the Locals" } },
                },
                {
                    id = "mining_primal_ores",
                    name = "Primal ores",
                    intensity = "medium",
                    xpPerHour = 143420,
                    location = "Daemonheim Peninsula",
                    notes = "Double ore chance from 103. Wiki says 250k+ XP/hr from 105 with items and boosts.",
                    wiki = "https://runescape.wiki/w/Pay-to-play_Mining_training#Primal_ores",
                    requirements = { levels = { { skill = "Mining", level = 100 } } },
                },
                {
                    id = "mining_corrupted_ore_max",
                    name = "Corrupted ore",
                    intensity = "low",
                    xpPerHour = 146400,
                    location = "Seren stones, Trahaearn district, Prifddinas",
                    wiki = "https://runescape.wiki/w/Corrupted_ore",
                    requirements = { quests = { "Plague's End" } },
                },
            },
        },
    },

    boosts = {
        "Golden mining suit: +1 to 6% XP",
        "Mining urns: +20% XP (urn enhancer +25%)",
        "Brawling gloves (Mining): +50 to 75% XP",
        "Crystallise: +20% XP (40% with Light Form)",
        "Furnace perk: 5% per rank chance to smelt the ore as you mine",
    },
}
