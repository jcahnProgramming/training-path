--[[
    Agility training guide (data only, no code).

    Source: RuneScape Wiki, "Pay-to-play Agility training"
    https://runescape.wiki/w/Pay-to-play_Agility_training
    Licensed CC BY-NC-SA 3.0. Numbers copied from that page as of
    2026-10-22; anything the wiki didn't state has been left out.
    Format: see docs/guide-format.md
]]

return {
    skill = "Agility",
    maxLevel = 99,
    wiki = "https://runescape.wiki/w/Pay-to-play_Agility_training",
    source = "Data: RuneScape Wiki, Pay-to-play Agility training (CC BY-NC-SA 3.0)",

    bands = {
        {
            from = 1, to = 25,
            methods = {
                {
                    id = "agility_gnome_stronghold",
                    name = "Gnome Stronghold Agility Course",
                    intensity = "high",
                    xpPerHour = 13371,
                    location = "Gnome Stronghold",
                    money = "Free",
                    notes = "Obstacles can't be failed and deal no damage.",
                    wiki = "https://runescape.wiki/w/Gnome_Stronghold_Agility_Course",
                },
            },
        },
        {
            from = 25, to = 35,
            methods = {
                {
                    id = "agility_penguin_course",
                    name = "Penguin Agility Course",
                    intensity = "high",
                    xpPerHour = 40500,
                    location = "Penguin area",
                    notes = "Some obstacles can fail; bring food.",
                    wiki = "https://runescape.wiki/w/Penguin_Agility_Course",
                    requirements = {
                        levels = { { skill = "Agility", level = 30 } },
                        other = { "Cold War started, up to learning the clockwork suit" },
                    },
                    items = {
                        { label = "Clockwork suit (worn)", names = { "Clockwork suit" } },
                    },
                },
                {
                    id = "agility_werewolf_skullball",
                    name = "Werewolf Skullball",
                    intensity = "high",
                    xpPerHour = 28800,
                    location = "Werewolf Agility area",
                    notes = "1,200 XP per game under 3 minutes (28.8k XP/hr), 1,000 XP if slower.",
                    wiki = "https://runescape.wiki/w/Werewolf_Skullball",
                    requirements = {
                        quests = { "Creature of Fenkenstrain" },
                    },
                    items = {
                        { label = "Ring of charos (worn)", contains = { "ring of charos" } },
                    },
                },
            },
        },
        {
            from = 35, to = 48,
            methods = {
                {
                    id = "agility_barbarian_outpost",
                    name = "Barbarian Outpost Agility Course",
                    intensity = "high",
                    xpPerHour = 42000,
                    location = "Barbarian Outpost",
                    notes = "Some obstacles can fail; bring food.",
                    wiki = "https://runescape.wiki/w/Barbarian_Outpost_Agility_Course",
                    requirements = {
                        other = { "Bar Crawl miniquest" },
                    },
                },
            },
        },
        {
            from = 48, to = 52,
            methods = {
                {
                    id = "agility_ape_atoll",
                    name = "Ape Atoll Agility Course",
                    intensity = "high",
                    xpPerHour = 49200,
                    location = "Ape Atoll",
                    wiki = "https://runescape.wiki/w/Ape_Atoll_Agility_Course",
                    requirements = {
                        other = { "Monkey Madness partly completed" },
                    },
                    items = {
                        { label = "Small or medium ninja monkey greegree (worn)", contains = { "ninja monkey greegree" } },
                    },
                },
            },
        },
        {
            from = 52, to = 60,
            methods = {
                {
                    id = "agility_wilderness_course",
                    name = "Wilderness Agility Course",
                    intensity = "high",
                    xpPerHour = 51390,
                    location = "Wilderness",
                    notes = "Fails are common and hit for a share of current health; keep health near 25%. Wilderness sword 2 gives +5% lap XP.",
                    wiki = "https://runescape.wiki/w/Wilderness_Agility_Course",
                },
            },
        },
        {
            from = 60, to = 65,
            methods = {
                {
                    id = "agility_bandos_throne_room",
                    name = "Bandos's Throne Room Agility Course",
                    intensity = "high",
                    xpPerHour = 60171,
                    location = "Bandos's Throne Room",
                    notes = "Grapple between statues.",
                    crossovers = "Also gives Ranged and Strength XP",
                    wiki = "https://runescape.wiki/w/Bandos%27s_Throne_Room_Agility_Course",
                    requirements = {
                        levels = {
                            { skill = "Agility", level = 60 },
                            { skill = "Ranged", level = 60 },
                            { skill = "Strength", level = 60 },
                        },
                        quests = { "The Chosen Commander" },
                    },
                    items = {
                        { label = "Mithril grapple or enhanced grappling hook", names = { "Mithril grapple", "Enhanced grappling hook" } },
                    },
                },
                {
                    id = "agility_werewolf_course",
                    name = "Werewolf Agility Course",
                    intensity = "high",
                    xpPerHour = 60000,
                    location = "Werewolf Agility area",
                    wiki = "https://runescape.wiki/w/Werewolf_Agility_Course",
                    requirements = {
                        quests = { "Creature of Fenkenstrain" },
                    },
                    items = {
                        { label = "Ring of charos (worn)", contains = { "ring of charos" } },
                    },
                },
            },
        },
        {
            from = 65, to = 70,
            methods = {
                {
                    id = "agility_hets_oasis",
                    name = "Het's Oasis Agility Course",
                    intensity = "high",
                    xpPerHour = 70114,
                    location = "Het's Oasis",
                    notes = "Each fail cuts final-obstacle XP by 1%. Finishing the Statue of Het adds 10% XP.",
                    wiki = "https://runescape.wiki/w/Het%27s_Oasis_Agility_Course",
                },
                {
                    id = "agility_empty_throne_room",
                    name = "Empty Throne Room auto-cycles",
                    intensity = "low",
                    location = "Varrock Dig Site",
                    notes = "Fully AFK but slow. Capped at 800,000 XP.",
                    wiki = "https://runescape.wiki/w/Empty_Throne_Room",
                },
            },
        },
        {
            from = 70, to = 77,
            methods = {
                {
                    id = "agility_anachronia_advanced",
                    name = "Anachronia Agility Course (advanced)",
                    intensity = "high",
                    xpPerHour = 78000,
                    location = "Anachronia, north-east section C",
                    notes = "Fails deal 5% of current health but still give XP. Surge and Dive help.",
                    wiki = "https://runescape.wiki/w/Anachronia_Agility_Course",
                },
            },
        },
        {
            from = 77, to = 85,
            methods = {
                {
                    id = "agility_spirit_moths",
                    name = "Spirit moths",
                    intensity = "high",
                    xpPerHour = 150000,
                    location = "Havenhythe",
                    notes = "355 XP per catch. Find moths in hollow trees in Highweald Forest.",
                    wiki = "https://runescape.wiki/w/Spirit_moth",
                    requirements = {
                        levels = {
                            { skill = "Agility", level = 80 },
                            { skill = "Hunter", level = 85 },
                        },
                    },
                },
                {
                    id = "agility_hefin_course",
                    name = "Hefin Agility Course",
                    intensity = "high",
                    xpPerHour = 102857,
                    location = "Prifddinas",
                    notes = "Can't fail. Rate is at level 77 and rises every 5 levels. +20% with Voice of Seren.",
                    crossovers = "Also gives some Prayer XP",
                    wiki = "https://runescape.wiki/w/Hefin_Agility_Course",
                    requirements = {
                        quests = { "Plague's End" },
                    },
                },
            },
        },
        {
            from = 85, to = 100,
            methods = {
                {
                    id = "agility_anachronia_full",
                    name = "Anachronia Agility Course (full lap)",
                    intensity = "high",
                    xpPerHour = 210000,
                    location = "Anachronia",
                    notes = "About 28,000 XP per full lap. Level 85 can be boosted with summer pie.",
                    wiki = "https://runescape.wiki/w/Anachronia_Agility_Course",
                },
                {
                    id = "agility_hefin_course_high",
                    name = "Hefin Agility Course",
                    intensity = "high",
                    location = "Prifddinas",
                    notes = "Can't fail. XP rises every 5 levels. +20% with Voice of Seren.",
                    wiki = "https://runescape.wiki/w/Hefin_Agility_Course",
                    requirements = {
                        quests = { "Plague's End" },
                    },
                },
            },
        },
    },

    boosts = {
        "Nimble outfit: +6% XP for the full set",
        "Toadflax incense: up to 50% chance to avoid failing",
        "Anachronia spa: +5% to +10% base Agility XP",
        "Roar of Osseous: +25% Agility XP while active",
        "Enhanced Excalibur: heals over time instead of food",
    },
}
