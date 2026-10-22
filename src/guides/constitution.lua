--[[
    Constitution training guide (data only, no code).
    Source: RuneScape Wiki, "Pay-to-play Constitution training" and
    "Pay-to-play Melee training" (CC BY-NC-SA 3.0), read 2026-10-22.
    Constitution XP comes from combat at one third of the combat XP rate.
    The wiki flags the melee page as needing updates after the 2023 combat
    XP changes, so XP per kill figures may be out of date.
    Values the wiki did not state are left out.
]]

return {
    skill = "Constitution",
    maxLevel = 99,
    wiki = "https://runescape.wiki/w/Pay-to-play_Constitution_training",
    source = "Data: RuneScape Wiki, Pay-to-play Constitution and Melee training (CC BY-NC-SA 3.0)",

    bands = {
        {
            from = 1, to = 25,
            methods = {
                {
                    id = "constitution_witchs_house",
                    name = "Witch's House to 23 Constitution",
                    intensity = "high",
                    notes = "Witch's House gives 6,325 Constitution XP, taking you to 23.",
                    wiki = "https://runescape.wiki/w/Pay-to-play_Melee_training#Quests_for_Constitution_experience",
                },
                {
                    id = "constitution_chickens",
                    name = "Chickens",
                    intensity = "medium",
                    location = "North of Lumbridge",
                    notes = "4.1 Constitution XP per kill. Any combat style trains Constitution.",
                    wiki = "https://runescape.wiki/w/Chicken",
                },
                {
                    id = "constitution_soul_wars",
                    name = "Soul Wars",
                    intensity = "high",
                    location = "Soul Wars portal, Edgeville",
                    notes = "Spend zeal on Constitution XP to train it without other combat skills. No levels needed.",
                    wiki = "https://runescape.wiki/w/Soul_Wars",
                    requirements = {
                        other = { "Members only" },
                    },
                },
            },
        },
        {
            from = 25, to = 40,
            methods = {
                {
                    id = "constitution_rock_crabs",
                    name = "Rock crabs",
                    intensity = "medium",
                    location = "North of Fremennik Province",
                    notes = "138.6 Constitution XP per kill. Low damage, lodestone nearby.",
                    wiki = "https://runescape.wiki/w/Rock_crab",
                },
                {
                    id = "constitution_hill_giants",
                    name = "Hill giants",
                    intensity = "medium",
                    location = "Southern end of Edgeville Dungeon",
                    notes = "74.2 Constitution XP per kill.",
                    wiki = "https://runescape.wiki/w/Hill_giant",
                },
                {
                    id = "constitution_pest_control",
                    name = "Pest Control",
                    intensity = "high",
                    location = "Void Knights' Outpost",
                    notes = "XP from killing pests, plus commendations you can spend on Constitution XP. Needs combat level 35.",
                    crossovers = "Also trains your combat style",
                    wiki = "https://runescape.wiki/w/Pest_Control",
                    requirements = {
                        other = { "Combat level 35" },
                    },
                },
            },
        },
        {
            from = 40, to = 50,
            methods = {
                {
                    id = "constitution_flesh_crawlers",
                    name = "Flesh Crawlers",
                    intensity = "medium",
                    location = "Stronghold of Security, level 2",
                    notes = "59.4 Constitution XP per kill. AoE abilities work well here. Bring food.",
                    wiki = "https://runescape.wiki/w/Flesh_Crawler",
                },
                {
                    id = "constitution_moss_giants",
                    name = "Moss giants",
                    intensity = "medium",
                    location = "Moss Giant Island or Varrock Sewers",
                    notes = "105.6 Constitution XP per kill.",
                    wiki = "https://runescape.wiki/w/Moss_giant",
                },
                {
                    id = "constitution_ghouls",
                    name = "Ghouls",
                    intensity = "medium",
                    location = "North of Canifis",
                    notes = "107.2 Constitution XP per kill.",
                    wiki = "https://runescape.wiki/w/Ghoul",
                },
            },
        },
        {
            from = 50, to = 70,
            methods = {
                {
                    id = "constitution_abyss_early",
                    name = "Abyss creatures",
                    intensity = "medium",
                    location = "The Abyss, south-western corner",
                    notes = "42.9 to 47 Constitution XP per kill. Creatures stop being aggressive after 10 minutes.",
                    wiki = "https://runescape.wiki/w/Pay-to-play_Melee_training#Abyssal_training",
                },
                {
                    id = "constitution_grotworms",
                    name = "Grotworms",
                    intensity = "medium",
                    location = "Grotworm Lair, middle level",
                    notes = "122.9 Constitution XP per kill.",
                    wiki = "https://runescape.wiki/w/Grotworm",
                },
                {
                    id = "constitution_hellhounds",
                    name = "Hellhounds",
                    intensity = "medium",
                    location = "Taverley Dungeon",
                    notes = "54.4 Constitution XP per kill. Good source of hard clues.",
                    wiki = "https://runescape.wiki/w/Hellhound",
                },
            },
        },
        {
            from = 70, to = 80,
            methods = {
                {
                    id = "constitution_shattered_worlds",
                    name = "Shattered Worlds",
                    intensity = "medium",
                    notes = "Safe minigame; worlds 70 to 80 are best. Avoid the Feeling Pumped mutator.",
                    wiki = "https://runescape.wiki/w/Shattered_Worlds",
                },
                {
                    id = "constitution_abyssal_demons",
                    name = "Abyssal demons",
                    intensity = "medium",
                    location = "Slayer Tower",
                    notes = "140.2 Constitution XP per kill.",
                    wiki = "https://runescape.wiki/w/Abyssal_demon",
                    requirements = {
                        levels = { { skill = "Slayer", level = 85 } },
                    },
                },
                {
                    id = "constitution_slayer",
                    name = "Slayer tasks",
                    intensity = "medium",
                    notes = "Trains Constitution alongside Slayer and your combat style.",
                    crossovers = "Also trains Slayer",
                    wiki = "https://runescape.wiki/w/Pay-to-play_Melee_training#Slayer",
                },
            },
        },
        {
            from = 80, to = 90,
            methods = {
                {
                    id = "constitution_vyrewatch",
                    name = "Vyrewatch",
                    intensity = "low",
                    xpPerHour = 160000,
                    location = "Darkmeyer",
                    money = "Up to 4M coins/hr if looted every 1 to 2 minutes",
                    notes = "160k to 215k Constitution XP/hr. Morytania legs 4 and 92 Prayer (Soul Split) recommended.",
                    crossovers = "Also combat, Prayer and Firemaking XP",
                    wiki = "https://runescape.wiki/w/Pay-to-play_Melee_training#Vyrewatch_training",
                    requirements = {
                        quests = { "River of Blood" },
                    },
                    items = {
                        { label = "Morytania legs 4", names = { "Morytania legs 4" } },
                    },
                },
                {
                    id = "constitution_ravenous_ghouls",
                    name = "Ravenous ghouls",
                    intensity = "medium",
                    location = "Slayer Tower Mausoleum",
                    notes = "239.2 Constitution XP per kill. Melee needs a dragon rider lance or noxious scythe for 100% accuracy.",
                    wiki = "https://runescape.wiki/w/Ravenous_ghoul",
                },
                {
                    id = "constitution_quests_late",
                    name = "Big Constitution quest rewards",
                    intensity = "high",
                    notes = "The Firemaker's Curse gives 76,000 XP (needs 76 Constitution). Missing, Presumed Death gives 50,000.",
                    wiki = "https://runescape.wiki/w/Pay-to-play_Melee_training#Quests_for_Constitution_experience",
                },
            },
        },
        {
            from = 90, to = 100,
            methods = {
                {
                    id = "constitution_vyrewatch_high",
                    name = "Vyrewatch",
                    intensity = "low",
                    xpPerHour = 160000,
                    location = "Darkmeyer",
                    money = "Up to 4M coins/hr if looted every 1 to 2 minutes",
                    notes = "160k to 215k Constitution XP/hr. Best with the elite Morytania achievements.",
                    crossovers = "Also combat, Prayer and Firemaking XP",
                    wiki = "https://runescape.wiki/w/Pay-to-play_Melee_training#Vyrewatch_training",
                    requirements = {
                        quests = { "River of Blood" },
                    },
                    items = {
                        { label = "Morytania legs 4", names = { "Morytania legs 4" } },
                    },
                },
                {
                    id = "constitution_arch_glacor",
                    name = "Arch-Glacor",
                    intensity = "high",
                    location = "Glacor Front, Senntisten",
                    notes = "1,072.5 Constitution XP per kill.",
                    wiki = "https://runescape.wiki/w/Arch-Glacor",
                },
                {
                    id = "constitution_abyssal_beasts",
                    name = "Abyssal beasts",
                    intensity = "medium",
                    location = "Senntisten Asylum",
                    notes = "643.5 Constitution XP per kill.",
                    wiki = "https://runescape.wiki/w/Abyssal_beast",
                    requirements = {
                        levels = { { skill = "Slayer", level = 105 } },
                    },
                },
                {
                    id = "constitution_corrupted_scorpions",
                    name = "Corrupted scorpions",
                    intensity = "low",
                    location = "Sophanem Slayer Dungeon",
                    notes = "148.5 Constitution XP per kill. The dungeon chest can collect drops for you.",
                    wiki = "https://runescape.wiki/w/Corrupted_scorpion",
                    requirements = {
                        levels = { { skill = "Slayer", level = 88 } },
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
