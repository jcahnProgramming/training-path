--[[
    Summoning training guide (data only, no code).

    Source: RuneScape Wiki, "Pay-to-play Summoning training"
    https://runescape.wiki/w/Pay-to-play_Summoning_training
    Licensed CC BY-NC-SA 3.0. Pouch choices copied from that page as of
    2026-10-22. The page gives almost no XP/hr figures for pouches, so
    xpPerHour is left out.
    Format: see docs/guide-format.md
]]

return {
    skill = "Summoning",
    maxLevel = 99,
    wiki = "https://runescape.wiki/w/Pay-to-play_Summoning_training",
    source = "Data: RuneScape Wiki, Pay-to-play Summoning training (CC BY-NC-SA 3.0)",

    bands = {
        {
            from = 1, to = 4,
            methods = {
                {
                    id = "summoning_wolf_whistle",
                    name = "Wolf Whistle (quest)",
                    intensity = "medium",
                    money = "Free",
                    notes = "Gives 276 XP (level 4) and 275 gold charms, enough to reach level 16.",
                    wiki = "https://runescape.wiki/w/Wolf_Whistle",
                },
            },
        },
        {
            from = 4, to = 16,
            methods = {
                {
                    id = "summoning_dreadfowl",
                    name = "Dreadfowl pouches",
                    intensity = "high",
                    location = "Any Summoning obelisk",
                    notes = "About 266 pouches for 4-16. Save green, crimson and blue charms.",
                    wiki = "https://runescape.wiki/w/Dreadfowl_pouch",
                    items = {
                        { label = "Gold charms", names = { "Gold charm" } },
                        { label = "Spirit shards", names = { "Spirit shards" } },
                        { label = "Pouches", names = { "Pouch" } },
                    },
                },
            },
        },
        {
            from = 16, to = 33,
            methods = {
                {
                    id = "summoning_granite_crab",
                    name = "Granite crab pouches",
                    intensity = "high",
                    location = "Any Summoning obelisk",
                    notes = "Gold charms. About 375 pouches for 16-28; save gold charms from 28 to 52.",
                    wiki = "https://runescape.wiki/w/Granite_crab_pouch",
                    items = {
                        { label = "Gold charms", names = { "Gold charm" } },
                        { label = "Spirit shards", names = { "Spirit shards" } },
                        { label = "Pouches", names = { "Pouch" } },
                    },
                },
                {
                    id = "summoning_compost_mound",
                    name = "Compost mound pouches",
                    intensity = "high",
                    location = "Any Summoning obelisk",
                    notes = "Green charms from 28. Desert wyrm before that, or save them.",
                    wiki = "https://runescape.wiki/w/Pay-to-play_Summoning_training",
                    items = {
                        { label = "Green charms", names = { "Green charm" } },
                        { label = "Spirit shards", names = { "Spirit shards" } },
                        { label = "Pouches", names = { "Pouch" } },
                    },
                },
            },
        },
        {
            from = 33, to = 52,
            methods = {
                {
                    id = "summoning_beaver_macaw_magpie",
                    name = "Beaver, macaw, then magpie pouches",
                    intensity = "high",
                    location = "Any Summoning obelisk",
                    notes = "Green charms. Beaver 33-41, macaw (or spirit cockatrice from 43) 41-47, magpie 47-56.",
                    wiki = "https://runescape.wiki/w/Magpie_pouch",
                    items = {
                        { label = "Green charms", names = { "Green charm" } },
                        { label = "Spirit shards", names = { "Spirit shards" } },
                        { label = "Pouches", names = { "Pouch" } },
                    },
                },
                {
                    id = "summoning_bat_pyrelord_leech",
                    name = "Vampyre bat, pyrelord, then bloated leech",
                    intensity = "high",
                    location = "Any Summoning obelisk",
                    notes = "Crimson charms. Vampyre bat or honey badger 33-46, pyrelord 46-49, bloated leech from 49.",
                    wiki = "https://runescape.wiki/w/Bloated_leech_pouch",
                    items = {
                        { label = "Crimson charms", names = { "Crimson charm" } },
                        { label = "Spirit shards", names = { "Spirit shards" } },
                        { label = "Pouches", names = { "Pouch" } },
                    },
                },
            },
        },
        {
            from = 52, to = 66,
            methods = {
                {
                    id = "summoning_spirit_terrorbird",
                    name = "Spirit terrorbird pouches",
                    intensity = "high",
                    location = "Any Summoning obelisk",
                    notes = "Best use of gold charms from 52 to 66.",
                    wiki = "https://runescape.wiki/w/Spirit_terrorbird_pouch",
                    items = {
                        { label = "Gold charms", names = { "Gold charm" } },
                        { label = "Spirit shards", names = { "Spirit shards" } },
                        { label = "Pouches", names = { "Pouch" } },
                    },
                },
                {
                    id = "summoning_ibis",
                    name = "Ibis pouches",
                    intensity = "high",
                    location = "Any Summoning obelisk",
                    notes = "Green charms from 56 (magpie before that).",
                    wiki = "https://runescape.wiki/w/Ibis_pouch",
                    items = {
                        { label = "Green charms", names = { "Green charm" } },
                        { label = "Spirit shards", names = { "Spirit shards" } },
                        { label = "Pouches", names = { "Pouch" } },
                    },
                },
                {
                    id = "summoning_leech_smoke_devil",
                    name = "Bloated leech, then smoke devil",
                    intensity = "high",
                    location = "Any Summoning obelisk",
                    notes = "Crimson charms. Smoke devil from 61; stranger plant from 64 also works.",
                    wiki = "https://runescape.wiki/w/Smoke_devil_pouch",
                    items = {
                        { label = "Crimson charms", names = { "Crimson charm" } },
                        { label = "Spirit shards", names = { "Spirit shards" } },
                        { label = "Pouches", names = { "Pouch" } },
                    },
                },
            },
        },
        {
            from = 66, to = 80,
            methods = {
                {
                    id = "summoning_barker_toad",
                    name = "Barker toad pouches",
                    intensity = "high",
                    location = "Any Summoning obelisk",
                    notes = "Gold charms. Many stop using gold charms around 66 (about 230k-240k XP/hr).",
                    wiki = "https://runescape.wiki/w/Barker_toad_pouch",
                    items = {
                        { label = "Gold charms", names = { "Gold charm" } },
                        { label = "Spirit shards", names = { "Spirit shards" } },
                        { label = "Pouches", names = { "Pouch" } },
                    },
                },
                {
                    id = "summoning_fruit_bat",
                    name = "Fruit bat or bunyip pouches",
                    intensity = "high",
                    location = "Any Summoning obelisk",
                    notes = "Green charms from 69 (ibis before that).",
                    wiki = "https://runescape.wiki/w/Fruit_bat_pouch",
                    items = {
                        { label = "Green charms", names = { "Green charm" } },
                        { label = "Spirit shards", names = { "Spirit shards" } },
                        { label = "Pouches", names = { "Pouch" } },
                    },
                },
                {
                    id = "summoning_granite_lobster",
                    name = "Granite lobster pouches",
                    intensity = "high",
                    location = "Any Summoning obelisk",
                    notes = "Crimson charms from 74; stranger plant or smoke devil before that.",
                    wiki = "https://runescape.wiki/w/Granite_lobster_pouch",
                    items = {
                        { label = "Crimson charms", names = { "Crimson charm" } },
                        { label = "Spirit shards", names = { "Spirit shards" } },
                        { label = "Pouches", names = { "Pouch" } },
                    },
                },
                {
                    id = "summoning_obsidian_golem",
                    name = "Obsidian golem pouches",
                    intensity = "high",
                    location = "Any Summoning obelisk",
                    notes = "Blue charms from 73, or save blue charms for geyser titans at 89.",
                    wiki = "https://runescape.wiki/w/Obsidian_golem_pouch",
                    items = {
                        { label = "Blue charms", names = { "Blue charm" } },
                        { label = "Spirit shards", names = { "Spirit shards" } },
                        { label = "Pouches", names = { "Pouch" } },
                    },
                },
            },
        },
        {
            from = 80, to = 89,
            methods = {
                {
                    id = "summoning_lava_titan",
                    name = "Lava titan pouches",
                    intensity = "high",
                    location = "Any Summoning obelisk",
                    notes = "Blue charms from 83 (fire or moss titan at 80-83).",
                    wiki = "https://runescape.wiki/w/Lava_titan_pouch",
                    items = {
                        { label = "Blue charms", names = { "Blue charm" } },
                        { label = "Spirit shards", names = { "Spirit shards" } },
                        { label = "Pouches", names = { "Pouch" } },
                    },
                },
                {
                    id = "summoning_spirit_dagannoth",
                    name = "Spirit dagannoth pouches",
                    intensity = "high",
                    location = "Any Summoning obelisk",
                    notes = "Crimson charms from 83; granite lobster before that.",
                    wiki = "https://runescape.wiki/w/Spirit_dagannoth_pouch",
                    items = {
                        { label = "Crimson charms", names = { "Crimson charm" } },
                        { label = "Spirit shards", names = { "Spirit shards" } },
                        { label = "Pouches", names = { "Pouch" } },
                    },
                },
                {
                    id = "summoning_hydra_fruit_bat",
                    name = "Hydra, fruit bat or bunyip pouches",
                    intensity = "high",
                    location = "Any Summoning obelisk",
                    notes = "Green charms. Many stop using green charms around 80 (about 370k-420k XP/hr).",
                    wiki = "https://runescape.wiki/w/Pay-to-play_Summoning_training",
                    items = {
                        { label = "Green charms", names = { "Green charm" } },
                        { label = "Spirit shards", names = { "Spirit shards" } },
                        { label = "Pouches", names = { "Pouch" } },
                    },
                },
            },
        },
        {
            from = 89, to = 100,
            methods = {
                {
                    id = "summoning_geyser_titan",
                    name = "Geyser titan pouches",
                    intensity = "high",
                    location = "Taverley obelisk or Prifddinas",
                    notes = "Best use of blue charms, 89-99. Uses water talismans.",
                    wiki = "https://runescape.wiki/w/Geyser_titan_pouch",
                    items = {
                        { label = "Blue charms", names = { "Blue charm" } },
                        { label = "Spirit shards", names = { "Spirit shards" } },
                        { label = "Pouches", names = { "Pouch" } },
                        { label = "Water talismans", names = { "Water talisman" } },
                    },
                },
                {
                    id = "summoning_unicorn_abyssal_titan",
                    name = "Unicorn stallion or abyssal titan pouches",
                    intensity = "high",
                    location = "Any Summoning obelisk",
                    notes = "Green charms. Abyssal titan from 93.",
                    wiki = "https://runescape.wiki/w/Unicorn_stallion_pouch",
                    items = {
                        { label = "Green charms", names = { "Green charm" } },
                        { label = "Spirit shards", names = { "Spirit shards" } },
                        { label = "Pouches", names = { "Pouch" } },
                    },
                },
                {
                    id = "summoning_dagannoth_pack_yak",
                    name = "Spirit dagannoth, then pack yak",
                    intensity = "high",
                    location = "Any Summoning obelisk",
                    notes = "Crimson charms. Pack yak from 96.",
                    wiki = "https://runescape.wiki/w/Pack_yak_pouch",
                    items = {
                        { label = "Crimson charms", names = { "Crimson charm" } },
                        { label = "Spirit shards", names = { "Spirit shards" } },
                        { label = "Pouches", names = { "Pouch" } },
                    },
                },
                {
                    id = "summoning_barker_toad_high",
                    name = "Barker toad pouches",
                    intensity = "high",
                    location = "Any Summoning obelisk",
                    notes = "Use leftover gold charms.",
                    wiki = "https://runescape.wiki/w/Barker_toad_pouch",
                    items = {
                        { label = "Gold charms", names = { "Gold charm" } },
                        { label = "Spirit shards", names = { "Spirit shards" } },
                        { label = "Pouches", names = { "Pouch" } },
                    },
                },
            },
        },
    },

    boosts = {
        "Shaman's outfit: +6% XP for the full set",
        "Summoning focus: +20% XP per pouch",
        "Spirit Weaver: +50% XP, one pouch at a time",
        "Voice of Seren: +20% XP at the Amlodd obelisk",
        "Spirit gems: 10-60% chance to save charms",
    },
}
