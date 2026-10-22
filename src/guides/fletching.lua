--[[
    Fletching training guide (data only, no code).
    Source: RuneScape Wiki, "Pay-to-play Fletching training"
    https://runescape.wiki/w/Pay-to-play_Fletching_training
    Licensed CC BY-NC-SA 3.0. Format: docs/guide-format.md
    XP rates are the wiki's base XP/hr. The training page is flagged out of
    date after the 2026 mid-game rebalance, so levels and XP per item come
    from the item pages and "2026 mid-game rebalance"; bow XP/hr is left
    out where the XP per bow changed.
]]

return {
    skill = "Fletching",
    maxLevel = 110,
    wiki = "https://runescape.wiki/w/Pay-to-play_Fletching_training",
    source = "Data: RuneScape Wiki, Pay-to-play Fletching training (CC BY-NC-SA 3.0)",

    bands = {
        {
            from = 1, to = 25,
            methods = {
                {
                    id = "fletching_headless_shafts",
                    name = "Headless shafts",
                    intensity = "low",
                    xpPerHour = 45000,
                    money = "Profitable",
                    notes = "Add feathers to shafts. 15 XP per set of 15.",
                    wiki = "https://runescape.wiki/w/Headless_shaft",
                    items = {
                        { label = "Shafts", names = { "Shaft", "Arrow shaft" } },
                        { label = "Feathers", names = { "Feather" } },
                    },
                },
                {
                    id = "fletching_arrow_shafts",
                    name = "Shafts from logs",
                    intensity = "low",
                    xpPerHour = 10000,
                    money = "Costs money",
                    notes = "Slow. Oak shafts 15k XP/hr from 10, willow 20k from 20.",
                    wiki = "https://runescape.wiki/w/Shaft",
                    items = { { label = "Logs", contains = { "logs" } } },
                },
            },
        },
        {
            from = 25, to = 40,
            methods = {
                {
                    id = "fletching_willow_longbow_string",
                    name = "String willow longbows",
                    intensity = "low",
                    money = "Profitable",
                    notes = "25 XP per bow, the same as fletching the unstrung bow. Willow shortbows (20) give 16.5.",
                    wiki = "https://runescape.wiki/w/Willow_longbow",
                    requirements = { levels = { { skill = "Fletching", level = 25 } } },
                    items = {
                        { label = "Willow longbow (unstrung)", names = { "Willow longbow (unstrung)" } },
                        { label = "Bowstrings", names = { "Bowstring" } },
                    },
                },
            },
        },
        {
            from = 40, to = 50,
            methods = {
                {
                    id = "fletching_maple_shortbow_string",
                    name = "String maple shortbows",
                    intensity = "low",
                    money = "Profitable",
                    notes = "41.5 XP per bow.",
                    wiki = "https://runescape.wiki/w/Maple_shortbow",
                    requirements = { levels = { { skill = "Fletching", level = 40 } } },
                    items = {
                        { label = "Maple shortbow (unstrung)", names = { "Maple shortbow (unstrung)" } },
                        { label = "Bowstrings", names = { "Bowstring" } },
                    },
                },
                {
                    id = "fletching_maple_longbow_string",
                    name = "String maple longbows",
                    intensity = "low",
                    money = "Profitable",
                    notes = "46 XP per bow.",
                    wiki = "https://runescape.wiki/w/Maple_longbow",
                    requirements = { levels = { { skill = "Fletching", level = 45 } } },
                    items = {
                        { label = "Maple longbow (unstrung)", names = { "Maple longbow (unstrung)" } },
                        { label = "Bowstrings", names = { "Bowstring" } },
                    },
                },
                {
                    id = "fletching_adamant_bolts",
                    name = "Adamant bolts",
                    intensity = "high",
                    xpPerHour = 420000,
                    money = "Costs money",
                    notes = "70 XP per set of 10.",
                    wiki = "https://runescape.wiki/w/Adamant_bolts",
                    requirements = { levels = { { skill = "Fletching", level = 43 } } },
                    items = {
                        { label = "Adamant bolts (unf)", names = { "Adamant bolts (unf)" } },
                        { label = "Feathers", names = { "Feather" } },
                    },
                },
            },
        },
        {
            from = 50, to = 70,
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
                        { label = "Headless shafts", names = { "Headless shaft", "Headless arrow" } },
                    },
                },
                {
                    id = "fletching_rune_arrows",
                    name = "Rune arrows",
                    intensity = "high",
                    xpPerHour = 562500,
                    money = "Costs money",
                    notes = "187.5 XP per set of 15.",
                    wiki = "https://runescape.wiki/w/Rune_arrow",
                    requirements = { levels = { { skill = "Fletching", level = 50 } } },
                    items = {
                        { label = "Rune arrowheads", names = { "Rune arrowheads" } },
                        { label = "Headless shafts", names = { "Headless shaft", "Headless arrow" } },
                    },
                },
            },
        },
        {
            from = 70, to = 81,
            methods = {
                {
                    id = "fletching_rune_bolts",
                    name = "Rune bolts",
                    intensity = "high",
                    xpPerHour = 600000,
                    money = "Costs money",
                    notes = "100 XP per set of 10. Can be made from 53.",
                    wiki = "https://runescape.wiki/w/Rune_bolts",
                    requirements = { levels = { { skill = "Fletching", level = 53 } } },
                    items = {
                        { label = "Rune bolts (unf)", names = { "Rune bolts (unf)" } },
                        { label = "Feathers", names = { "Feather" } },
                    },
                },
                {
                    id = "fletching_yew_shortbow_string",
                    name = "String yew shortbows",
                    intensity = "low",
                    money = "Profitable",
                    notes = "75 XP per bow.",
                    wiki = "https://runescape.wiki/w/Yew_shortbow",
                    requirements = { levels = { { skill = "Fletching", level = 70 } } },
                    items = {
                        { label = "Yew shortbow (unstrung)", names = { "Yew shortbow (unstrung)" } },
                        { label = "Bowstrings", names = { "Bowstring" } },
                    },
                },
                {
                    id = "fletching_yew_longbow_string",
                    name = "String yew longbows",
                    intensity = "low",
                    money = "Profitable",
                    notes = "80 XP per bow.",
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
                    notes = "18.8 XP per dart. The wiki gives 1.03M to 1.13M XP/hr. Dragon darts (95) are 1.5M but cost far more.",
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
                    notes = "91.5 XP per bow. Magic shortbows (80) give 83.3.",
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
                    xpPerHour = 225515,
                    location = "Prehistoric Potterington's, Anachronia",
                    money = "Profit from tempered fungal shafts",
                    notes = "196.1 XP per action. A crystal knife gives a 5% chance of double shafts and XP.",
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
                    requirements = { levels = { { skill = "Fletching", level = 103 } } },
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
        "Portable fletcher: +10% base XP (portables are removed from the game on 23 Nov 2026)",
        "Fletcher's outfit: +1% to +6% XP",
        "Amulet of Fletcher's Offerings: +10% XP",
        "Ranger's Workroom: +5% XP",
        "Crystal knife: 5% chance of double shafts or strung bows (not XP)",
    },
}
