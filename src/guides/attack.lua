--[[
    Attack training guide (data only, no code).
    Source: RuneScape Wiki, "Pay-to-play Melee training" (CC BY-NC-SA 3.0),
    read 2026-10-22. The wiki flags that page as needing updates after the
    2023 combat XP changes, so XP per kill figures may be out of date.
    Values the wiki did not state are left out.
]]

return {
    skill = "Attack",
    maxLevel = 120,
    wiki = "https://runescape.wiki/w/Pay-to-play_Melee_training",
    source = "Data: RuneScape Wiki, Pay-to-play Melee training (CC BY-NC-SA 3.0)",

    bands = {
        {
            from = 1, to = 25,
            methods = {
                {
                    id = "attack_quests_early",
                    name = "Quests to 39 Attack",
                    intensity = "high",
                    notes = "Waterfall Quest, Tree Gnome Village and Fight Arena take you to 39 Attack.",
                    wiki = "https://runescape.wiki/w/Pay-to-play_Melee_training#Quests_for_Attack_experience",
                },
                {
                    id = "attack_chickens",
                    name = "Chickens",
                    intensity = "medium",
                    location = "North of Lumbridge",
                    notes = "12.5 XP per kill. Use the best halberd you can wield.",
                    wiki = "https://runescape.wiki/w/Chicken",
                    items = {
                        { label = "Halberd", contains = { "halberd" } },
                    },
                },
            },
        },
        {
            from = 25, to = 40,
            methods = {
                {
                    id = "attack_rock_crabs",
                    name = "Rock crabs",
                    intensity = "medium",
                    location = "North of Fremennik Province",
                    notes = "420 XP per kill. Low damage, good from mid-20s to low-30s. Lodestone nearby.",
                    wiki = "https://runescape.wiki/w/Rock_crab",
                },
                {
                    id = "attack_hill_giants",
                    name = "Hill giants",
                    intensity = "medium",
                    location = "Southern end of Edgeville Dungeon",
                    notes = "225 XP per kill. Wiki suggests these after 30 Attack with a mithril halberd.",
                    wiki = "https://runescape.wiki/w/Hill_giant",
                    requirements = {
                        levels = { { skill = "Attack", level = 30 } },
                    },
                    items = {
                        { label = "Mithril halberd", names = { "Mithril halberd" } },
                    },
                },
            },
        },
        {
            from = 40, to = 50,
            methods = {
                {
                    id = "attack_flesh_crawlers",
                    name = "Flesh Crawlers",
                    intensity = "medium",
                    location = "Stronghold of Security, level 2",
                    notes = "180 XP per kill. AoE abilities work well here; viable up to 70. Bring food.",
                    wiki = "https://runescape.wiki/w/Flesh_Crawler",
                },
                {
                    id = "attack_moss_giants",
                    name = "Moss giants",
                    intensity = "medium",
                    location = "Moss Giant Island or Varrock Sewers",
                    notes = "320 XP per kill.",
                    wiki = "https://runescape.wiki/w/Moss_giant",
                },
                {
                    id = "attack_ghouls",
                    name = "Ghouls",
                    intensity = "medium",
                    location = "North of Canifis",
                    notes = "325 XP per kill. Can drop the Ghoul Champion's scroll.",
                    wiki = "https://runescape.wiki/w/Ghoul",
                },
            },
        },
        {
            from = 50, to = 70,
            methods = {
                {
                    id = "attack_abyss_early",
                    name = "Abyss creatures",
                    intensity = "medium",
                    xpPerHour = 220000,
                    location = "The Abyss, south-western corner",
                    notes = "Up to 220k XP/hr. Creatures stop being aggressive after 10 minutes; run off and return to reset.",
                    wiki = "https://runescape.wiki/w/Pay-to-play_Melee_training#Abyssal_training",
                },
                {
                    id = "attack_grotworms",
                    name = "Grotworms",
                    intensity = "medium",
                    location = "Grotworm Lair, middle level",
                    notes = "372.5 XP per kill.",
                    wiki = "https://runescape.wiki/w/Grotworm",
                },
                {
                    id = "attack_hellhounds",
                    name = "Hellhounds",
                    intensity = "medium",
                    location = "Taverley Dungeon",
                    notes = "165 XP per kill. Viable up to 99 and a good source of hard clues.",
                    wiki = "https://runescape.wiki/w/Hellhound",
                },
            },
        },
        {
            from = 70, to = 80,
            methods = {
                {
                    id = "attack_abyss",
                    name = "Abyss creatures (full setup)",
                    intensity = "medium",
                    xpPerHour = 500000,
                    location = "The Abyss, south-west or south-east corner",
                    notes = "Over 500k XP/hr with a halberd, power armour and super melee potion.",
                    wiki = "https://runescape.wiki/w/Pay-to-play_Melee_training#Abyssal_training",
                },
                {
                    id = "attack_shattered_worlds",
                    name = "Shattered Worlds",
                    intensity = "medium",
                    notes = "Safe minigame; worlds 70 to 80 are best. Avoid the Feeling Pumped mutator.",
                    wiki = "https://runescape.wiki/w/Shattered_Worlds",
                },
                {
                    id = "attack_abyssal_demons",
                    name = "Abyssal demons",
                    intensity = "medium",
                    location = "Slayer Tower",
                    notes = "425 XP per kill. Viable up to 99.",
                    wiki = "https://runescape.wiki/w/Abyssal_demon",
                    requirements = {
                        levels = { { skill = "Slayer", level = 85 } },
                    },
                },
                {
                    id = "attack_slayer",
                    name = "Slayer tasks",
                    intensity = "medium",
                    notes = "50k to 2M XP/hr depending on gear and levels. Trains Slayer too, but melee XP can be lower.",
                    crossovers = "Also trains Slayer",
                    wiki = "https://runescape.wiki/w/Pay-to-play_Melee_training#Slayer",
                },
            },
        },
        {
            from = 80, to = 90,
            methods = {
                {
                    id = "attack_vyrewatch",
                    name = "Vyrewatch",
                    intensity = "low",
                    xpPerHour = 490000,
                    location = "Darkmeyer",
                    money = "Up to 4M coins/hr if looted every 1 to 2 minutes",
                    notes = "490k to 655k combat XP/hr. Morytania legs 4 and 92 Prayer (Soul Split) recommended.",
                    crossovers = "Also Prayer, Firemaking and Constitution XP",
                    wiki = "https://runescape.wiki/w/Pay-to-play_Melee_training#Vyrewatch_training",
                    requirements = {
                        quests = { "River of Blood" },
                    },
                    items = {
                        { label = "Morytania legs 4", names = { "Morytania legs 4" } },
                    },
                },
                {
                    id = "attack_ravenous_ghouls",
                    name = "Ravenous ghouls",
                    intensity = "medium",
                    location = "Slayer Tower Mausoleum",
                    notes = "725 XP per kill. Needs a dragon rider lance, or a noxious scythe or better, for 100% accuracy.",
                    wiki = "https://runescape.wiki/w/Ravenous_ghoul",
                    items = {
                        { label = "Dragon rider lance or noxious scythe", contains = { "dragon rider lance", "noxious scythe" } },
                    },
                },
                {
                    id = "attack_corrupted_scorpions",
                    name = "Corrupted scorpions",
                    intensity = "low",
                    location = "Sophanem Slayer Dungeon",
                    money = "About 4,558 coins per kill",
                    notes = "450 XP per kill. The dungeon chest can collect drops for you.",
                    wiki = "https://runescape.wiki/w/Corrupted_scorpion",
                    requirements = {
                        levels = { { skill = "Slayer", level = 88 } },
                    },
                },
                {
                    id = "attack_quests_late",
                    name = "Big Attack quest rewards",
                    intensity = "high",
                    notes = "The Mighty Fall gives 80,000 Attack XP and the Nadir saga 37,080.",
                    wiki = "https://runescape.wiki/w/Pay-to-play_Melee_training#Quests_for_Attack_experience",
                },
            },
        },
        {
            from = 90, to = 121,
            methods = {
                {
                    id = "attack_sophanem",
                    name = "Sophanem Slayer Dungeon",
                    intensity = "low",
                    xpPerHour = 500000,
                    location = "Sophanem Slayer Dungeon",
                    notes = "About 500k XP/hr with tier 90 gear. Aggression potions or a scrimshaw of aggression allow long AFK.",
                    wiki = "https://runescape.wiki/w/Pay-to-play_Melee_training#Sophanem_Slayer_Dungeon",
                    requirements = {
                        levels = { { skill = "Slayer", level = 88 } },
                    },
                },
                {
                    id = "attack_vyrewatch_high",
                    name = "Vyrewatch",
                    intensity = "low",
                    xpPerHour = 490000,
                    location = "Darkmeyer",
                    money = "Up to 4M coins/hr if looted every 1 to 2 minutes",
                    notes = "490k to 655k combat XP/hr. Best with the elite Morytania achievements.",
                    crossovers = "Also Prayer, Firemaking and Constitution XP",
                    wiki = "https://runescape.wiki/w/Pay-to-play_Melee_training#Vyrewatch_training",
                    requirements = {
                        quests = { "River of Blood" },
                    },
                    items = {
                        { label = "Morytania legs 4", names = { "Morytania legs 4" } },
                    },
                },
                {
                    id = "attack_arch_glacor",
                    name = "Arch-Glacor",
                    intensity = "high",
                    location = "Glacor Front, Senntisten",
                    notes = "3,250 XP per kill. Use 0 mechanics for fastest kills, or all 5 for more loot.",
                    wiki = "https://runescape.wiki/w/Arch-Glacor",
                },
                {
                    id = "attack_abyssal_beasts",
                    name = "Abyssal beasts",
                    intensity = "medium",
                    location = "Senntisten Asylum",
                    notes = "1,950 XP per kill.",
                    wiki = "https://runescape.wiki/w/Abyssal_beast",
                    requirements = {
                        levels = { { skill = "Slayer", level = 105 } },
                    },
                },
            },
        },
    },

    boosts = {
        "Wise perk: up to +4% XP, max 50,000 extra XP per day",
        "Torstol incense sticks: +2% XP",
        "Clan avatar: up to +6% XP (not for Ironmen)",
        "Knowledge bomb: +50% XP for 60 minutes (superior +100%)",
        "Rock of Resilience: +4% XP for 60 minutes",
        "Sceptre of enchantment: +4% XP for 24 hours",
    },
}
