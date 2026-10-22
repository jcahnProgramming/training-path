--[[
    Archaeology training guide (data only, no code).

    Source: RuneScape Wiki, "Archaeology training"
    https://runescape.wiki/w/Archaeology_training
    Licensed CC BY-NC-SA 3.0. Copied 2026-10-22. The wiki gives XP/hr
    only for some hotspots above level 90; the rest are left out. Those
    rates assume a fully upgraded imcando or elder rune mattock (or
    better) and the full archaeologist's outfit.
]]

return {
    skill = "Archaeology",
    maxLevel = 120,
    wiki = "https://runescape.wiki/w/Archaeology_training",
    source = "Data: RuneScape Wiki, Archaeology training (CC BY-NC-SA 3.0)",

    bands = {
        {
            from = 1, to = 5,
            methods = {
                {
                    id = "archaeology_tutorial",
                    name = "Archaeology tutorial",
                    intensity = "medium",
                    location = "Archaeology Campus, with Acting Guildmaster Reiniger",
                    notes = "Then move on to the Kharid-et Dig Site.",
                    wiki = "https://runescape.wiki/w/Archaeology_tutorial",
                },
            },
        },
        {
            from = 5, to = 12,
            methods = {
                {
                    id = "archaeology_venator_remains",
                    name = "Venator remains",
                    intensity = "low",
                    location = "Kharid-et Dig Site",
                    wiki = "https://runescape.wiki/w/Venator_remains",
                    requirements = {
                        levels = { { skill = "Archaeology", level = 5 } },
                    },
                    items = {
                        { label = "Mattock", contains = { "mattock" }, toolBelt = true },
                    },
                },
            },
        },
        {
            from = 12, to = 24,
            methods = {
                {
                    id = "archaeology_castra_debris",
                    name = "Castra debris",
                    intensity = "low",
                    location = "Kharid-et Dig Site",
                    notes = "From 17. Gives Zaros effigies and Zarosian training dummies.",
                    wiki = "https://runescape.wiki/w/Castra_debris",
                    requirements = {
                        levels = { { skill = "Archaeology", level = 17 } },
                    },
                    items = {
                        { label = "Mattock", contains = { "mattock" }, toolBelt = true },
                    },
                },
                {
                    id = "archaeology_legionary_remains",
                    name = "Legionary remains",
                    intensity = "low",
                    location = "Kharid-et Barracks",
                    notes = "Start the Breaking the Seal mystery here.",
                    wiki = "https://runescape.wiki/w/Legionary_remains",
                    requirements = {
                        levels = { { skill = "Archaeology", level = 12 } },
                    },
                    items = {
                        { label = "Mattock", contains = { "mattock" }, toolBelt = true },
                    },
                },
            },
        },
        {
            from = 24, to = 36,
            methods = {
                {
                    id = "archaeology_cultist_footlocker",
                    name = "Cultist footlocker",
                    intensity = "low",
                    location = "Infernal Source, Dungeon of Disorder",
                    notes = "From 29.",
                    wiki = "https://runescape.wiki/w/Cultist_footlocker",
                    requirements = {
                        levels = { { skill = "Archaeology", level = 29 } },
                    },
                    items = {
                        { label = "Mattock", contains = { "mattock" }, toolBelt = true },
                    },
                },
                {
                    id = "archaeology_administratum_debris",
                    name = "Administratum debris",
                    intensity = "low",
                    location = "Kharid-et Barracks",
                    notes = "From 25.",
                    wiki = "https://runescape.wiki/w/Administratum_debris",
                    requirements = {
                        levels = { { skill = "Archaeology", level = 25 } },
                    },
                    items = {
                        { label = "Mattock", contains = { "mattock" }, toolBelt = true },
                    },
                },
                {
                    id = "archaeology_lodge_bar_storage",
                    name = "Lodge bar storage and lodge art",
                    intensity = "low",
                    location = "Infernal Source Dig Site",
                    notes = "For level 24.",
                    wiki = "https://runescape.wiki/w/Lodge_bar_storage",
                    requirements = {
                        levels = { { skill = "Archaeology", level = 24 } },
                    },
                    items = {
                        { label = "Mattock", contains = { "mattock" }, toolBelt = true },
                    },
                },
            },
        },
        {
            from = 36, to = 52,
            methods = {
                {
                    id = "archaeology_monoceros_remains",
                    name = "Monoceros remains",
                    intensity = "low",
                    location = "Everlight mass grave",
                    notes = "From 48.",
                    wiki = "https://runescape.wiki/w/Monoceros_remains",
                    requirements = {
                        levels = { { skill = "Archaeology", level = 48 } },
                    },
                    items = {
                        { label = "Mattock", contains = { "mattock" }, toolBelt = true },
                    },
                },
                {
                    id = "archaeology_prodromoi_remains",
                    name = "Prodromoi remains",
                    intensity = "low",
                    location = "Everlight Dig Site",
                    notes = "From 42. Dis dungeon debris (Infernal Source) at 45.",
                    wiki = "https://runescape.wiki/w/Prodromoi_remains",
                    requirements = {
                        levels = { { skill = "Archaeology", level = 42 } },
                    },
                    items = {
                        { label = "Mattock", contains = { "mattock" }, toolBelt = true },
                    },
                },
                {
                    id = "archaeology_sacrificial_altar",
                    name = "Sacrificial altar",
                    intensity = "low",
                    location = "Infernal Source, Dungeon of Disorder",
                    notes = "From 36. Assistant qualification unlocks at 40.",
                    wiki = "https://runescape.wiki/w/Archaeology_training",
                    requirements = {
                        levels = { { skill = "Archaeology", level = 36 } },
                    },
                    items = {
                        { label = "Mattock", contains = { "mattock" }, toolBelt = true },
                    },
                },
            },
        },
        {
            from = 52, to = 70,
            methods = {
                {
                    id = "archaeology_infernal_art",
                    name = "Infernal art",
                    intensity = "low",
                    location = "Infernal Source, Vestibule of Futility",
                    notes = "From 65. 3,500 XP per restored artefact.",
                    wiki = "https://runescape.wiki/w/Infernal_art",
                    requirements = {
                        levels = { { skill = "Archaeology", level = 65 } },
                    },
                    items = {
                        { label = "Mattock", contains = { "mattock" }, toolBelt = true },
                    },
                },
                {
                    id = "archaeology_ministry_remains",
                    name = "Ministry remains",
                    intensity = "low",
                    location = "Senntisten Cathedral",
                    notes = "From 60. 2,333.3 XP per restored artefact.",
                    wiki = "https://runescape.wiki/w/Ministry_remains",
                    requirements = {
                        levels = { { skill = "Archaeology", level = 60 } },
                    },
                    items = {
                        { label = "Mattock", contains = { "mattock" }, toolBelt = true },
                    },
                },
                {
                    id = "archaeology_lunar_wheel_debris",
                    name = "Lunar wheel debris",
                    intensity = "low",
                    location = "Moonrise Dig Site",
                    notes = "From 52. Ceramics studio debris (Everlight) at 56.",
                    wiki = "https://runescape.wiki/w/Lunar_wheel_debris",
                    requirements = {
                        levels = { { skill = "Archaeology", level = 52 } },
                        quests = { "Secrets of Amberfell" },
                    },
                    items = {
                        { label = "Mattock", contains = { "mattock" }, toolBelt = true },
                    },
                },
            },
        },
        {
            from = 70, to = 93,
            methods = {
                {
                    id = "archaeology_gravitron_debris",
                    name = "Gravitron research debris",
                    intensity = "low",
                    xpPerHour = 117000,
                    location = "Stormguard Citadel, research and development",
                    notes = "From 91. Rate assumes an upgraded imcando or elder rune mattock and full outfit.",
                    wiki = "https://runescape.wiki/w/Gravitron_research_debris",
                    requirements = {
                        levels = { { skill = "Archaeology", level = 91 } },
                    },
                    items = {
                        { label = "Mattock", contains = { "mattock" }, toolBelt = true },
                    },
                },
                {
                    id = "archaeology_animal_trophies",
                    name = "Animal trophies and other level 81 spots",
                    intensity = "low",
                    location = "Infernal Source, Stormguard, Kharid-et or Warforge",
                    notes = "From 81. Four hotspots to rotate between.",
                    wiki = "https://runescape.wiki/w/Animal_trophies",
                    requirements = {
                        levels = { { skill = "Archaeology", level = 81 } },
                    },
                    items = {
                        { label = "Mattock", contains = { "mattock" }, toolBelt = true },
                    },
                },
                {
                    id = "archaeology_ikovian_memorial",
                    name = "Ikovian memorial",
                    intensity = "low",
                    location = "Stormguard Citadel Dig Site",
                    notes = "From 70. Needs the Ikovian Tragedy research.",
                    wiki = "https://runescape.wiki/w/Ikovian_memorial",
                    requirements = {
                        levels = { { skill = "Archaeology", level = 70 } },
                    },
                    items = {
                        { label = "Mattock", contains = { "mattock" }, toolBelt = true },
                    },
                },
                {
                    id = "archaeology_green_gobbo_goodies",
                    name = "Green Gobbo Goodies collection",
                    intensity = "medium",
                    location = "Warforge Dig Site",
                    notes = "Green Gobbo Goodies I gives 34,533.5 XP per completion.",
                    wiki = "https://runescape.wiki/w/Warforge_Dig_Site",
                    requirements = {
                        levels = { { skill = "Archaeology", level = 76 } },
                    },
                },
            },
        },
        {
            from = 93, to = 100,
            methods = {
                {
                    id = "archaeology_destroyed_golem",
                    name = "Destroyed golem",
                    intensity = "low",
                    xpPerHour = 172000,
                    location = "Stormguard Citadel, R&D south-west",
                    notes = "From 98.",
                    wiki = "https://runescape.wiki/w/Destroyed_golem",
                    requirements = {
                        levels = { { skill = "Archaeology", level = 98 } },
                    },
                    items = {
                        { label = "Mattock", contains = { "mattock" }, toolBelt = true },
                    },
                },
                {
                    id = "archaeology_goblin_trainee_remains",
                    name = "Goblin trainee remains",
                    intensity = "low",
                    xpPerHour = 152000,
                    location = "Warforge, north goblin tunnels",
                    notes = "From 97.",
                    wiki = "https://runescape.wiki/w/Goblin_trainee_remains",
                    requirements = {
                        levels = { { skill = "Archaeology", level = 97 } },
                    },
                    items = {
                        { label = "Mattock", contains = { "mattock" }, toolBelt = true },
                    },
                },
                {
                    id = "archaeology_keshik_tower_debris",
                    name = "Keshik tower debris",
                    intensity = "low",
                    xpPerHour = 143000,
                    location = "Stormguard Citadel, Dayguard tower",
                    notes = "From 95. Remote; signs of the porter recommended.",
                    wiki = "https://runescape.wiki/w/Keshik_tower_debris",
                    requirements = {
                        levels = { { skill = "Archaeology", level = 95 } },
                    },
                    items = {
                        { label = "Mattock", contains = { "mattock" }, toolBelt = true },
                    },
                },
                {
                    id = "archaeology_armarium_debris",
                    name = "Armarium debris",
                    intensity = "low",
                    xpPerHour = 120000,
                    location = "Kharid-et Culinarum",
                    notes = "120k to 130k XP/hr, plus pylon batteries.",
                    wiki = "https://runescape.wiki/w/Armarium_debris",
                    requirements = {
                        levels = { { skill = "Archaeology", level = 93 } },
                    },
                    items = {
                        { label = "Mattock", contains = { "mattock" }, toolBelt = true },
                    },
                },
            },
        },
        {
            from = 100, to = 115,
            methods = {
                {
                    id = "archaeology_hellfire_forge",
                    name = "Hellfire forges",
                    intensity = "low",
                    xpPerHour = 210000,
                    location = "Infernal Source, north-east",
                    notes = "From 104, with bonuses. Recommended over Warforge scrap piles.",
                    wiki = "https://runescape.wiki/w/Hellfire_forge",
                    requirements = {
                        levels = { { skill = "Archaeology", level = 104 } },
                    },
                    items = {
                        { label = "Mattock", contains = { "mattock" }, toolBelt = true },
                    },
                },
                {
                    id = "archaeology_culinarum_debris",
                    name = "Culinarum debris",
                    intensity = "low",
                    xpPerHour = 183000,
                    location = "Kharid-et Culinarum",
                    notes = "From 100, with a mattock of Time and Space and the master outfit.",
                    wiki = "https://runescape.wiki/w/Culinarum_debris",
                    requirements = {
                        levels = { { skill = "Archaeology", level = 100 } },
                    },
                    items = {
                        { label = "Mattock", contains = { "mattock" }, toolBelt = true },
                    },
                },
                {
                    id = "archaeology_dragonkin_ii",
                    name = "Dragonkin II collection",
                    intensity = "medium",
                    notes = "From 102. 81,666.6 XP per completion; the wiki suggests repeating it to about 110.",
                    wiki = "https://runescape.wiki/w/Dragonkin_II",
                    requirements = {
                        levels = { { skill = "Archaeology", level = 102 } },
                    },
                },
            },
        },
        {
            from = 115, to = 121,
            methods = {
                {
                    id = "archaeology_bandos_sanctum",
                    name = "Bandos's sanctum debris",
                    intensity = "low",
                    location = "Warforge Dig Site",
                    notes = "From 115. Do Red Rum Relics III: 159,999.9 XP per completion.",
                    wiki = "https://runescape.wiki/w/Bandos%27s_sanctum_debris",
                    requirements = {
                        levels = { { skill = "Archaeology", level = 115 } },
                    },
                    items = {
                        { label = "Mattock", contains = { "mattock" }, toolBelt = true },
                    },
                },
                {
                    id = "archaeology_saurthen_debris",
                    name = "Saurthen debris",
                    intensity = "low",
                    location = "Orthen Dig Site, Xolo city",
                    notes = "Highest-level hotspot, at 120.",
                    wiki = "https://runescape.wiki/w/Saurthen_debris",
                    requirements = {
                        levels = { { skill = "Archaeology", level = 120 } },
                    },
                    items = {
                        { label = "Mattock", contains = { "mattock" }, toolBelt = true },
                    },
                },
            },
        },
    },

    boosts = {
        "Archaeologist's outfit: +1% XP per piece, +6% for the full set",
        "Pylon batteries add XP at Kharid-et",
        "Higher-tier mattocks raise precision and focus",
        "Collections give large XP rewards when handed in",
    },
}
