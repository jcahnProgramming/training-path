--[[
    Ranged training guide (data only, no code).
    Source: RuneScape Wiki, "Pay-to-play Ranged training"
    https://runescape.wiki/w/Pay-to-play_Ranged_training
    Licensed CC BY-NC-SA 3.0. Format: docs/guide-format.md.
    That page still needs updating for the 2023 combat XP changes, so XP per
    kill figures were re-checked on each monster's own wiki page (2026-10-22).
]]

return {
    skill = "Ranged",
    maxLevel = 120,
    wiki = "https://runescape.wiki/w/Pay-to-play_Ranged_training",
    source = "Data: RuneScape Wiki, Pay-to-play Ranged training (CC BY-NC-SA 3.0)",

    bands = {
        {
            from = 1, to = 20,
            methods = {
                {
                    id = "ranged_cows",
                    name = "Cows",
                    intensity = "high",
                    location = "Beefy Bill's field, Lumbridge",
                    money = "Cowhides to sell or craft",
                    notes = "50 XP per kill. Less crowded than chickens; Beefy Bill banks for a 10% fee.",
                    wiki = "https://runescape.wiki/w/Cow",
                },
                {
                    id = "ranged_cockroach_drones",
                    name = "Cockroach drones",
                    intensity = "high",
                    location = "Stronghold of Player Safety",
                    notes = "60 XP per kill. Close to a bank, many spawns, drops herbs and runes.",
                    wiki = "https://runescape.wiki/w/Cockroach_drone",
                },
                {
                    id = "ranged_chickens",
                    name = "Chickens",
                    intensity = "high",
                    location = "Lumbridge chicken coop",
                    money = "Feathers sell well",
                    notes = "12.5 XP per kill. Good drops for the level.",
                    wiki = "https://runescape.wiki/w/Chicken",
                },
            },
        },
        {
            from = 20, to = 40,
            methods = {
                {
                    id = "ranged_hill_giants",
                    name = "Hill Giants",
                    intensity = "medium",
                    location = "Taverley Dungeon",
                    notes = "225 XP per kill. Use the rocks for cover; they hit hard otherwise.",
                    wiki = "https://runescape.wiki/w/Hill_Giant",
                },
                {
                    id = "ranged_chaos_druids",
                    name = "Chaos druids",
                    intensity = "low",
                    location = "Taverley Dungeon",
                    money = "Drop herbs often",
                    notes = "57.5 XP per kill. Weak to arrows, aggressive, low max hit.",
                    wiki = "https://runescape.wiki/w/Chaos_druid",
                },
                {
                    id = "ranged_giant_bats",
                    name = "Giant bats",
                    intensity = "low",
                    location = "Taverley Dungeon or Goblin Cave",
                    notes = "50 XP per kill (regular giant bats). Aggressive.",
                    wiki = "https://runescape.wiki/w/Giant_bat",
                },
            },
        },
        {
            from = 40, to = 50,
            methods = {
                {
                    id = "ranged_infernal_mages",
                    name = "Infernal mages",
                    intensity = "medium",
                    location = "Slayer Tower",
                    notes = "325 XP per kill. Weak to arrows, very low max hit, quick respawn.",
                    wiki = "https://runescape.wiki/w/Infernal_mage",
                    requirements = {
                        levels = { { skill = "Slayer", level = 45 } },
                    },
                },
                {
                    id = "ranged_pyrefiends",
                    name = "Pyrefiends",
                    intensity = "medium",
                    location = "Fremennik Slayer Dungeon",
                    money = "Impious ashes are profitable",
                    notes = "202.5 XP per kill. Weak to bolts.",
                    wiki = "https://runescape.wiki/w/Pyrefiend",
                    requirements = {
                        levels = { { skill = "Slayer", level = 30 } },
                    },
                },
                {
                    id = "ranged_green_dragons",
                    name = "Green dragons",
                    intensity = "medium",
                    location = "Chaos Tunnels or Wilderness",
                    money = "Very good drops",
                    notes = "225 XP per kill. Weak to bolts. Dragonfire is deadly without protection.",
                    crossovers = "Dragon bones for Prayer",
                    wiki = "https://runescape.wiki/w/Green_dragon",
                    items = {
                        { label = "Anti-dragon shield", names = { "Anti-dragon shield", "Dragonfire deflector" } },
                    },
                },
            },
        },
        {
            from = 50, to = 70,
            methods = {
                {
                    id = "ranged_mighty_banshees",
                    name = "Mighty banshees",
                    intensity = "medium",
                    location = "Pollnivneach Slayer Dungeon",
                    notes = "307.5 XP per kill. Weak to arrows, low health, drops herbs and alchables.",
                    wiki = "https://runescape.wiki/w/Mighty_Banshee",
                    items = {
                        { label = "Masked earmuffs or slayer helmet", contains = { "masked earmuffs", "slayer helmet" } },
                    },
                },
                {
                    id = "ranged_blue_dragons",
                    name = "Blue dragons",
                    intensity = "medium",
                    location = "Taverley Dungeon",
                    money = "Very good drops",
                    notes = "250 XP per kill. Weak to bolts. Needs a dusty key or 70 Agility to reach.",
                    crossovers = "Dragon bones for Prayer",
                    wiki = "https://runescape.wiki/w/Blue_dragon",
                    items = {
                        { label = "Anti-dragon shield", names = { "Anti-dragon shield", "Dragonfire deflector" } },
                    },
                },
                {
                    id = "ranged_black_demons",
                    name = "Black demons",
                    intensity = "medium",
                    location = "Taverley Dungeon or Chaos Tunnels",
                    money = "Good alchables and charms",
                    notes = "450 XP per kill. Weak to bolts. A dwarf multicannon works in Taverley.",
                    wiki = "https://runescape.wiki/w/Black_demon",
                },
            },
        },
        {
            from = 70, to = 80,
            methods = {
                {
                    id = "ranged_mature_grotworms",
                    name = "Mature grotworms",
                    intensity = "medium",
                    location = "Grotworm Lair",
                    notes = "640 XP per kill. Bring alchemy runes and prayer potions.",
                    wiki = "https://runescape.wiki/w/Mature_grotworm",
                },
                {
                    id = "ranged_aviansies",
                    name = "Aviansies",
                    intensity = "medium",
                    location = "God Wars Dungeon",
                    notes = "320 to 340 XP per kill. Wear an item from all four factions to avoid aggression.",
                    wiki = "https://runescape.wiki/w/Aviansie",
                    requirements = {
                        quests = { "Death Plateau", "Troll Stronghold" },
                    },
                },
                {
                    id = "ranged_red_dragons",
                    name = "Red dragons",
                    intensity = "medium",
                    location = "Brimhaven Dungeon",
                    notes = "300 XP per kill.",
                    crossovers = "Dragon bones for Prayer",
                    wiki = "https://runescape.wiki/w/Red_dragon",
                    items = {
                        { label = "Anti-dragon shield", names = { "Anti-dragon shield", "Dragonfire deflector" } },
                    },
                },
            },
        },
        {
            from = 80, to = 90,
            methods = {
                {
                    id = "ranged_waterfiends",
                    name = "Waterfiends",
                    intensity = "medium",
                    xpPerHour = 150000,
                    location = "Ghorrock, Chaos Tunnels or Ancient Cavern",
                    money = "Semi-valuable drops, many charms",
                    notes = "150k-400k XP/hr with elite void or Pernix and a high level weapon.",
                    wiki = "https://runescape.wiki/w/Pay-to-play_Ranged_training#Waterfiends",
                    requirements = {
                        quests = { "The Temple at Senntisten" },
                    },
                },
            },
        },
        {
            from = 90, to = 121,
            methods = {
                {
                    id = "ranged_abyss_chinchompas",
                    name = "Red chinchompas in the Abyss",
                    intensity = "low",
                    xpPerHour = 702054,
                    location = "Abyss, south-west or south-east corner",
                    money = "Costs chinchompas",
                    notes = "AFK. 15+ aggressive creatures; run away and back every 10 minutes.",
                    wiki = "https://runescape.wiki/w/Pay-to-play_Ranged_training#Abyssal_training",
                    requirements = {
                        levels = { { skill = "Ranged", level = 55 } },
                    },
                    items = {
                        { label = "Chinchompas", contains = { "chinchompa" } },
                    },
                },
                {
                    id = "ranged_afk_waterfiends",
                    name = "AFK waterfiends",
                    intensity = "low",
                    xpPerHour = 350000,
                    location = "Ghorrock",
                    money = "Cheap; 100+ crimson charms per hour",
                    notes = "350k AFK, 450k if you pay attention. Needs tier 70 armour and tier 80 weapons.",
                    wiki = "https://runescape.wiki/w/Pay-to-play_Ranged_training#AFK_waterfiends",
                    requirements = {
                        levels = { { skill = "Prayer", level = 92 } },
                        quests = { "The Temple at Senntisten" },
                        other = { "96 Herblore for overloads highly recommended" },
                    },
                },
                {
                    id = "ranged_kreearra",
                    name = "Kree'arra and guards",
                    intensity = "high",
                    location = "God Wars Dungeon",
                    notes = "3,750 XP per kill. Use an instance on fast spawn.",
                    wiki = "https://runescape.wiki/w/Kree%27arra",
                    requirements = {
                        levels = { { skill = "Ranged", level = 70 } },
                        other = { "Defeated Dad in Troll Stronghold" },
                    },
                },
            },
        },
    },

    boosts = {
        "Overloads (96 Herblore) or extreme ranging potions speed up training a lot.",
        "Big Top Bonanza: weekly circus visit for Ranged XP.",
        "Train on monsters weak to arrows, bolts or thrown weapons.",
    },
}
