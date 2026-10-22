--[[
    Farming training guide (data only, no code).
    Source: RuneScape Wiki, "Pay-to-play Farming training"
    https://runescape.wiki/w/Pay-to-play_Farming_training
    Licensed CC BY-NC-SA 3.0. Numbers copied from the wiki on 2026-10-22;
    values the wiki doesn't state are left out. Format: docs/guide-format.md
]]

return {
    skill = "Farming",
    maxLevel = 120,
    wiki = "https://runescape.wiki/w/Pay-to-play_Farming_training",
    source = "Data: RuneScape Wiki, Pay-to-play Farming training (CC BY-NC-SA 3.0)",

    bands = {
        {
            from = 1, to = 15,
            methods = {
                {
                    id = "farming_manure_mound",
                    name = "Digging manure mounds",
                    intensity = "low",
                    xpPerHour = 3750,
                    location = "Manor Farm or Anachronia Dinosaur Farm",
                    money = "Free",
                    notes = "2.5 XP every 2.4 seconds. Fastest way to 15, about 40 minutes.",
                    wiki = "https://runescape.wiki/w/Manure_mound",
                },
                {
                    id = "farming_allotments_low",
                    name = "Allotment runs",
                    intensity = "medium",
                    notes = "Potato (1), onion (5), cabbage (7), tomato (12). Use supercompost.",
                    wiki = "https://runescape.wiki/w/Allotment",
                },
                {
                    id = "farming_seedicide_tortoise",
                    name = "Seedicide on tortoises",
                    intensity = "medium",
                    xpPerHour = 20000,
                    location = "Northern Tree Gnome Stronghold",
                    notes = "From level 7. Seedicide destroys dropped seeds for double planting XP.",
                    crossovers = "Also trains combat",
                    wiki = "https://runescape.wiki/w/Seedicide",
                    requirements = {
                        levels = { { skill = "Farming", level = 7 } },
                    },
                },
            },
        },
        {
            from = 15, to = 30,
            methods = {
                {
                    id = "farming_tree_runs_low",
                    name = "Tree runs",
                    intensity = "medium",
                    location = "Tree patches",
                    notes = "Oak (15) 481.3 XP per tree with supercompost. Apple trees from 27.",
                    wiki = "https://runescape.wiki/w/Tree_patch",
                    items = {
                        { label = "Saplings", contains = { "sapling" } },
                    },
                },
                {
                    id = "farming_pof_start",
                    name = "Player-owned farm",
                    intensity = "low",
                    location = "Manor Farm",
                    notes = "From level 17 with 20 Construction. Raise animals in paddocks for weekly XP.",
                    wiki = "https://runescape.wiki/w/Player-owned_farm",
                    requirements = {
                        levels = {
                            { skill = "Farming", level = 17 },
                            { skill = "Construction", level = 20 },
                        },
                    },
                },
                {
                    id = "farming_seedicide_tortoise_15",
                    name = "Seedicide on tortoises",
                    intensity = "medium",
                    xpPerHour = 20000,
                    location = "Northern Tree Gnome Stronghold",
                    crossovers = "Also trains combat",
                    wiki = "https://runescape.wiki/w/Seedicide",
                },
            },
        },
        {
            from = 30, to = 50,
            methods = {
                {
                    id = "farming_hets_oasis_rose",
                    name = "Het's Oasis (rose bushes)",
                    intensity = "medium",
                    xpPerHour = 15000,
                    location = "Het's Oasis",
                    notes = "15k to 100k XP/hr from 30 to 86. Needs no special items or unlocks.",
                    crossovers = "Golden roses can be used to train Hunter",
                    wiki = "https://runescape.wiki/w/Het%27s_Oasis",
                },
                {
                    id = "farming_tree_runs_30",
                    name = "Tree and fruit tree runs",
                    intensity = "medium",
                    location = "Tree and fruit tree patches",
                    notes = "Willow (30) 1,481.5 XP, maple (45) 3,448.4. Orange (39) 2,586, curry (42) 3,037.",
                    wiki = "https://runescape.wiki/w/Tree_patch",
                    items = {
                        { label = "Saplings", contains = { "sapling" } },
                    },
                },
                {
                    id = "farming_pof_30",
                    name = "Player-owned farm",
                    intensity = "low",
                    location = "Manor Farm",
                    notes = "Weekly XP from breeding and raising animals.",
                    wiki = "https://runescape.wiki/w/Player-owned_farm",
                },
            },
        },
        {
            from = 50, to = 74,
            methods = {
                {
                    id = "farming_tree_runs_50",
                    name = "Tree and fruit tree runs",
                    intensity = "medium",
                    location = "Tree and fruit tree patches",
                    notes = "Yew (60) 7,150.9 XP, palm (68) 10,509.6, calquat (72) 12,516.6.",
                    wiki = "https://runescape.wiki/w/Tree_patch",
                    items = {
                        { label = "Saplings", contains = { "sapling" } },
                    },
                },
                {
                    id = "farming_hets_oasis_iris",
                    name = "Het's Oasis (iris, hydrangea)",
                    intensity = "medium",
                    location = "Het's Oasis",
                    notes = "Iris bushes at 50, hydrangea bushes at 70.",
                    crossovers = "Golden roses can be used to train Hunter",
                    wiki = "https://runescape.wiki/w/Het%27s_Oasis",
                },
                {
                    id = "farming_pof_50",
                    name = "Player-owned farm",
                    intensity = "low",
                    location = "Manor Farm",
                    notes = "Weekly XP from breeding and raising animals.",
                    wiki = "https://runescape.wiki/w/Player-owned_farm",
                },
            },
        },
        {
            from = 74, to = 90,
            methods = {
                {
                    id = "farming_seedicide_turoth",
                    name = "Seedicide on turoths",
                    intensity = "medium",
                    xpPerHour = 130000,
                    notes = "130k to 250k XP/hr. Vyrelords give 90k to 120k XP/hr.",
                    crossovers = "Also trains combat and Slayer",
                    wiki = "https://runescape.wiki/w/Seedicide",
                    requirements = {
                        levels = { { skill = "Slayer", level = 55 } },
                    },
                },
                {
                    id = "farming_tree_runs_74",
                    name = "Tree and fruit tree runs",
                    intensity = "medium",
                    location = "Tree and fruit tree patches",
                    notes = "Magic (75) 13,913.8 XP, spirit (83) 19,501.3.",
                    wiki = "https://runescape.wiki/w/Tree_patch",
                    items = {
                        { label = "Saplings", contains = { "sapling" } },
                    },
                },
                {
                    id = "farming_hets_oasis_74",
                    name = "Het's Oasis",
                    intensity = "medium",
                    location = "Het's Oasis",
                    notes = "Hydrangea bushes. Easiest method, no special items or unlocks.",
                    wiki = "https://runescape.wiki/w/Het%27s_Oasis",
                },
                {
                    id = "farming_rumberry",
                    name = "Rumberry bushes",
                    intensity = "low",
                    xpPerHour = 30000,
                    location = "South-western Tuai Leit, The Arc",
                    notes = "From level 86.",
                    wiki = "https://runescape.wiki/w/Pay-to-play_Farming_training",
                    requirements = {
                        levels = { { skill = "Farming", level = 86 } },
                        quests = { "Impressing the Locals" },
                    },
                },
            },
        },
        {
            from = 90, to = 101,
            methods = {
                {
                    id = "farming_seedicide_aquanite",
                    name = "Seedicide on aquanites",
                    intensity = "medium",
                    xpPerHour = 160000,
                    notes = "From level 91. Up to 160k XP/hr.",
                    crossovers = "Also trains combat and Slayer",
                    wiki = "https://runescape.wiki/w/Seedicide",
                    requirements = {
                        levels = {
                            { skill = "Farming", level = 91 },
                            { skill = "Slayer", level = 78 },
                        },
                    },
                },
                {
                    id = "farming_hets_oasis_hollyhock",
                    name = "Het's Oasis (hollyhock)",
                    intensity = "medium",
                    xpPerHour = 91000,
                    location = "Het's Oasis",
                    notes = "Up to 91k XP/hr at 90, plus flowers for beehive honeycombs.",
                    wiki = "https://runescape.wiki/w/Het%27s_Oasis",
                },
                {
                    id = "farming_tree_runs_90",
                    name = "Elder and crystal trees",
                    intensity = "medium",
                    notes = "Elder (90) 23,463 XP in Prifddinas. Crystal tree (94) 50,000 XP to plant, then 15,000 daily.",
                    wiki = "https://runescape.wiki/w/Elder_tree",
                },
                {
                    id = "farming_mushroom_clusters",
                    name = "Mushroom clusters",
                    intensity = "low",
                    xpPerHour = 50000,
                    location = "Uncharted Isles",
                    notes = "From 94. Goshima and the Turtle Islands give 30k XP/hr from 90.",
                    wiki = "https://runescape.wiki/w/Pay-to-play_Farming_training",
                    requirements = {
                        levels = { { skill = "Farming", level = 94 } },
                        quests = { "Impressing the Locals", "Flag Fall" },
                    },
                },
            },
        },
        {
            from = 101, to = 107,
            methods = {
                {
                    id = "farming_seedicide_aquanite_101",
                    name = "Seedicide on aquanites",
                    intensity = "medium",
                    xpPerHour = 160000,
                    crossovers = "Also trains combat and Slayer",
                    wiki = "https://runescape.wiki/w/Seedicide",
                    requirements = {
                        levels = { { skill = "Slayer", level = 78 } },
                    },
                },
                {
                    id = "farming_ciku",
                    name = "Ciku trees",
                    intensity = "medium",
                    location = "Fruit tree patches",
                    money = "Seeds are expensive",
                    notes = "25,664.1 XP per tree.",
                    wiki = "https://runescape.wiki/w/Pay-to-play_Farming_training",
                },
                {
                    id = "farming_hets_oasis_101",
                    name = "Het's Oasis (hollyhock)",
                    intensity = "medium",
                    xpPerHour = 91000,
                    location = "Het's Oasis",
                    wiki = "https://runescape.wiki/w/Het%27s_Oasis",
                },
            },
        },
        {
            from = 107, to = 113,
            methods = {
                {
                    id = "farming_guarana",
                    name = "Guarana trees",
                    intensity = "medium",
                    location = "Prifddinas fruit tree patch",
                    money = "Seed about 1,019 coins",
                    notes = "32,767 XP per tree. Fruity potions grow them instantly.",
                    wiki = "https://runescape.wiki/w/Pay-to-play_Farming_training",
                },
                {
                    id = "farming_tombshroom",
                    name = "Tombshrooms",
                    intensity = "medium",
                    notes = "From level 109. 9,032.4 base XP per harvest; paid with beans.",
                    wiki = "https://runescape.wiki/w/Tombshroom",
                    requirements = {
                        levels = { { skill = "Farming", level = 109 } },
                    },
                },
                {
                    id = "farming_seedicide_aquanite_107",
                    name = "Seedicide on aquanites",
                    intensity = "medium",
                    xpPerHour = 160000,
                    crossovers = "Also trains combat and Slayer",
                    wiki = "https://runescape.wiki/w/Seedicide",
                    requirements = {
                        levels = { { skill = "Slayer", level = 78 } },
                    },
                },
            },
        },
        {
            from = 113, to = 121,
            methods = {
                {
                    id = "farming_carambola",
                    name = "Carambola trees",
                    intensity = "medium",
                    location = "Prifddinas fruit tree patch",
                    money = "Seed about 8,354 coins",
                    notes = "41,254.1 XP per tree. Fruity potions grow them instantly.",
                    wiki = "https://runescape.wiki/w/Pay-to-play_Farming_training",
                },
                {
                    id = "farming_tombshroom_113",
                    name = "Tombshrooms",
                    intensity = "medium",
                    notes = "9,032.4 base XP per harvest; paid with beans.",
                    wiki = "https://runescape.wiki/w/Tombshroom",
                },
                {
                    id = "farming_seedicide_aquanite_113",
                    name = "Seedicide on aquanites",
                    intensity = "medium",
                    xpPerHour = 160000,
                    crossovers = "Also trains combat and Slayer",
                    wiki = "https://runescape.wiki/w/Seedicide",
                    requirements = {
                        levels = { { skill = "Slayer", level = 78 } },
                    },
                },
            },
        },
    },

    boosts = {
        "Farmer's outfit: +6% XP for the full set",
        "Farming urns: +20% XP (urn enhancer +25% from urns)",
        "Brassica primer: +10% herb, allotment and mushroom XP for 15 min",
        "Dwarven harvester: +100% XP, no produce",
        "Wolpertinger: double base XP and yield from bushes",
        "Player-owned farm: up to 2.95M XP per week at 92 Farming",
    },
}
