--[[
    Fletching training guide (data only, no code).
    Source: RuneScape Wiki, "Pay-to-play Fletching training"
    https://runescape.wiki/w/Pay-to-play_Fletching_training
    Licensed CC BY-NC-SA 3.0. Format: docs/guide-format.md
    XP rates are the wiki's base XP/hr. The wiki notes the page may be
    out of date after the 2026 mid-game rebalance.
]]

return {
    skill = "Fletching",
    maxLevel = 110,
    wiki = "https://runescape.wiki/w/Pay-to-play_Fletching_training",
    source = "Data: RuneScape Wiki, Pay-to-play Fletching training (CC BY-NC-SA 3.0)",

    bands = {
        {
            from = 1, to = 35,
            methods = {
                {
                    id = "fletching_headless_shafts",
                    name = "Headless arrows",
                    intensity = "low",
                    xpPerHour = 45000,
                    money = "Profitable",
                    notes = "Add feathers to arrow shafts. 15 XP each.",
                    wiki = "https://runescape.wiki/w/Headless_arrow",
                    items = {
                        { label = "Arrow shafts", names = { "Arrow shaft" } },
                        { label = "Feathers", names = { "Feather" } },
                    },
                },
                {
                    id = "fletching_arrow_shafts",
                    name = "Arrow shafts from logs",
                    intensity = "low",
                    xpPerHour = 10000,
                    money = "Costs money",
                    notes = "Slow. Oak shafts 15k XP/hr at 15, willow 20k at 30.",
                    wiki = "https://runescape.wiki/w/Arrow_shaft",
                    items = { { label = "Logs", contains = { "logs" } } },
                },
            },
        },
        {
            from = 35, to = 52,
            methods = {
                {
                    id = "fletching_willow_longbow_string",
                    name = "String willow longbows",
                    intensity = "low",
                    xpPerHour = 124500,
                    money = "Profitable",
                    notes = "Fletching the unstrung bows is 83k XP/hr. Shortbows: 35+, 99.6k XP/hr.",
                    wiki = "https://runescape.wiki/w/Willow_longbow",
                    requirements = { levels = { { skill = "Fletching", level = 25 } } },
                    items = {
                        { label = "Willow longbow (unstrung)", names = { "Willow longbow (unstrung)" } },
                        { label = "Bowstrings", names = { "Bowstring" } },
                    },
                },
                {
                    id = "fletching_maple_shortbow_string",
                    name = "String maple shortbows",
                    intensity = "low",
                    xpPerHour = 150000,
                    money = "Profitable",
                    wiki = "https://runescape.wiki/w/Maple_shortbow",
                    requirements = { levels = { { skill = "Fletching", level = 50 } } },
                    items = {
                        { label = "Maple shortbow (unstrung)", names = { "Maple shortbow (unstrung)" } },
                        { label = "Bowstrings", names = { "Bowstring" } },
                    },
                },
            },
        },
        {
            from = 52, to = 69,
            methods = {
                {
                    id = "fletching_broad_arrows",
                    name = "Broad arrows",
                    intensity = "high",
                    xpPerHour = 675000,
                    money = "Expensive",
                    notes = "Unlock broad arrowheads with 300 Slayer points. Untradeable.",
                    wiki = "https://runescape.wiki/w/Broad_arrows",
                    requirements = {
                        levels = { { skill = "Fletching", level = 52 } },
                        other = { "300 Slayer points to unlock" },
                    },
                    items = {
                        { label = "Broad arrowheads", names = { "Broad arrowheads" } },
                        { label = "Headless arrows", names = { "Headless arrow" } },
                    },
                },
                {
                    id = "fletching_adamant_bolts",
                    name = "Adamant bolts",
                    intensity = "high",
                    xpPerHour = 420000,
                    money = "Costs money",
                    wiki = "https://runescape.wiki/w/Adamant_bolts",
                    requirements = { levels = { { skill = "Fletching", level = 61 } } },
                    items = {
                        { label = "Adamant bolts (unf)", names = { "Adamant bolts (unf)" } },
                        { label = "Feathers", names = { "Feather" } },
                    },
                },
                {
                    id = "fletching_maple_longbow_string",
                    name = "String maple longbows",
                    intensity = "low",
                    xpPerHour = 174600,
                    money = "Profitable",
                    notes = "Yew shortbows at 70: 202.5k XP/hr.",
                    wiki = "https://runescape.wiki/w/Maple_longbow",
                    requirements = { levels = { { skill = "Fletching", level = 55 } } },
                    items = {
                        { label = "Maple longbow (unstrung)", names = { "Maple longbow (unstrung)" } },
                        { label = "Bowstrings", names = { "Bowstring" } },
                    },
                },
            },
        },
        {
            from = 69, to = 81,
            methods = {
                {
                    id = "fletching_rune_bolts",
                    name = "Rune bolts",
                    intensity = "high",
                    xpPerHour = 600000,
                    money = "Costs money",
                    wiki = "https://runescape.wiki/w/Rune_bolts",
                    requirements = { levels = { { skill = "Fletching", level = 69 } } },
                    items = {
                        { label = "Rune bolts (unf)", names = { "Rune bolts (unf)" } },
                        { label = "Feathers", names = { "Feather" } },
                    },
                },
                {
                    id = "fletching_rune_arrows",
                    name = "Rune arrows",
                    intensity = "high",
                    xpPerHour = 562500,
                    money = "Costs money",
                    wiki = "https://runescape.wiki/w/Rune_arrow",
                    requirements = { levels = { { skill = "Fletching", level = 75 } } },
                    items = {
                        { label = "Rune arrowheads", names = { "Rune arrowheads" } },
                        { label = "Headless arrows", names = { "Headless arrow" } },
                    },
                },
                {
                    id = "fletching_yew_longbow_string",
                    name = "String yew longbows",
                    intensity = "low",
                    xpPerHour = 225000,
                    money = "Profitable",
                    wiki = "https://runescape.wiki/w/Yew_longbow",
                    requirements = { levels = { { skill = "Fletching", level = 75 } } },
                    items = {
                        { label = "Yew longbow (unstrung)", names = { "Yew longbow (unstrung)" } },
                        { label = "Bowstrings", names = { "Bowstring" } },
                    },
                },
                {
                    id = "fletching_dream_of_iaia",
                    name = "Dream of Iaia fletcher's hut",
                    intensity = "low",
                    xpPerHour = 350000,
                    location = "Anachronia",
                    notes = "Stores up to 350k XP, then recharge with wood from Anachronia base camp.",
                    wiki = "https://runescape.wiki/w/Dream_of_Iaia",
                    requirements = {
                        levels = { { skill = "Fletching", level = 75 } },
                        quests = { "Extinction" },
                    },
                },
            },
        },
        {
            from = 81, to = 100,
            methods = {
                {
                    id = "fletching_rune_darts",
                    name = "Rune darts",
                    intensity = "high",
                    xpPerHour = 1034000,
                    money = "Very expensive",
                    notes = "Fastest method. Dragon darts are 1.5M XP/hr but cost far more.",
                    wiki = "https://runescape.wiki/w/Rune_dart",
                    requirements = { levels = { { skill = "Fletching", level = 81 } } },
                    items = {
                        { label = "Rune dart tips", names = { "Rune dart tip" } },
                        { label = "Feathers", names = { "Feather" } },
                    },
                },
                {
                    id = "fletching_magic_longbow_string",
                    name = "String magic longbows",
                    intensity = "low",
                    xpPerHour = 274500,
                    money = "Profitable",
                    notes = "Magic shortbows at 80: 250.5k XP/hr.",
                    wiki = "https://runescape.wiki/w/Magic_longbow",
                    requirements = { levels = { { skill = "Fletching", level = 85 } } },
                    items = {
                        { label = "Magic longbow (unstrung)", names = { "Magic longbow (unstrung)" } },
                        { label = "Bowstrings", names = { "Bowstring" } },
                    },
                },
                {
                    id = "fletching_zygomite_carestyling",
                    name = "Zygomite Carestyling",
                    intensity = "medium",
                    xpPerHour = 235320,
                    location = "Prehistoric Potterington's, Anachronia",
                    money = "About 2.2M coins/hr from tempered fungal shafts",
                    notes = "247k XP/hr with a crystal knife.",
                    wiki = "https://runescape.wiki/w/Zygomite_Carestyling",
                    requirements = {
                        levels = { { skill = "Fletching", level = 82 } },
                        quests = { "Extinction" },
                    },
                },
            },
        },
        {
            from = 100, to = 111,
            methods = {
                {
                    id = "fletching_primal_crossbow",
                    name = "Primal crossbow Mk. 5",
                    intensity = "medium",
                    xpPerHour = 216000,
                    location = "Fletching workbench",
                    money = "Profitable",
                    notes = "Martial version 288.6k XP/hr but unprofitable.",
                    wiki = "https://runescape.wiki/w/Primal_crossbow",
                    requirements = { levels = { { skill = "Fletching", level = 100 } } },
                },
                {
                    id = "fletching_eternal_magic_shortbow",
                    name = "Eternal magic shortbow Mk. 5",
                    intensity = "medium",
                    xpPerHour = 208713,
                    location = "Fletching workbench",
                    money = "Profitable",
                    notes = "Martial version 279k XP/hr but unprofitable.",
                    wiki = "https://runescape.wiki/w/Eternal_magic_shortbow",
                    requirements = { levels = { { skill = "Fletching", level = 100 } } },
                },
                {
                    id = "fletching_rune_darts_high",
                    name = "Rune darts",
                    intensity = "high",
                    xpPerHour = 1034000,
                    money = "Very expensive",
                    wiki = "https://runescape.wiki/w/Rune_dart",
                    requirements = { levels = { { skill = "Fletching", level = 81 } } },
                    items = {
                        { label = "Rune dart tips", names = { "Rune dart tip" } },
                        { label = "Feathers", names = { "Feather" } },
                    },
                },
            },
        },
    },

    boosts = {
        "Portable fletcher: +10% base XP",
        "Fletcher's outfit: +1% to +6% XP",
        "Amulet of Fletcher's Offerings: +10% XP",
        "Ranger's Workroom: +5% XP",
        "Crystal knife: 5% chance of double shafts or strung bows (not XP)",
    },
}
