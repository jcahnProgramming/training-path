--[[
    Divination training guide (data only, no code).

    Source: RuneScape Wiki, "Divination training"
    https://runescape.wiki/w/Divination_training
    Licensed CC BY-NC-SA 3.0. Copied 2026-10-22. Wisp XP rates are the
    wiki's "without bought energy" figures; with extra energy bought for
    converting, rates are higher (given in notes).
]]

return {
    skill = "Divination",
    maxLevel = 99,
    wiki = "https://runescape.wiki/w/Divination_training",
    source = "Data: RuneScape Wiki, Divination training (CC BY-NC-SA 3.0)",

    bands = {
        {
            from = 1, to = 10,
            methods = {
                {
                    id = "divination_pale_wisps",
                    name = "Pale wisps",
                    intensity = "low",
                    xpPerHour = 4000,
                    location = "South-east of Draynor Village",
                    notes = "5k XP/hr with bought energy.",
                    wiki = "https://runescape.wiki/w/Pale_wisp",
                },
                {
                    id = "divination_gate_of_elidinis_low",
                    name = "Gate of Elidinis",
                    intensity = "medium",
                    notes = "Usable at any level. About 285k XP/hr at 99.",
                    wiki = "https://runescape.wiki/w/Gate_of_Elidinis",
                    requirements = {
                        quests = { "Ode of the Devourer" },
                    },
                },
            },
        },
        {
            from = 10, to = 20,
            methods = {
                {
                    id = "divination_flickering_wisps",
                    name = "Flickering wisps",
                    intensity = "low",
                    xpPerHour = 8000,
                    location = "East of the Falador lodestone",
                    notes = "10k XP/hr with bought energy.",
                    wiki = "https://runescape.wiki/w/Flickering_wisp",
                    requirements = {
                        levels = { { skill = "Divination", level = 10 } },
                    },
                },
            },
        },
        {
            from = 20, to = 30,
            methods = {
                {
                    id = "divination_bright_wisps",
                    name = "Bright wisps",
                    intensity = "low",
                    xpPerHour = 12000,
                    location = "East of Varrock",
                    notes = "14k XP/hr with bought energy.",
                    wiki = "https://runescape.wiki/w/Bright_wisp",
                    requirements = {
                        levels = { { skill = "Divination", level = 20 } },
                    },
                },
            },
        },
        {
            from = 30, to = 40,
            methods = {
                {
                    id = "divination_glowing_wisps",
                    name = "Glowing wisps",
                    intensity = "low",
                    xpPerHour = 17000,
                    location = "South of Seers' Village",
                    notes = "19k XP/hr with bought energy.",
                    wiki = "https://runescape.wiki/w/Glowing_wisp",
                    requirements = {
                        levels = { { skill = "Divination", level = 30 } },
                    },
                },
            },
        },
        {
            from = 40, to = 50,
            methods = {
                {
                    id = "divination_sparkling_wisps",
                    name = "Sparkling wisps",
                    intensity = "low",
                    xpPerHour = 23000,
                    location = "South-west of the Fremennik Slayer Dungeon",
                    notes = "28k XP/hr with bought energy.",
                    wiki = "https://runescape.wiki/w/Sparkling_wisp",
                    requirements = {
                        levels = { { skill = "Divination", level = 40 } },
                    },
                },
            },
        },
        {
            from = 50, to = 60,
            methods = {
                {
                    id = "divination_gleaming_wisps",
                    name = "Gleaming wisps",
                    intensity = "low",
                    xpPerHour = 27000,
                    location = "Centre of the Karamja jungle",
                    notes = "33k XP/hr with bought energy.",
                    wiki = "https://runescape.wiki/w/Gleaming_wisp",
                    requirements = {
                        levels = { { skill = "Divination", level = 50 } },
                    },
                },
            },
        },
        {
            from = 60, to = 70,
            methods = {
                {
                    id = "divination_empty_throne_room",
                    name = "Senntisten crystals (Empty Throne Room)",
                    intensity = "medium",
                    xpPerHour = 65000,
                    location = "South-east of the Varrock Dig Site",
                    wiki = "https://runescape.wiki/w/Empty_Throne_Room",
                    requirements = {
                        levels = { { skill = "Divination", level = 65 } },
                    },
                },
                {
                    id = "divination_vibrant_wisps",
                    name = "Vibrant wisps",
                    intensity = "low",
                    xpPerHour = 35000,
                    location = "North-west of South Feldip Hills",
                    notes = "41k XP/hr with bought energy.",
                    wiki = "https://runescape.wiki/w/Vibrant_wisp",
                    requirements = {
                        levels = { { skill = "Divination", level = 60 } },
                    },
                },
            },
        },
        {
            from = 70, to = 80,
            methods = {
                {
                    id = "divination_hall_of_memories_mid",
                    name = "Hall of Memories",
                    intensity = "medium",
                    location = "Memorial to Guthix",
                    notes = "Faster than wisps; rates vary with how active you are.",
                    wiki = "https://runescape.wiki/w/Hall_of_Memories",
                    requirements = {
                        levels = { { skill = "Divination", level = 70 } },
                        other = { "Access to the Memorial to Guthix" },
                    },
                },
                {
                    id = "divination_elder_wisps",
                    name = "Elder wisps",
                    intensity = "low",
                    xpPerHour = 54000,
                    location = "Elder Halls",
                    notes = "66k XP/hr with bought energy.",
                    wiki = "https://runescape.wiki/w/Elder_wisp",
                    requirements = {
                        levels = { { skill = "Divination", level = 75 } },
                        quests = { "Fate of the Gods" },
                    },
                },
                {
                    id = "divination_lustrous_wisps",
                    name = "Lustrous wisps",
                    intensity = "low",
                    xpPerHour = 43000,
                    location = "East of the Slayer Tower",
                    notes = "52k XP/hr with bought energy.",
                    wiki = "https://runescape.wiki/w/Lustrous_wisp",
                    requirements = {
                        levels = { { skill = "Divination", level = 70 } },
                    },
                },
            },
        },
        {
            from = 80, to = 90,
            methods = {
                {
                    id = "divination_hall_of_memories_high",
                    name = "Hall of Memories",
                    intensity = "medium",
                    location = "Memorial to Guthix",
                    notes = "Faster than wisps; rates vary with how active you are.",
                    wiki = "https://runescape.wiki/w/Hall_of_Memories",
                    requirements = {
                        levels = { { skill = "Divination", level = 70 } },
                        other = { "Access to the Memorial to Guthix" },
                    },
                },
                {
                    id = "divination_radiant_wisps",
                    name = "Radiant wisps",
                    intensity = "low",
                    xpPerHour = 65000,
                    location = "Dragontooth Island",
                    notes = "79k XP/hr with bought energy.",
                    wiki = "https://runescape.wiki/w/Radiant_wisp",
                    requirements = {
                        levels = { { skill = "Divination", level = 85 } },
                    },
                },
                {
                    id = "divination_brilliant_wisps",
                    name = "Brilliant wisps",
                    intensity = "low",
                    xpPerHour = 60000,
                    location = "East of the Mage Training Arena",
                    notes = "73k XP/hr with bought energy.",
                    wiki = "https://runescape.wiki/w/Brilliant_wisp",
                    requirements = {
                        levels = { { skill = "Divination", level = 80 } },
                    },
                },
                {
                    id = "divination_incandescent_boosted",
                    name = "Incandescent wisps (extreme div potion)",
                    intensity = "low",
                    xpPerHour = 82000,
                    location = "West of Castle Wars, or Yanille",
                    notes = "Boost to 95 with an extreme divination potion.",
                    wiki = "https://runescape.wiki/w/Incandescent_wisp",
                    requirements = {
                        levels = {
                            { skill = "Divination", level = 81 },
                            { skill = "Herblore", level = 89 },
                        },
                    },
                },
            },
        },
        {
            from = 90, to = 95,
            methods = {
                {
                    id = "divination_hall_of_memories_90",
                    name = "Hall of Memories",
                    intensity = "medium",
                    location = "Memorial to Guthix",
                    notes = "Faster than wisps; rates vary with how active you are.",
                    wiki = "https://runescape.wiki/w/Hall_of_Memories",
                    requirements = {
                        levels = { { skill = "Divination", level = 70 } },
                        other = { "Access to the Memorial to Guthix" },
                    },
                },
                {
                    id = "divination_luminous_wisps",
                    name = "Luminous wisps",
                    intensity = "low",
                    xpPerHour = 71000,
                    location = "South of Sophanem",
                    notes = "83k XP/hr with bought energy.",
                    wiki = "https://runescape.wiki/w/Luminous_wisp",
                    requirements = {
                        levels = { { skill = "Divination", level = 90 } },
                        other = { "Partial Icthlarin's Little Helper" },
                    },
                },
                {
                    id = "divination_positive_negative_energy",
                    name = "Positive and negative energy",
                    intensity = "low",
                    xpPerHour = 68000,
                    location = "Goshima, Cyclosis, Islands That Once Were Turtles",
                    notes = "Also about 660 chimes per hour.",
                    wiki = "https://runescape.wiki/w/Positive_energy",
                    requirements = {
                        levels = { { skill = "Divination", level = 90 } },
                    },
                },
            },
        },
        {
            from = 95, to = 100,
            methods = {
                {
                    id = "divination_incandescent_wisps",
                    name = "Incandescent wisps",
                    intensity = "low",
                    xpPerHour = 82000,
                    location = "West of Castle Wars, or Yanille",
                    notes = "97k XP/hr with bought energy. Divine conversion and enhanced energy push it far higher.",
                    wiki = "https://runescape.wiki/w/Incandescent_wisp",
                    requirements = {
                        levels = { { skill = "Divination", level = 95 } },
                    },
                },
                {
                    id = "divination_hall_of_memories_95",
                    name = "Hall of Memories",
                    intensity = "medium",
                    location = "Memorial to Guthix",
                    notes = "Between 110k and 225k XP/hr at level 99.",
                    wiki = "https://runescape.wiki/w/Hall_of_Memories",
                    requirements = {
                        levels = { { skill = "Divination", level = 70 } },
                        other = { "Access to the Memorial to Guthix" },
                    },
                },
                {
                    id = "divination_gate_of_elidinis",
                    name = "Gate of Elidinis",
                    intensity = "medium",
                    notes = "About 285k XP/hr at 99.",
                    wiki = "https://runescape.wiki/w/Gate_of_Elidinis",
                    requirements = {
                        quests = { "Ode of the Devourer" },
                    },
                },
                {
                    id = "divination_ancestral_energy",
                    name = "Ancestral energy",
                    intensity = "low",
                    xpPerHour = 107000,
                    location = "Uncharted Isles",
                    notes = "Plus contracts.",
                    wiki = "https://runescape.wiki/w/Ancestral_energy",
                    requirements = {
                        levels = { { skill = "Divination", level = 95 } },
                        other = { "Access to the Arc" },
                    },
                },
            },
        },
    },

    boosts = {
        "Diviner's outfit: +1 to 6% XP",
        "Divination urns: +20% XP",
        "Boons (Divination 10 to 95): +10% base XP and energy for one memory type",
        "Pontifex observation ring: +1 to 3% XP",
        "Scrimshaws, Prism of Dowsing and skillchompas also help",
    },
}
