--[[
    Herblore training guide (data only, no code).
    Source: RuneScape Wiki, "Pay-to-play Herblore training"
    https://runescape.wiki/w/Pay-to-play_Herblore_training
    Licensed CC BY-NC-SA 3.0. Numbers copied from the wiki on 2026-10-22;
    values the wiki doesn't state are left out. Format: docs/guide-format.md
]]

return {
    skill = "Herblore",
    maxLevel = 120,
    wiki = "https://runescape.wiki/w/Pay-to-play_Herblore_training",
    source = "Data: RuneScape Wiki, Pay-to-play Herblore training (CC BY-NC-SA 3.0)",

    bands = {
        {
            from = 1, to = 12,
            methods = {
                {
                    id = "herblore_early_quests",
                    name = "Herblore quests",
                    intensity = "medium",
                    notes = "Druidic Ritual, Jungle Potion, Recruitment Drive and The Dig Site give early Herblore XP.",
                    wiki = "https://runescape.wiki/w/Druidic_Ritual",
                    requirements = {
                        quests = { "Druidic Ritual" },
                    },
                },
                {
                    id = "herblore_attack_potion",
                    name = "Attack potions",
                    intensity = "high",
                    money = "Small loss",
                    notes = "25 XP each. 25 potions take you to level 12.",
                    wiki = "https://runescape.wiki/w/Attack_potion",
                    requirements = {
                        quests = { "Druidic Ritual" },
                    },
                    items = {
                        { label = "Guam potion (unf)", names = { "Guam potion (unf)" } },
                        { label = "Eye of newt", names = { "Eye of newt" } },
                    },
                },
            },
        },
        {
            from = 12, to = 26,
            methods = {
                {
                    id = "herblore_strength_potion",
                    name = "Strength potions",
                    intensity = "high",
                    location = "Portable well (e.g. Fort Forinthry, world 84)",
                    money = "Loss",
                    notes = "40 XP each. 144 potions take you from 12 to 26.",
                    wiki = "https://runescape.wiki/w/Strength_potion",
                    items = {
                        { label = "Tarromin potion (unf)", names = { "Tarromin potion (unf)" } },
                        { label = "Limpwurt root", names = { "Limpwurt root" } },
                    },
                },
            },
        },
        {
            from = 26, to = 38,
            methods = {
                {
                    id = "herblore_energy_potion",
                    name = "Energy potions",
                    intensity = "high",
                    location = "Portable well",
                    money = "Loss",
                    notes = "67.5 XP each. 322 potions take you from 26 to 38.",
                    wiki = "https://runescape.wiki/w/Energy_potion",
                    items = {
                        { label = "Harralander potion (unf)", names = { "Harralander potion (unf)" } },
                        { label = "Chocolate dust", names = { "Chocolate dust" } },
                    },
                },
            },
        },
        {
            from = 38, to = 55,
            methods = {
                {
                    id = "herblore_prayer_potion",
                    name = "Prayer potions",
                    intensity = "high",
                    location = "Portable well",
                    money = "Small profit",
                    notes = "87.5 XP each. 1,557 potions take you from 38 to 55.",
                    wiki = "https://runescape.wiki/w/Prayer_potion",
                    items = {
                        { label = "Ranarr potion (unf)", names = { "Ranarr potion (unf)" } },
                        { label = "Snape grass", names = { "Snape grass" } },
                    },
                },
                {
                    id = "herblore_harralander_tar",
                    name = "Harralander tar",
                    intensity = "high",
                    xpPerHour = 140000,
                    money = "Loss (-1,315 per set)",
                    notes = "Needs level 44. 72.5 XP per set of 15 tar. Tarromin tar gives 25% less XP but a small profit.",
                    wiki = "https://runescape.wiki/w/Harralander_tar",
                    requirements = {
                        levels = { { skill = "Herblore", level = 44 } },
                    },
                    items = {
                        { label = "Pestle and mortar", names = { "Pestle and mortar" } },
                        { label = "Clean harralander", names = { "Clean harralander" } },
                        { label = "Swamp tar", names = { "Swamp tar" }, count = 15 },
                    },
                },
            },
        },
        {
            from = 55, to = 63,
            methods = {
                {
                    id = "herblore_super_strength",
                    name = "Super strength potions",
                    intensity = "high",
                    location = "Portable well",
                    notes = "125 XP each. 1,616 potions take you from 55 to 63.",
                    wiki = "https://runescape.wiki/w/Super_strength_potion",
                    items = {
                        { label = "Kwuarm potion (unf)", names = { "Kwuarm potion (unf)" } },
                        { label = "Limpwurt root", names = { "Limpwurt root" } },
                    },
                },
            },
        },
        {
            from = 63, to = 72,
            methods = {
                {
                    id = "herblore_super_restore",
                    name = "Super restore potions",
                    intensity = "high",
                    location = "Portable well",
                    money = "Loss",
                    notes = "142.5 XP each. 3,724 potions take you from 63 to 72.",
                    wiki = "https://runescape.wiki/w/Super_restore_potion",
                    items = {
                        { label = "Snapdragon potion (unf)", names = { "Snapdragon potion (unf)" } },
                        { label = "Red spiders' eggs", names = { "Red spiders' eggs" } },
                    },
                },
            },
        },
        {
            from = 72, to = 81,
            methods = {
                {
                    id = "herblore_super_ranging",
                    name = "Super ranging potions",
                    intensity = "high",
                    location = "Portable well",
                    money = "Small profit",
                    notes = "162.5 XP each. 7,961 potions take you from 72 to 81.",
                    wiki = "https://runescape.wiki/w/Super_ranging_potion",
                    items = {
                        { label = "Dwarf weed potion (unf)", names = { "Dwarf weed potion (unf)" } },
                        { label = "Wine of Zamorak", names = { "Wine of Zamorak" } },
                    },
                },
            },
        },
        {
            from = 81, to = 88,
            methods = {
                {
                    id = "herblore_saradomin_brew",
                    name = "Saradomin brews",
                    intensity = "high",
                    location = "Portable well",
                    money = "Small profit",
                    notes = "180 XP each.",
                    wiki = "https://runescape.wiki/w/Saradomin_brew",
                    items = {
                        { label = "Toadflax potion (unf)", names = { "Toadflax potion (unf)" } },
                        { label = "Crushed nest", names = { "Crushed nest" } },
                    },
                },
                {
                    id = "herblore_combination_81",
                    name = "Combination potions",
                    intensity = "high",
                    xpPerHour = 350000,
                    money = "Varies, can be free or expensive",
                    notes = "Grand potions and super prayer renewal give over 350k XP/hr. Needs a crystal flask and 4-dose potions.",
                    wiki = "https://runescape.wiki/w/Combination_potion",
                    requirements = {
                        quests = { "Plague's End" },
                    },
                    items = {
                        { label = "Crystal flask", names = { "Crystal flask" } },
                    },
                },
            },
        },
        {
            from = 88, to = 96,
            methods = {
                {
                    id = "herblore_primal_extract",
                    name = "Primal extracts",
                    intensity = "high",
                    xpPerHour = 355250,
                    money = "Profitable (about 1M/hr)",
                    notes = "Needs level 90. Primal fruit pulp into empty vials.",
                    wiki = "https://runescape.wiki/w/Primal_extract",
                    requirements = {
                        levels = { { skill = "Herblore", level = 90 } },
                    },
                    items = {
                        { label = "Primal fruit pulp", names = { "Primal fruit pulp" } },
                        { label = "Vial", names = { "Vial" } },
                    },
                },
                {
                    id = "herblore_extreme_potions",
                    name = "Extreme potions",
                    intensity = "high",
                    location = "Portable well",
                    notes = "Extreme attack (88) 220 XP each, up to extreme necromancy (93) 265 XP each.",
                    wiki = "https://runescape.wiki/w/Extreme_attack",
                },
                {
                    id = "herblore_combination_88",
                    name = "Combination potions",
                    intensity = "high",
                    xpPerHour = 350000,
                    money = "Varies",
                    notes = "Super melee over 450k XP/hr and super warmaster's 720k need unreadable pages.",
                    wiki = "https://runescape.wiki/w/Combination_potion",
                    requirements = {
                        quests = { "Plague's End" },
                    },
                    items = {
                        { label = "Crystal flask", names = { "Crystal flask" } },
                    },
                },
            },
        },
        {
            from = 96, to = 99,
            methods = {
                {
                    id = "herblore_overload",
                    name = "Overloads",
                    intensity = "high",
                    location = "Portable well",
                    money = "Expensive",
                    notes = "About 1,000 XP each (1,100 with a portable well). Six extreme potions plus clean torstol.",
                    wiki = "https://runescape.wiki/w/Overload",
                    items = {
                        { label = "Clean torstol", names = { "Clean torstol" } },
                    },
                },
                {
                    id = "herblore_primal_extract_96",
                    name = "Primal extracts",
                    intensity = "high",
                    xpPerHour = 355250,
                    money = "Profitable",
                    wiki = "https://runescape.wiki/w/Primal_extract",
                    items = {
                        { label = "Primal fruit pulp", names = { "Primal fruit pulp" } },
                        { label = "Vial", names = { "Vial" } },
                    },
                },
            },
        },
        {
            from = 99, to = 107,
            methods = {
                {
                    id = "herblore_primal_extract_99",
                    name = "Primal extracts",
                    intensity = "high",
                    xpPerHour = 355250,
                    money = "Profitable",
                    notes = "355k XP/hr to 101, then 297k XP/hr from 102 with about 5.2M profit/hr.",
                    wiki = "https://runescape.wiki/w/Primal_extract",
                    items = {
                        { label = "Primal fruit pulp", names = { "Primal fruit pulp" } },
                        { label = "Vial", names = { "Vial" } },
                    },
                },
                {
                    id = "herblore_poison_bomb",
                    name = "Poison bombs",
                    intensity = "high",
                    money = "Expensive",
                    notes = "950 XP each, to level 101.",
                    wiki = "https://runescape.wiki/w/Pay-to-play_Herblore_training",
                    items = {
                        { label = "Bomb vial", names = { "Bomb vial" } },
                        { label = "Primal extract", names = { "Primal extract" } },
                    },
                },
                {
                    id = "herblore_sticky_bomb",
                    name = "Sticky bombs",
                    intensity = "high",
                    money = "Loss",
                    notes = "1,000 XP each, to level 107. Beak snot, dinosaur claws and clean cadantine.",
                    wiki = "https://runescape.wiki/w/Pay-to-play_Herblore_training",
                    items = {
                        { label = "Bomb vial", names = { "Bomb vial" } },
                    },
                },
            },
        },
        {
            from = 107, to = 121,
            methods = {
                {
                    id = "herblore_primal_extract_107",
                    name = "Primal extracts",
                    intensity = "high",
                    xpPerHour = 297250,
                    money = "Very profitable",
                    notes = "261k XP/hr from 112, with about 8.4M profit/hr.",
                    wiki = "https://runescape.wiki/w/Primal_extract",
                    items = {
                        { label = "Primal fruit pulp", names = { "Primal fruit pulp" } },
                        { label = "Vial", names = { "Vial" } },
                    },
                },
                {
                    id = "herblore_vulnerability_bomb",
                    name = "Vulnerability bombs",
                    intensity = "high",
                    money = "Small loss",
                    notes = "1,100 XP each, to level 118. Soul runes, chaos runes, bottled dinosaur roar and clean dwarf weed.",
                    wiki = "https://runescape.wiki/w/Vulnerability_bomb",
                    items = {
                        { label = "Bomb vial", names = { "Bomb vial" } },
                        { label = "Bottled dinosaur roar", names = { "Bottled dinosaur roar" } },
                    },
                },
                {
                    id = "herblore_powerburst_feats",
                    name = "Powerbursts of feats",
                    intensity = "high",
                    money = "Expensive",
                    notes = "1,600 XP each, 118 to 120.",
                    wiki = "https://runescape.wiki/w/Powerburst_of_feats",
                    items = {
                        { label = "Powerburst vial", names = { "Powerburst vial" } },
                        { label = "Primal extract", names = { "Primal extract" } },
                    },
                },
            },
        },
    },

    boosts = {
        "Portable well: +10% XP and 5% chance of an extra potion",
        "Botanist's outfit: +6% XP for the full set",
        "Plague's End: +5% XP on 6-dose combination potions",
        "Voice of Seren: +20% combination potion XP in Meilyr",
        "Herbicide: burns dropped herbs for double cleaning XP",
        "Herby Werby (Anachronia): weekly XP, needs Distraction and Diversion",
    },
}
