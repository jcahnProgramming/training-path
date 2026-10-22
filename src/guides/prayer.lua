--[[
    Prayer training guide (data only, no code).
    Source: RuneScape Wiki, "Pay-to-play Prayer training"
    https://runescape.wiki/w/Pay-to-play_Prayer_training
    Licensed CC BY-NC-SA 3.0. Format: docs/guide-format.md.
    XP/hr for bone methods is the wiki's dragon bones figure
    (bones per hour x XP per bone for that method).
]]

return {
    skill = "Prayer",
    maxLevel = 99,
    wiki = "https://runescape.wiki/w/Pay-to-play_Prayer_training",
    source = "Data: RuneScape Wiki, Pay-to-play Prayer training (CC BY-NC-SA 3.0)",

    bands = {
        {
            from = 1, to = 20,
            methods = {
                {
                    id = "prayer_powder_of_burials",
                    name = "Bury bones with powder of burials",
                    intensity = "high",
                    xpPerHour = 1184400,
                    location = "Any bank",
                    money = "Expensive: bones plus 2 powders per hour",
                    notes = "Fastest method. 3.5x XP for 30 minutes per powder; ashes are not boosted. XP/hr is the wiki's dragon bones figure.",
                    wiki = "https://runescape.wiki/w/Powder_of_burials",
                    items = {
                        { label = "Powder of burials", names = { "Powder of burials" } },
                        { label = "Bones", contains = { "bones" } },
                    },
                },
                {
                    id = "prayer_gilded_altar",
                    name = "Gilded altar (player-owned house)",
                    intensity = "high",
                    xpPerHour = 384048,
                    location = "Your house, or a host on world 31",
                    money = "Cost of bones",
                    notes = "3.5x XP with both burners lit. About 1,524 bones per hour with a pack yak (XP/hr for dragon bones).",
                    wiki = "https://runescape.wiki/w/Pay-to-play_Prayer_training#Player-owned_house",
                    items = {
                        { label = "Bones or ashes", contains = { "bones", "ashes" } },
                        { label = "Clean marrentill (burners)", names = { "Clean marrentill" }, count = 2 },
                    },
                },
                {
                    id = "prayer_ectofuntus",
                    name = "Ectofuntus",
                    intensity = "high",
                    xpPerHour = 201600,
                    location = "Port Phasmatys",
                    money = "Cost of bones or ashes",
                    notes = "4x XP per bone, but slower (about 700 bones/hr; XP/hr for dragon bones). Ashes need no grinding.",
                    wiki = "https://runescape.wiki/w/Ectofuntus",
                    requirements = {
                        quests = { "Ghosts Ahoy" },
                    },
                    items = {
                        { label = "Ectophial", names = { "Ectophial" } },
                        { label = "Bones or ashes", contains = { "bones", "ashes" } },
                    },
                },
            },
        },
        {
            from = 20, to = 50,
            methods = {
                {
                    id = "prayer_bless_sand",
                    name = "Blessing extra fine sand",
                    intensity = "low",
                    xpPerHour = 21000,
                    location = "Any Saradominist altar (Lumbridge church)",
                    money = "Cost-neutral or profitable",
                    notes = "7 XP each. Up to 60 sand per click, no banking.",
                    wiki = "https://runescape.wiki/w/Blessed_sand",
                    items = {
                        { label = "Extra fine sand", names = { "Extra fine sand" } },
                    },
                },
                {
                    id = "prayer_bonecrusher",
                    name = "Bonecrusher while fighting",
                    intensity = "medium",
                    notes = "Buries dropped bones for you. Can be on the tool belt. 50,000 Dungeoneering tokens (since May 2026).",
                    crossovers = "Trains combat at the same time",
                    wiki = "https://runescape.wiki/w/Bonecrusher",
                    requirements = {
                        levels = {
                            { skill = "Prayer", level = 21 },
                            { skill = "Dungeoneering", level = 41 },
                        },
                    },
                },
                {
                    id = "prayer_ivar",
                    name = "Ivar, King of Bones",
                    intensity = "high",
                    location = "Havenhythe",
                    notes = "Each kill drops a colossal bone: 400 XP when buried. Combat 50+ recommended.",
                    crossovers = "Trains combat at the same time",
                    wiki = "https://runescape.wiki/w/Ivar,_King_of_Bones",
                    requirements = {
                        other = { "Partial completion of Visions of Havenhythe" },
                    },
                },
            },
        },
        {
            from = 50, to = 70,
            methods = {
                {
                    id = "prayer_chaos_altar",
                    name = "Chaos altar (Wilderness)",
                    intensity = "high",
                    xpPerHour = 478800,
                    location = "Chaos Temple, Wilderness",
                    money = "Cost of bones",
                    notes = "1.5x XP, +0.5x per Wilderness task tier: 3.5x with elite. XP/hr is dragon bones with elite. Do not opt into PvP.",
                    wiki = "https://runescape.wiki/w/Chaos_altar_(Wilderness)",
                    requirements = {
                        other = { "Elite Wilderness achievements for 3.5x XP" },
                    },
                    items = {
                        { label = "Bones or ashes", contains = { "bones", "ashes" } },
                    },
                },
                {
                    id = "prayer_urns",
                    name = "Prayer urns while fighting demons",
                    intensity = "medium",
                    notes = "Urns fill from demonic ashes. Infernal urns give 1,875 XP each.",
                    crossovers = "Make urns with Crafting",
                    wiki = "https://runescape.wiki/w/Urns",
                    items = {
                        { label = "Prayer urn", contains = { "impious urn", "accursed urn", "infernal urn" } },
                    },
                },
            },
        },
        {
            from = 70, to = 92,
            methods = {
                {
                    id = "prayer_fort_forinthry_chapel",
                    name = "Fort Forinthry chapel",
                    intensity = "high",
                    xpPerHour = 410400,
                    location = "Fort Forinthry",
                    money = "Cost of bones",
                    notes = "Up to 3x XP (tier 3 chapel). XP/hr for dragon bones. Prayer brawling gloves work here.",
                    wiki = "https://runescape.wiki/w/Chapel_(Fort_Forinthry)",
                    requirements = {
                        levels = { { skill = "Construction", level = 90 } },
                    },
                    items = {
                        { label = "Bones or ashes", contains = { "bones", "ashes" } },
                    },
                },
                {
                    id = "prayer_cleansing_crystals",
                    name = "Cleansing crystals",
                    intensity = "low",
                    xpPerHour = 294000,
                    location = "Hefin Cathedral, Prifddinas",
                    money = "110,000 coins per crystal",
                    notes = "9,800 XP per crystal, 2 minutes each. No banking.",
                    wiki = "https://runescape.wiki/w/Cleansing_crystal",
                    requirements = {
                        levels = { { skill = "Prayer", level = 75 } },
                        quests = { "Plague's End" },
                    },
                    items = {
                        { label = "Cleansing crystals", names = { "Cleansing crystal" } },
                    },
                },
            },
        },
        {
            from = 92, to = 100,
            methods = {
                {
                    id = "prayer_vyres_sunspear",
                    name = "Vyres with an augmented Sunspear",
                    intensity = "low",
                    xpPerHour = 266000,
                    location = "Darkmeyer",
                    money = "About 5M profit per hour",
                    notes = "400k XP/hr with Morytania legs 4. Soul Split (92 Prayer) lets you AFK.",
                    crossovers = "Also trains combat, Constitution, Firemaking and Farming",
                    wiki = "https://runescape.wiki/w/Pay-to-play_Prayer_training#Killing_Vyres_with_Sunspear",
                    requirements = {
                        quests = { "River of Blood" },
                        other = { "Soul Split (The Temple at Senntisten) recommended" },
                    },
                    items = {
                        { label = "Augmented Sunspear", contains = { "sunspear" } },
                        { label = "Morytania legs 4 (boost)", names = { "Morytania legs 4" } },
                    },
                },
            },
        },
    },

    boosts = {
        "First age outfit: 1% XP per piece, 6% for the full set.",
        "Perfect juju prayer potion: +5% at chapels, gilded altars and the Chaos altar.",
        "Prayer brawling gloves: +50% (not at the Wilderness chaos altar).",
        "Double XP does not affect bone and ash offering methods.",
    },
}
