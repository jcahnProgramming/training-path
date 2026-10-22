--[[
    Cooking training guide (data only, no code).
    Source: RuneScape Wiki, "Pay-to-play Cooking training" (CC BY-NC-SA 3.0).
    Format: docs/guide-format.md
]]

return {
    skill = "Cooking",
    maxLevel = 99,
    wiki = "https://runescape.wiki/w/Pay-to-play_Cooking_training",
    source = "Data: RuneScape Wiki, Pay-to-play Cooking training (CC BY-NC-SA 3.0)",

    bands = {
        {
            from = 1, to = 15,
            methods = {
                {
                    id = "cooking_shrimp_anchovy_chicken",
                    name = "Shrimps, anchovies or chicken",
                    intensity = "medium",
                    location = "Range near a bank, or a portable range",
                    money = "Cheap",
                    notes = "About 125 of any of these. Expect around 40% to burn.",
                    wiki = "https://runescape.wiki/w/Pay-to-play_Cooking_training",
                    items = {
                        { label = "Raw shrimps, anchovies or chicken", names = { "Raw shrimps", "Raw anchovies", "Raw chicken" } },
                    },
                },
            },
        },
        {
            from = 15, to = 28,
            methods = {
                {
                    id = "cooking_trout",
                    name = "Trout",
                    intensity = "medium",
                    xpPerHour = 25000,
                    location = "Range near a bank, or a portable range",
                    money = "About -28k total",
                    notes = "70 XP each, about 125 trout. 30k XP/hr on a portable range. Stops burning at 49.",
                    crossovers = "Fly fish the trout yourself for Fishing XP",
                    wiki = "https://runescape.wiki/w/Raw_trout",
                    requirements = { levels = { { skill = "Cooking", level = 15 } } },
                    items = {
                        { label = "Raw trout", names = { "Raw trout" } },
                    },
                },
            },
        },
        {
            from = 28, to = 52,
            methods = {
                {
                    id = "cooking_wine",
                    name = "Jugs of wine",
                    intensity = "high",
                    xpPerHour = 700000,
                    location = "Anywhere (near a bank)",
                    money = "About -105k per inventory",
                    notes = "Use grapes on jugs of water. Wiki says upwards of 700k XP/hr.",
                    wiki = "https://runescape.wiki/w/Jug_of_wine",
                    requirements = { levels = { { skill = "Cooking", level = 35 } } },
                    items = {
                        { label = "Grapes", names = { "Grapes" } },
                        { label = "Jugs of water", names = { "Jug of water" } },
                    },
                },
                {
                    id = "cooking_sweetcorn",
                    name = "Sweetcorn",
                    intensity = "medium",
                    xpPerHour = 150000,
                    location = "Portable range (world 84, Fort Forinthry) or range near a bank",
                    money = "-13.42 gp/xp",
                    notes = "104 XP each, about 1,000 sweetcorn. 181k XP/hr on a portable range. Stops burning at 53.",
                    wiki = "https://runescape.wiki/w/Sweetcorn",
                    requirements = { levels = { { skill = "Cooking", level = 28 } } },
                    items = {
                        { label = "Sweetcorn", names = { "Sweetcorn" } },
                    },
                },
            },
        },
        {
            from = 52, to = 66,
            methods = {
                {
                    id = "cooking_desert_sole",
                    name = "Desert sole",
                    intensity = "medium",
                    xpPerHour = 200000,
                    location = "Portable range (world 84, Fort Forinthry) or range near a bank",
                    money = "-5.49 gp/xp",
                    notes = "142.5 XP each. 241k XP/hr on a portable range. Stops burning at 81 with cooking gauntlets.",
                    crossovers = "Fish the sole in Menaphos for Fishing XP",
                    wiki = "https://runescape.wiki/w/Raw_desert_sole",
                    requirements = { levels = { { skill = "Cooking", level = 52 } } },
                    items = {
                        { label = "Raw desert sole", names = { "Raw desert sole" } },
                        { label = "Cooking gauntlets (fewer burns)", names = { "Cooking gauntlets" } },
                    },
                },
            },
        },
        {
            from = 66, to = 80,
            methods = {
                {
                    id = "cooking_ghostly_sole",
                    name = "Ghostly sole",
                    intensity = "medium",
                    xpPerHour = 225000,
                    location = "Portable range (world 84, Fort Forinthry) or range near a bank",
                    money = "-1.91 gp/xp",
                    notes = "160 XP each. 271k XP/hr on a portable range.",
                    crossovers = "Fish the sole in the City of Um for Fishing XP",
                    wiki = "https://runescape.wiki/w/Raw_ghostly_sole",
                    requirements = { levels = { { skill = "Cooking", level = 66 } } },
                    items = {
                        { label = "Raw ghostly sole", names = { "Raw ghostly sole" } },
                    },
                },
                {
                    id = "cooking_desert_sole_high",
                    name = "Desert sole",
                    intensity = "medium",
                    xpPerHour = 200000,
                    location = "Portable range (world 84, Fort Forinthry) or range near a bank",
                    money = "-5.49 gp/xp",
                    notes = "142.5 XP each. Stops burning at 81 with cooking gauntlets.",
                    wiki = "https://runescape.wiki/w/Raw_desert_sole",
                    items = {
                        { label = "Raw desert sole", names = { "Raw desert sole" } },
                        { label = "Cooking gauntlets (fewer burns)", names = { "Cooking gauntlets" } },
                    },
                },
            },
        },
        {
            from = 80, to = 90,
            methods = {
                {
                    id = "cooking_beltfish",
                    name = "Beltfish",
                    intensity = "medium",
                    xpPerHour = 231000,
                    location = "Portable range (world 84, Fort Forinthry) or range near a bank",
                    money = "-4.92 gp/xp",
                    notes = "165 XP each. 280k XP/hr on a portable range. High burn rate without gauntlets.",
                    wiki = "https://runescape.wiki/w/Raw_beltfish",
                    requirements = { levels = { { skill = "Cooking", level = 80 } } },
                    items = {
                        { label = "Raw beltfish", names = { "Raw beltfish" } },
                        { label = "Cooking gauntlets (fewer burns)", names = { "Cooking gauntlets" } },
                    },
                },
            },
        },
        {
            from = 90, to = 95,
            methods = {
                {
                    id = "cooking_rocktail",
                    name = "Rocktail",
                    intensity = "medium",
                    xpPerHour = 315000,
                    location = "Portable range (world 84, Fort Forinthry) or range near a bank",
                    money = "-1.84 gp/xp",
                    notes = "225 XP each. 381k XP/hr on a portable range. Burns without gauntlets.",
                    wiki = "https://runescape.wiki/w/Raw_rocktail",
                    requirements = { levels = { { skill = "Cooking", level = 93 } } },
                    items = {
                        { label = "Raw rocktail", names = { "Raw rocktail" } },
                        { label = "Cooking gauntlets (fewer burns)", names = { "Cooking gauntlets" } },
                    },
                },
                {
                    id = "cooking_shark",
                    name = "Shark",
                    intensity = "medium",
                    xpPerHour = 294000,
                    location = "Portable range (world 84, Fort Forinthry) or range near a bank",
                    money = "-0.44 gp/xp",
                    notes = "210 XP each. 355k XP/hr on a portable range. Stops burning at 94 with gauntlets.",
                    wiki = "https://runescape.wiki/w/Raw_shark",
                    requirements = { levels = { { skill = "Cooking", level = 90 } } },
                    items = {
                        { label = "Raw shark", names = { "Raw shark" } },
                        { label = "Cooking gauntlets (fewer burns)", names = { "Cooking gauntlets" } },
                    },
                },
            },
        },
        {
            from = 95, to = 99,
            methods = {
                {
                    id = "cooking_blue_blubber",
                    name = "Blue blubber jellyfish",
                    intensity = "medium",
                    xpPerHour = 329000,
                    location = "Portable range (world 84, Fort Forinthry) or range near a bank",
                    money = "-9.7 gp/xp",
                    notes = "235 XP each. 398k XP/hr on a portable range. Very low burn chance.",
                    wiki = "https://runescape.wiki/w/Raw_blue_blubber_jellyfish",
                    requirements = { levels = { { skill = "Cooking", level = 95 } } },
                    items = {
                        { label = "Raw blue blubber jellyfish", names = { "Raw blue blubber jellyfish" } },
                    },
                },
            },
        },
        {
            from = 99, to = 100,
            methods = {
                {
                    id = "cooking_sailfish",
                    name = "Sailfish",
                    intensity = "medium",
                    xpPerHour = 378000,
                    location = "Portable range (world 84, Fort Forinthry) or range near a bank",
                    money = "About -20 gp/xp",
                    notes = "270 XP each. 457k XP/hr on a portable range. Wear the cooking cape or gauntlets to avoid burns.",
                    wiki = "https://runescape.wiki/w/Raw_sailfish",
                    requirements = { levels = { { skill = "Cooking", level = 99 } } },
                    items = {
                        { label = "Raw sailfish", names = { "Raw sailfish" } },
                        { label = "Cooking gauntlets or cape", names = { "Cooking gauntlets", "Cooking cape", "Cooking cape (t)" } },
                    },
                },
            },
        },
    },

    boosts = {
        "Portable range: +21% base XP",
        "Bonfire: +10% XP (not in Prifddinas, Yeti Town or Menaphos)",
        "Sous chef's outfit: +1 to 6% XP",
        "Cooking urns: +20% XP, urn enhancer +25%",
        "Brawling gloves (Cooking): +50 to 75% XP",
        "Dwarven army axe: +3 XP per action",
    },
}
