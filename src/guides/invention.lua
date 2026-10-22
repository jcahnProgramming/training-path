--[[
    Invention training guide (data only, no code).

    Source: RuneScape Wiki, "Invention training"
    https://runescape.wiki/w/Invention_training
    Licensed CC BY-NC-SA 3.0. Copied 2026-10-22.

    Invention is an elite skill: its levels need far more XP than the
    normal table (e.g. level 27 needs 186,000 XP). Bands still use levels.
]]

return {
    skill = "Invention",
    maxLevel = 120,
    wiki = "https://runescape.wiki/w/Invention_training",
    source = "Data: RuneScape Wiki, Invention training (CC BY-NC-SA 3.0)",

    bands = {
        {
            from = 1, to = 4,
            methods = {
                {
                    id = "invention_tutorial",
                    name = "Invention Tutorial",
                    intensity = "high",
                    location = "Invention Guild, north-east of the Falador lodestone",
                    notes = "Talk to Doc. Get Perfect optimisation on discoveries to reach level 4.",
                    wiki = "https://runescape.wiki/w/Invention_Tutorial",
                    requirements = {
                        levels = {
                            { skill = "Crafting", level = 80 },
                            { skill = "Divination", level = 80 },
                            { skill = "Smithing", level = 80 },
                        },
                    },
                },
                {
                    id = "invention_disassemble_start",
                    name = "Disassembling items",
                    intensity = "medium",
                    notes = "Makes up any shortfall. A yew longbow gives 12 XP.",
                    wiki = "https://runescape.wiki/w/Disassembly",
                },
            },
        },
        {
            from = 4, to = 27,
            methods = {
                {
                    id = "invention_black_salamanders",
                    name = "Disassembling augmented black salamanders",
                    intensity = "medium",
                    money = "734,222 coins incl. augmentors",
                    notes = "Research the level 5 blueprint, then disassemble two augmented black salamanders.",
                    wiki = "https://runescape.wiki/w/Invention_training",
                    items = {
                        { label = "Black salamander", contains = { "black salamander" } },
                    },
                },
                {
                    id = "invention_magic_logs",
                    name = "Magic logs and divine charges",
                    intensity = "medium",
                    notes = "Disassemble magic logs for simple parts, make divine charges. 5 to 22 takes about 6,972 logs and 74,700 incandescent energy.",
                    crossovers = "Uses Divination energy",
                    wiki = "https://runescape.wiki/w/Divine_charge",
                    items = {
                        { label = "Magic logs", names = { "Magic logs" } },
                    },
                },
            },
        },
        {
            from = 27, to = 86,
            methods = {
                {
                    id = "invention_combat_augmented",
                    name = "Combat with augmented gear, then siphon",
                    intensity = "medium",
                    notes = "Fastest repeatable method; rates vary a lot. Siphon at item level 9 for more XP, 12 to save cost.",
                    crossovers = "Trains combat skills",
                    wiki = "https://runescape.wiki/w/Equipment_siphon",
                    items = {
                        { label = "Equipment siphon", names = { "Equipment siphon" } },
                    },
                },
                {
                    id = "invention_shattered_worlds",
                    name = "Shattered Worlds",
                    intensity = "high",
                    notes = "Very fast but gear-heavy. Worlds 116 to 120 are best, 91 to 95 the alternative.",
                    wiki = "https://runescape.wiki/w/Shattered_Worlds",
                },
                {
                    id = "invention_skilling_augmented",
                    name = "Skilling with augmented tools",
                    intensity = "low",
                    notes = "Slower, under 320k XP/hr. Augmenting tools needs the level 22 research.",
                    wiki = "https://runescape.wiki/w/Augmentor",
                    items = {
                        { label = "Equipment siphon", names = { "Equipment siphon" } },
                    },
                },
            },
        },
        {
            from = 86, to = 121,
            methods = {
                {
                    id = "invention_ancient_gizmos",
                    name = "Creating ancient armour gizmos",
                    intensity = "medium",
                    xpPerHour = 21500000,
                    money = "Very expensive: 25.43 GP/XP",
                    notes = "Each gizmo costs 818,819 coins for 32,200 XP. 86 to 120 is 60,672,821 XP, about 2.83 hours.",
                    wiki = "https://runescape.wiki/w/Ancient_gizmo",
                    requirements = {
                        levels = { { skill = "Invention", level = 86 } },
                        other = { "Ancient Invention unlocked", "Extreme invention potion to reach timeworn components" },
                    },
                },
                {
                    id = "invention_combat_augmented_high",
                    name = "Combat with augmented gear, then siphon",
                    intensity = "medium",
                    notes = "Cheaper but much slower. Siphon at item level 9 for more XP.",
                    crossovers = "Trains combat skills",
                    wiki = "https://runescape.wiki/w/Equipment_siphon",
                    items = {
                        { label = "Equipment siphon", names = { "Equipment siphon" } },
                    },
                },
            },
        },
    },

    boosts = {
        "Elite skill: levels need far more XP than normal skills",
        "Disassembly and siphoning ignore most XP boosts",
        "Knowledge bomb: +25% discovery XP",
        "XP Capacitor 5000: doubles item XP",
        "Enlightened perk: +3% XP rate per rank (up to rank 4)",
    },
}
