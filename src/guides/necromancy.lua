--[[
    Necromancy training guide (data only, no code).
    Source: RuneScape Wiki, "Necromancy training"
    https://runescape.wiki/w/Necromancy_training
    Licensed CC BY-NC-SA 3.0. Format: docs/guide-format.md.
    XP per kill figures are the wiki's Necromancy combat XP per kill.
]]

return {
    skill = "Necromancy",
    maxLevel = 120,
    wiki = "https://runescape.wiki/w/Necromancy_training",
    source = "Data: RuneScape Wiki, Necromancy training (CC BY-NC-SA 3.0)",

    bands = {
        {
            from = 1, to = 5,
            methods = {
                {
                    id = "necromancy_quest_necromancy",
                    name = "Necromancy! (quest)",
                    intensity = "high",
                    location = "Portal next to Draynor lodestone",
                    notes = "Teaches the skill and gives a death guard and skull lantern. Takes you to level 5.",
                    wiki = "https://runescape.wiki/w/Necromancy!",
                },
            },
        },
        {
            from = 5, to = 26,
            methods = {
                {
                    id = "necromancy_lesser_communion",
                    name = "Lesser communion rituals",
                    intensity = "medium",
                    location = "Ritual site west of the City of Um",
                    money = "Cost of 50 fragile mementos",
                    notes = "50 rituals give 400 souls for tier 3 talents and about level 26. Mementos can be noted.",
                    wiki = "https://runescape.wiki/w/Lesser_communion",
                    items = {
                        { label = "Fragile mementos", names = { "Fragile memento" } },
                    },
                },
            },
        },
        {
            from = 26, to = 40,
            methods = {
                {
                    id = "necromancy_kili_row_rune_mythos",
                    name = "Kili Row and Rune Mythos (quests)",
                    intensity = "high",
                    notes = "Both needed: Kili Row unlocks gear upgrades, Rune Mythos incantations. 1,500 XP.",
                    wiki = "https://runescape.wiki/w/Rune_Mythos",
                    requirements = {
                        levels = { { skill = "Necromancy", level = 24 } },
                        other = { "Kili Row needs 20 Necromancy, Rune Mythos 24" },
                    },
                },
                {
                    id = "necromancy_ghostly_trolls",
                    name = "Ghostly troll bruisers and throwers",
                    intensity = "medium",
                    location = "City of Um troll cave",
                    notes = "90 XP per kill. Weak to undead slayer effects like a salve amulet (e).",
                    wiki = "https://runescape.wiki/w/Ghostly_troll_bruiser",
                    items = {
                        { label = "Death guard", contains = { "death guard" } },
                        { label = "Skull lantern", contains = { "skull lantern" } },
                    },
                },
            },
        },
        {
            from = 40, to = 50,
            methods = {
                {
                    id = "necromancy_ghouls",
                    name = "Ghouls",
                    intensity = "medium",
                    location = "North of Canifis",
                    notes = "325 XP per kill. Drop congealed blood for super necromancy potions.",
                    wiki = "https://runescape.wiki/w/Ghoul",
                },
                {
                    id = "necromancy_ankou",
                    name = "Ankou",
                    intensity = "medium",
                    location = "Stronghold of Security, 4th level",
                    notes = "307.5 XP per kill. Weak to undead slayer effects.",
                    wiki = "https://runescape.wiki/w/Ankou",
                },
            },
        },
        {
            from = 50, to = 60,
            methods = {
                {
                    id = "necromancy_shadow_warriors",
                    name = "Shadow warriors",
                    intensity = "medium",
                    location = "Legends' Guild basement",
                    notes = "390 XP per kill. Weak to undead slayer effects.",
                    wiki = "https://runescape.wiki/w/Shadow_warrior",
                },
                {
                    id = "necromancy_bandits",
                    name = "Bandits",
                    intensity = "low",
                    location = "Bandit Camp, Kharidian Desert",
                    notes = "97.5 XP per kill. Aggressive if you wear Saradomin or Zamorak items. Low effort with tier 50 gear.",
                    wiki = "https://runescape.wiki/w/Bandit",
                },
                {
                    id = "necromancy_fetid_zombies",
                    name = "Fetid zombies",
                    intensity = "medium",
                    location = "Wilderness north of Fort Forinthry",
                    notes = "250 XP per kill. Weak to undead slayer effects.",
                    wiki = "https://runescape.wiki/w/Fetid_zombie",
                },
            },
        },
        {
            from = 60, to = 70,
            methods = {
                {
                    id = "necromancy_bloodvelds",
                    name = "Bloodvelds",
                    intensity = "low",
                    xpPerHour = 200000,
                    location = "Slayer Tower, 2nd floor south-west wing",
                    notes = "512 XP per kill. At least 200k XP/hr AFK with aggression potions.",
                    wiki = "https://runescape.wiki/w/Bloodveld",
                },
                {
                    id = "necromancy_armoured_zombies",
                    name = "Armoured zombies",
                    intensity = "low",
                    location = "Chaos Temple Dungeon",
                    notes = "310 XP per kill. Very AFK with tier 60 armour. Enter via Hartwin in Varrock Palace.",
                    wiki = "https://runescape.wiki/w/Armoured_zombie",
                    requirements = {
                        other = { "Partial completion of Defender of Varrock" },
                    },
                },
                {
                    id = "necromancy_greater_communion",
                    name = "Greater communion rituals",
                    intensity = "medium",
                    location = "Ritual site, City of Um",
                    notes = "Souls for Spectral Scythe: 38 rituals for 2,000 souls. Use two Multiply II glyphs.",
                    wiki = "https://runescape.wiki/w/Greater_communion",
                    items = {
                        { label = "Spirit mementos", names = { "Spirit memento" } },
                    },
                },
            },
        },
        {
            from = 70, to = 80,
            methods = {
                {
                    id = "necromancy_bound_skeletons",
                    name = "Bound skeletons",
                    intensity = "low",
                    xpPerHour = 180000,
                    location = "Wilderness north of Fort Forinthry",
                    notes = "600 XP per kill. Up to 180k XP/hr AFK. Permanently aggressive.",
                    wiki = "https://runescape.wiki/w/Bound_skeleton",
                },
                {
                    id = "necromancy_exiled_kalphite_marauders",
                    name = "Exiled kalphite marauders",
                    intensity = "low",
                    xpPerHour = 147000,
                    location = "Exiled Kalphite Hive, first room on the right",
                    notes = "350 XP per kill. 147k XP/hr on tier 70 gear. Use a ghost to counter the poison.",
                    wiki = "https://runescape.wiki/w/Exiled_kalphite_marauder",
                },
            },
        },
        {
            from = 80, to = 90,
            methods = {
                {
                    id = "necromancy_abyssal_savages",
                    name = "Abyssal savages",
                    intensity = "low",
                    xpPerHour = 900000,
                    location = "Wilderness, west of Rogues' Castle",
                    notes = "750 XP per kill. Up to 900k XP/hr AFK, 1.1m at level 90+.",
                    wiki = "https://runescape.wiki/w/Abyssal_savage",
                    requirements = {
                        levels = { { skill = "Slayer", level = 95 } },
                    },
                },
                {
                    id = "necromancy_abyssal_demons",
                    name = "Abyssal demons",
                    intensity = "low",
                    location = "Chaos Ridge or level 18 Wilderness",
                    notes = "425 XP per kill. Permanently aggressive at Chaos Ridge.",
                    wiki = "https://runescape.wiki/w/Abyssal_demon",
                    requirements = {
                        levels = { { skill = "Slayer", level = 85 } },
                    },
                },
            },
        },
        {
            from = 90, to = 99,
            methods = {
                {
                    id = "necromancy_powerful_necroplasm",
                    name = "Powerful necroplasm rituals",
                    intensity = "high",
                    location = "Ritual site, City of Um",
                    notes = "Near top XP for less cost. Three Attraction III glyphs; do every disturbance.",
                    wiki = "https://runescape.wiki/w/Powerful_necroplasm_(ritual)",
                    items = {
                        { label = "Greater necroplasm", names = { "Greater necroplasm" }, count = 200 },
                        { label = "Alteration necklace", names = { "Alteration necklace" } },
                    },
                },
                {
                    id = "necromancy_powerful_communion",
                    name = "Powerful communion rituals",
                    intensity = "high",
                    location = "Ritual site, City of Um",
                    notes = "For souls: 35,000 unlocks Split Soul. Most XP comes from disturbances.",
                    wiki = "https://runescape.wiki/w/Powerful_communion",
                    items = {
                        { label = "Robust or powerful memento", names = { "Robust memento", "Powerful memento" } },
                        { label = "Alteration necklace", names = { "Alteration necklace" } },
                    },
                },
                {
                    id = "necromancy_greater_necroplasm",
                    name = "Greater necroplasm rituals",
                    intensity = "high",
                    location = "Ritual site, City of Um",
                    money = "Profitable",
                    notes = "Less XP than powerful rituals (no Defile disturbance).",
                    wiki = "https://runescape.wiki/w/Greater_necroplasm_(ritual)",
                    items = {
                        { label = "Lesser necroplasm", names = { "Lesser necroplasm" }, count = 200 },
                        { label = "Alteration necklace", names = { "Alteration necklace" } },
                    },
                },
                {
                    id = "necromancy_ravenous_ghouls",
                    name = "Ravenous ghouls",
                    intensity = "low",
                    xpPerHour = 850000,
                    location = "Slayer Tower Mausoleum",
                    notes = "725 XP per kill. AFK; aggressive if you wear a blood essence. Bad loot.",
                    wiki = "https://runescape.wiki/w/Ravenous_ghoul",
                },
            },
        },
        {
            from = 99, to = 121,
            methods = {
                {
                    id = "necromancy_powerful_essence",
                    name = "Powerful essence rituals",
                    intensity = "high",
                    location = "Ritual site, City of Um",
                    notes = "Absolute highest ritual XP, under 5% above other powerful rituals.",
                    wiki = "https://runescape.wiki/w/Powerful_essence",
                    requirements = {
                        levels = { { skill = "Necromancy", level = 95 } },
                        quests = { "Rune Mythos" },
                    },
                    items = {
                        { label = "Pure essence", names = { "Pure essence" }, count = 800 },
                        { label = "Alteration necklace", names = { "Alteration necklace" } },
                    },
                },
                {
                    id = "necromancy_armoured_phantoms",
                    name = "Armoured phantoms",
                    intensity = "low",
                    xpPerHour = 1600000,
                    location = "Wilderness Crypt",
                    notes = "2,625 XP per kill. Up to 1.6m XP/hr AFK.",
                    wiki = "https://runescape.wiki/w/Armoured_phantom",
                    requirements = {
                        levels = { { skill = "Slayer", level = 113 } },
                    },
                },
                {
                    id = "necromancy_abyssal_beasts",
                    name = "Abyssal beasts",
                    intensity = "low",
                    xpPerHour = 1300000,
                    location = "South of the Lava Maze, Wilderness",
                    money = "Over 9M coins per hour",
                    notes = "1,950 XP per kill. Up to 1.3m XP/hr AFK. High defence.",
                    wiki = "https://runescape.wiki/w/Abyssal_beast",
                    requirements = {
                        levels = { { skill = "Slayer", level = 105 } },
                    },
                },
            },
        },
    },

    boosts = {
        "Upgrade your death guard and skull lantern at every 10th level (Kili's tasks).",
        "Underworld Grimoire: +3% to 12% XP from ritual disturbances.",
        "Ritualist's outfit: 1% XP per piece, 6% for the full set.",
        "Ring of Kayazu: +80% soul attraction, 20% chance to double disturbance rewards.",
    },
}
