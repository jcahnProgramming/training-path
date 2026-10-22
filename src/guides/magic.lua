--[[
    Magic training guide (data only, no code).
    Source: RuneScape Wiki, "Pay-to-play Magic training"
    https://runescape.wiki/w/Pay-to-play_Magic_training
    Licensed CC BY-NC-SA 3.0. Format: docs/guide-format.md.
    XP per kill figures are the ones the wiki lists for each monster.
]]

return {
    skill = "Magic",
    maxLevel = 120,
    wiki = "https://runescape.wiki/w/Pay-to-play_Magic_training",
    source = "Data: RuneScape Wiki, Pay-to-play Magic training (CC BY-NC-SA 3.0)",

    bands = {
        {
            from = 1, to = 21,
            methods = {
                {
                    id = "magic_troll_brutes",
                    name = "Troll brutes",
                    intensity = "high",
                    location = "Cave north of Burthorpe lodestone",
                    notes = "35 XP per kill. Weak to air spells. Drops are not worth picking up.",
                    wiki = "https://runescape.wiki/w/Troll_brute",
                },
                {
                    id = "magic_lvl1_enchant",
                    name = "Lvl-1 Enchant on sapphire necklaces",
                    intensity = "medium",
                    xpPerHour = 48000,
                    money = "Small profit or loss",
                    notes = "17.5 XP per cast. Makes games necklaces.",
                    wiki = "https://runescape.wiki/w/Lvl-1_Enchant",
                    requirements = {
                        levels = { { skill = "Magic", level = 7 } },
                    },
                    items = {
                        { label = "Sapphire necklaces", names = { "Sapphire necklace" } },
                        { label = "Cosmic runes", names = { "Cosmic rune" } },
                    },
                },
            },
        },
        {
            from = 21, to = 45,
            methods = {
                {
                    id = "magic_evil_daves_big_day_out",
                    name = "Evil Dave's Big Day Out (quest)",
                    intensity = "high",
                    notes = "At 30 Magic the reward lamp takes you straight to 45.",
                    wiki = "https://runescape.wiki/w/Evil_Dave%27s_Big_Day_Out",
                    requirements = {
                        levels = { { skill = "Magic", level = 30 } },
                    },
                },
                {
                    id = "magic_low_alchemy",
                    name = "Low Level Alchemy",
                    intensity = "medium",
                    xpPerHour = 62000,
                    money = "About one nature rune per cast",
                    notes = "Fastest XP until about level 40. Can be cast while gathering.",
                    wiki = "https://runescape.wiki/w/Low_Level_Alchemy",
                    items = {
                        { label = "Nature runes", names = { "Nature rune" } },
                    },
                },
                {
                    id = "magic_lvl2_enchant",
                    name = "Lvl-2 Enchant on emerald rings",
                    intensity = "medium",
                    money = "Can be profitable",
                    notes = "37 XP per cast. Makes rings of duelling.",
                    wiki = "https://runescape.wiki/w/Lvl-2_Enchant",
                    requirements = {
                        levels = { { skill = "Magic", level = 27 } },
                    },
                    items = {
                        { label = "Emerald rings", names = { "Emerald ring" } },
                        { label = "Cosmic runes", names = { "Cosmic rune" } },
                    },
                },
                {
                    id = "magic_wilderness_zombies",
                    name = "Zombies (Wilderness)",
                    intensity = "low",
                    location = "North-east of Wilderness Crater lodestone",
                    notes = "40 XP per kill. Weak to fire spells, aggressive, low max hit.",
                    wiki = "https://runescape.wiki/w/Zombie_(Wilderness)",
                    requirements = {
                        levels = { { skill = "Magic", level = 30 } },
                    },
                },
            },
        },
        {
            from = 45, to = 55,
            methods = {
                {
                    id = "magic_camelot_teleport",
                    name = "Camelot Teleport",
                    intensity = "high",
                    xpPerHour = 111000,
                    money = "One law rune per cast",
                    notes = "55.5 XP per cast. Use a staff of air so only law runes are used.",
                    wiki = "https://runescape.wiki/w/Camelot_Teleport",
                    items = {
                        { label = "Law runes", names = { "Law rune" } },
                        { label = "Air staff", contains = { "staff of air", "air battlestaff" } },
                    },
                },
                {
                    id = "magic_superheat_item",
                    name = "Superheat Item",
                    intensity = "high",
                    money = "Can be profitable",
                    notes = "Needs the Smithing level for the bar; 30 Smithing for steel recommended.",
                    crossovers = "Also trains Smithing",
                    wiki = "https://runescape.wiki/w/Superheat_Item",
                    requirements = {
                        levels = { { skill = "Magic", level = 43 } },
                    },
                    items = {
                        { label = "Nature runes", names = { "Nature rune" } },
                        { label = "Ores", contains = { " ore" } },
                    },
                },
                {
                    id = "magic_fetid_zombies",
                    name = "Fetid zombies",
                    intensity = "low",
                    location = "Wilderness north-west of Fort Forinthry",
                    notes = "250 XP per kill. Weak to air, permanently aggressive. Bring a blood amulet of fury.",
                    wiki = "https://runescape.wiki/w/Fetid_zombie",
                },
                {
                    id = "magic_crocodiles",
                    name = "Crocodiles",
                    intensity = "high",
                    location = "Desert south-west of Pollnivneach",
                    notes = "145 XP per kill. Weak to air. Bring desert heat protection.",
                    wiki = "https://runescape.wiki/w/Crocodile",
                },
            },
        },
        {
            from = 55, to = 70,
            methods = {
                {
                    id = "magic_high_alchemy",
                    name = "High Level Alchemy",
                    intensity = "medium",
                    xpPerHour = 65000,
                    money = "Depends on the item alched",
                    notes = "65k-78k XP/hr. Many players alch all the way to 99.",
                    wiki = "https://runescape.wiki/w/High_Level_Alchemy",
                    items = {
                        { label = "Nature runes", names = { "Nature rune" } },
                        { label = "Fire staff", contains = { "staff of fire", "fire battlestaff" } },
                    },
                },
                {
                    id = "magic_watchtower_teleport",
                    name = "Watchtower Teleport",
                    intensity = "high",
                    xpPerHour = 136000,
                    notes = "68 XP per cast. A staff of earth cuts the cost.",
                    wiki = "https://runescape.wiki/w/Watchtower_Teleport",
                    requirements = {
                        levels = { { skill = "Magic", level = 58 } },
                    },
                    items = {
                        { label = "Law runes", names = { "Law rune" } },
                        { label = "Earth staff", contains = { "staff of earth", "earth battlestaff" } },
                    },
                },
                {
                    id = "magic_humidify",
                    name = "Humidify",
                    intensity = "medium",
                    notes = "65 XP per cast. Fill and empty a fish bowl over and over.",
                    wiki = "https://runescape.wiki/w/Humidify",
                    requirements = {
                        levels = { { skill = "Magic", level = 68 } },
                        quests = { "Dream Mentor" },
                    },
                    items = {
                        { label = "Astral runes", names = { "Astral rune" } },
                    },
                },
                {
                    id = "magic_charge_air_orb",
                    name = "Charge Air Orb",
                    intensity = "high",
                    xpPerHour = 40000,
                    location = "Edgeville Dungeon",
                    money = "Profit or loss, check prices",
                    notes = "76 XP per cast.",
                    wiki = "https://runescape.wiki/w/Charge_Air_Orb",
                    requirements = {
                        levels = { { skill = "Magic", level = 66 } },
                    },
                    items = {
                        { label = "Unpowered orbs", names = { "Unpowered orb" } },
                        { label = "Cosmic runes", names = { "Cosmic rune" } },
                    },
                },
            },
        },
        {
            from = 70, to = 80,
            methods = {
                {
                    id = "magic_abyss",
                    name = "Abyssal monsters",
                    intensity = "low",
                    xpPerHour = 549601,
                    location = "Abyss, south-west or south-east corner",
                    notes = "AFK with Air Surge and AoE abilities. Corruption Blast adds 28% XP/hr. Good to 99.",
                    wiki = "https://runescape.wiki/w/Pay-to-play_Magic_training#Abyssal_training",
                },
                {
                    id = "magic_hunter_kit",
                    name = "Hunter Kit",
                    intensity = "high",
                    xpPerHour = 105000,
                    money = "Expensive: two astral runes per cast",
                    notes = "70 XP per cast. Stand near a bank chest or deposit box.",
                    wiki = "https://runescape.wiki/w/Hunter_Kit",
                    requirements = {
                        levels = { { skill = "Magic", level = 71 } },
                    },
                    items = {
                        { label = "Astral runes", names = { "Astral rune" } },
                    },
                },
                {
                    id = "magic_superglass_make",
                    name = "Superglass Make",
                    intensity = "high",
                    xpPerHour = 40000,
                    location = "Near a bank chest",
                    money = "Can profit from molten glass",
                    crossovers = "Also trains Crafting",
                    wiki = "https://runescape.wiki/w/Superglass_Make",
                    requirements = {
                        levels = { { skill = "Magic", level = 77 } },
                    },
                    items = {
                        { label = "Astral runes", names = { "Astral rune" } },
                        { label = "Seaweed", names = { "Seaweed" } },
                        { label = "Buckets of sand", names = { "Bucket of sand" } },
                    },
                },
            },
        },
        {
            from = 80, to = 91,
            methods = {
                {
                    id = "magic_plank_make",
                    name = "Plank Make on mahogany logs",
                    intensity = "high",
                    xpPerHour = 150000,
                    wiki = "https://runescape.wiki/w/Plank_Make",
                    requirements = {
                        levels = { { skill = "Magic", level = 86 } },
                        quests = { "Dream Mentor" },
                    },
                    items = {
                        { label = "Mahogany logs", names = { "Mahogany logs" } },
                        { label = "Astral runes", names = { "Astral rune" } },
                        { label = "Nature runes", names = { "Nature rune" } },
                    },
                },
                {
                    id = "magic_string_jewellery",
                    name = "String Jewellery",
                    intensity = "medium",
                    xpPerHour = 130000,
                    money = "Buy or craft unstrung amulets",
                    notes = "83 XP per amulet. A mystic mud staff cuts the cost.",
                    crossovers = "Also gives a little Crafting XP",
                    wiki = "https://runescape.wiki/w/String_Jewellery",
                    items = {
                        { label = "Unstrung amulets", contains = { "(unstrung)" } },
                        { label = "Astral runes", names = { "Astral rune" } },
                    },
                },
                {
                    id = "magic_abyssal_demons",
                    name = "Abyssal demons",
                    intensity = "low",
                    location = "Slayer Tower",
                    money = "Very good money and charms",
                    notes = "425 XP per kill. AFK with aggression potions.",
                    wiki = "https://runescape.wiki/w/Abyssal_demon",
                    requirements = {
                        levels = { { skill = "Slayer", level = 85 } },
                    },
                },
            },
        },
        {
            from = 91, to = 121,
            methods = {
                {
                    id = "magic_sift_soil",
                    name = "Sift Soil",
                    intensity = "low",
                    xpPerHour = 500000,
                    money = "Can be highly profitable",
                    notes = "Over 500k XP/hr with the master archaeologist's outfit. One astral rune per cast with a mud battlestaff.",
                    crossovers = "Soil comes from Archaeology",
                    wiki = "https://runescape.wiki/w/Sift_Soil",
                    items = {
                        { label = "Astral runes", names = { "Astral rune" } },
                        { label = "Mud battlestaff", contains = { "mud battlestaff", "mud staff" } },
                    },
                },
                {
                    id = "magic_magister",
                    name = "The Magister",
                    intensity = "high",
                    money = "Each kill costs a Key to the Crossing",
                    notes = "10,000 XP per kill. Best for training past 99.",
                    wiki = "https://runescape.wiki/w/The_Magister",
                    requirements = {
                        levels = { { skill = "Slayer", level = 115 } },
                    },
                    items = {
                        { label = "Key to the Crossing", names = { "Key to the Crossing" } },
                    },
                },
            },
        },
    },

    boosts = {
        "Magic, super magic and extreme magic potions, or a vecna skull, boost your level.",
        "Big Top Bonanza: weekly circus visit for up to 25,000 Magic XP.",
        "In combat, use the element the monster is weak to.",
    },
}
