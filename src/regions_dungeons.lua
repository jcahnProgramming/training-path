--[[
    regions_dungeons.lua
    --------------------
    Data only. Gated (and checked-but-open) dungeons, guilds, dig sites and
    other areas named in training method locations, with how to unlock them.
    Facts come from the RuneScape Wiki (RS3). Keyed by lowercase id.
    A region with no `requirements` was checked and is open to members.
]]

return {
    ------------------------------------------------------------------------
    -- Dungeons
    ------------------------------------------------------------------------
    god_wars_dungeon = {
        name = "God Wars Dungeon",
        match = { "god wars dungeon" },
        requirements = {
            other = {
                "Partial: Troll Stronghold (defeat Dad)",
                "60 Strength or 60 Agility (boostable) to pass the boulder",
                "15 Agility to explore inside",
            },
        },
        howTo = "Defeat Dad in Troll Stronghold, then pass the boulder with 60 Strength or 60 Agility. Bandos's Stronghold needs 70 Strength (not boostable) and a hammer.",
        wiki = "https://runescape.wiki/w/God_Wars_Dungeon",
    },

    bandos_throne_room = {
        name = "Bandos's Throne Room",
        match = { "bandos's throne room" },
        requirements = {
            quests = { "The Chosen Commander" },
            other = { "Crossbow and a mithril grapple or enhanced grappling hook (for the Agility course)" },
        },
        howTo = "Complete The Chosen Commander. Reach the room with a Bandos throne room sphere from Oldak, or fairy ring BLQ and the strange box.",
        wiki = "https://runescape.wiki/w/Bandos%27s_Throne_Room_Agility_Course",
    },

    sophanem_slayer_dungeon = {
        name = "Sophanem Slayer Dungeon",
        match = { "sophanem slayer dungeon" },
        requirements = {
            other = {
                "Partial: Icthlarin's Little Helper (to reach Sophanem)",
                "Feathers of Ma'at to kill the monsters",
            },
        },
        howTo = "Entering has no requirements, but reaching Sophanem needs part of Icthlarin's Little Helper. Bring Feathers of Ma'at.",
        wiki = "https://runescape.wiki/w/Sophanem_Slayer_Dungeon",
    },

    pollnivneach_slayer_dungeon = {
        name = "Pollnivneach Slayer Dungeon",
        match = { "pollnivneach slayer dungeon" },
        requirements = {
            quests = { "Smoking Kills" },
            other = { "Smoke protection: face mask, masked earmuffs or slayer helmet" },
        },
        howTo = "Complete Smoking Kills for full access, and wear a face mask or slayer helmet against the smoke.",
        wiki = "https://runescape.wiki/w/Pollnivneach_Slayer_Dungeon",
    },

    kuradals_dungeon = {
        name = "Kuradal's Dungeon",
        match = { "kuradal's dungeon" },
        requirements = {
            levels = { { skill = "Slayer", level = 75 } },
            other = {
                "Combat level 110",
                "A Slayer task from Kuradal (or a Slayer Wildcard)",
                "No dwarf multicannon in your backpack",
            },
        },
        howTo = "Get 75 Slayer and combat level 110, then take a task from Kuradal. Teleport there with a ferocious ring or Slayer cape.",
        wiki = "https://runescape.wiki/w/Kuradal%27s_Dungeon",
    },

    ancient_cavern = {
        name = "Ancient Cavern",
        -- Only the "or Ancient Cavern" form, so Kuradal's Dungeon (reachable by ferocious ring) is not gated by this.
        match = { "or ancient cavern" },
        requirements = {
            levels = { { skill = "Firemaking", level = 35 } },
            other = { "Partial: Barbarian Training (Firemaking, ask Otto about pyre ships)" },
        },
        howTo = "Do Barbarian Firemaking with Otto Godblessed and ask him about pyre ships, then jump into the whirlpool above Baxtorian Falls.",
        wiki = "https://runescape.wiki/w/Ancient_Cavern",
    },

    brimhaven_dungeon = {
        name = "Brimhaven Dungeon",
        match = { "brimhaven dungeon" },
        requirements = {
            other = { "875 coins entry fee (free with Hard Karamja achievements)" },
        },
        howTo = "Pay Saniboch 875 coins at the entrance. It is free after the Hard Karamja achievements.",
        wiki = "https://runescape.wiki/w/Brimhaven_Dungeon",
    },

    grotworm_lair = {
        name = "Grotworm Lair",
        match = { "grotworm lair" },
        howTo = "Open to all members, north-west of the Port Sarim lodestone. No quest needed.",
        wiki = "https://runescape.wiki/w/Grotworm_Lair",
    },

    exiled_kalphite_hive = {
        name = "Exiled Kalphite Hive",
        match = { "exiled kalphite hive" },
        howTo = "Open to all members. No quest or level is needed to enter.",
        wiki = "https://runescape.wiki/w/Exiled_Kalphite_Hive",
    },

    jadinko_lair = {
        name = "Jadinko Lair",
        match = { "jadinko lair" },
        requirements = {
            other = {
                "Access to the Kharazi Jungle (the wiki does not say how)",
                "Speak to Dotmatrix at the entrance the first time",
            },
        },
        howTo = "Reach the Kharazi Jungle and talk to Dotmatrix at the entrance. The wiki lists no level to enter; activities need 80+ in their skills.",
        wiki = "https://runescape.wiki/w/Jadinko_Lair",
    },

    fremennik_slayer_dungeon = {
        name = "Fremennik Slayer Dungeon",
        match = { "fremennik slayer dungeon" },
        howTo = "Open to all members. Monsters inside need the matching Slayer level to kill.",
        wiki = "https://runescape.wiki/w/Fremennik_Slayer_Dungeon",
    },

    taverley_dungeon = {
        name = "Taverley Dungeon",
        match = { "taverley dungeon" },
        howTo = "Open to all members. Deeper areas need a dusty key, or the 70 Agility (blue dragons) / 80 Agility shortcuts.",
        wiki = "https://runescape.wiki/w/Taverley_Dungeon",
    },

    chaos_tunnels = {
        name = "Chaos Tunnels",
        match = { "chaos tunnels" },
        howTo = "Open to all members, no quests. The tunnels lie under the Wilderness but are safe.",
        wiki = "https://runescape.wiki/w/Chaos_Tunnels",
    },

    stronghold_of_security = {
        name = "Stronghold of Security",
        match = { "stronghold of security" },
        howTo = "Open to everyone, including free players. Walk down through each level in turn.",
        wiki = "https://runescape.wiki/w/Stronghold_of_Security",
    },

    edgeville_dungeon = {
        name = "Edgeville Dungeon",
        match = { "edgeville dungeon" },
        howTo = "Open to everyone via the trapdoor south of Edgeville bank. Only the northern end is in the Wilderness.",
        wiki = "https://runescape.wiki/w/Edgeville_Dungeon",
    },

    chaos_temple_dungeon = {
        name = "Chaos Temple Dungeon",
        match = { "chaos temple dungeon" },
        requirements = {
            other = { "Partial: Defender of Varrock" },
        },
        howTo = "Complete at least part of Defender of Varrock. Hartwin in Varrock Palace can teleport you to the trapdoor.",
        wiki = "https://runescape.wiki/w/Chaos_Temple_Dungeon",
    },

    hideout_ham = {
        name = "H.A.M. Hideout",
        match = { "h.a.m. hideout" },
        howTo = "Open to members. Pick the lock on the trapdoor with Thieving (the wiki gives no level).",
        wiki = "https://runescape.wiki/w/H.A.M._Hideout",
    },

    gemstone_cavern = {
        name = "Gemstone cavern",
        match = { "gemstone cavern" },
        requirements = {
            other = {
                "Karamja gloves 3 or better",
                "A gemstone dragons Slayer task, or pay Kelhar with an uncut gem",
            },
        },
        howTo = "Have Karamja gloves 3 or better, and a gemstone dragon task (or pay Kelhar in uncut dragonstone, onyx or hydrix).",
        wiki = "https://runescape.wiki/w/Gemstone_cavern",
    },

    sunken_pyramid = {
        name = "Sunken Pyramid",
        match = { "sunken pyramid" },
        requirements = {
            levels = { { skill = "Slayer", level = 99 } },
            other = { "Partial: The Jack of Spades (to reach Menaphos)" },
        },
        howTo = "Get 99 Slayer and reach Menaphos (part of The Jack of Spades). Take the boat from Portmaster Kags in the Port district.",
        wiki = "https://runescape.wiki/w/Sunken_Pyramid",
    },

    werewolf_agility = {
        name = "Werewolf Agility area",
        match = { "werewolf agility" },
        requirements = {
            quests = { "Creature of Fenkenstrain" },
            levels = { { skill = "Agility", level = 60 } },
            other = { "Wear a ring of charos to pass the guard" },
        },
        howTo = "Complete Creature of Fenkenstrain for the ring of charos and wear it to go down the trapdoor east of Canifis. The course needs 60 Agility.",
        wiki = "https://runescape.wiki/w/Werewolf_Agility_Course",
    },

    ------------------------------------------------------------------------
    -- Guilds
    ------------------------------------------------------------------------
    legends_guild = {
        name = "Legends' Guild",
        match = { "legends' guild" },
        requirements = {
            quests = { "Legends' Quest" },
        },
        howTo = "Complete Legends' Quest to enter the guild building and its basement dungeon.",
        wiki = "https://runescape.wiki/w/Legends%27_Guild_Dungeon",
    },

    mining_guild = {
        name = "Mining Guild",
        match = { "mining guild" },
        requirements = {
            levels = { { skill = "Mining", level = 60 } },
        },
        howTo = "Get 60 Mining (boosts work) to enter.",
        wiki = "https://runescape.wiki/w/Mining_Guild",
    },

    mining_guild_resource_dungeon = {
        name = "Mining Guild resource dungeon",
        match = { "mining guild resource dungeon" },
        requirements = {
            levels = {
                { skill = "Mining", level = 60 },
                { skill = "Dungeoneering", level = 45 },
            },
        },
        howTo = "Get 60 Mining to enter the Mining Guild and 45 Dungeoneering for the resource dungeon.",
        wiki = "https://runescape.wiki/w/Mining_Guild_resource_dungeon",
    },

    invention_guild = {
        name = "Invention Guild",
        match = { "invention guild" },
        requirements = {
            levels = {
                { skill = "Crafting", level = 80 },
                { skill = "Divination", level = 80 },
                { skill = "Smithing", level = 80 },
            },
        },
        howTo = "Get 80 Crafting, Divination and Smithing (not boostable) to unlock Invention, then talk to Doc in the guild.",
        wiki = "https://runescape.wiki/w/Invention_Guild",
    },

    ------------------------------------------------------------------------
    -- Runecrafting
    ------------------------------------------------------------------------
    runespan = {
        name = "Runespan",
        match = { "runespan" },
        howTo = "Open to everyone via the Wizards' Tower portal. The middle floor needs 33 Runecrafting, the upper floor 66 (members).",
        wiki = "https://runescape.wiki/w/Runespan",
    },

    necromantic_rune_temple = {
        name = "Necromantic Rune Temple",
        match = { "necromantic rune temple" },
        requirements = {
            other = { "Rune Mythos (wiki says 'most of' it on one page and 'completing' it on another)" },
        },
        howTo = "Progress Rune Mythos; the wiki is unclear whether all or most of it is needed. Enter by the dark portal in north-east City of Um.",
        wiki = "https://runescape.wiki/w/Necromantic_Rune_Temple",
    },

    ------------------------------------------------------------------------
    -- Archaeology dig sites
    ------------------------------------------------------------------------
    varrock_dig_site = {
        name = "Varrock Dig Site",
        match = { "varrock dig site" },
        howTo = "Open to everyone, no Archaeology level. Full use needs progress in The Dig Site quest.",
        wiki = "https://runescape.wiki/w/Varrock_Dig_Site",
    },

    kharid_et = {
        name = "Kharid-et Dig Site",
        match = { "kharid-et" },
        requirements = {
            levels = { { skill = "Archaeology", level = 5 } },
        },
        howTo = "Get 5 Archaeology. The main gate into the fortress needs 12 Archaeology to clear.",
        wiki = "https://runescape.wiki/w/Kharid-et_Dig_Site",
    },

    vault_of_hereditas = {
        name = "Kharid-et sealed wing (Vault of Hereditas)",
        match = { "sealed wing" },
        requirements = {
            levels = {
                { skill = "Archaeology", level = 5 },
                { skill = "Thieving", level = 95 },
            },
            other = { "Breaking the Seal (Archaeology mystery)", "Speak to Liara at the entrance" },
        },
        howTo = "Complete the Breaking the Seal mystery and have 95 Thieving (not boostable), then talk to Liara.",
        wiki = "https://runescape.wiki/w/Vault_of_Hereditas",
    },

    infernal_source = {
        name = "Infernal Source Dig Site",
        match = { "infernal source" },
        requirements = {
            levels = { { skill = "Archaeology", level = 20 } },
        },
        howTo = "Get 20 Archaeology to receive Movario's invitation.",
        wiki = "https://runescape.wiki/w/Infernal_Source_Dig_Site",
    },

    dungeon_of_disorder = {
        name = "Dungeon of Disorder",
        match = { "dungeon of disorder" },
        requirements = {
            levels = { { skill = "Archaeology", level = 24 } },
            other = { "Eyes in Their Stars (Archaeology mystery)" },
        },
        howTo = "Get 24 Archaeology and complete the Eyes in Their Stars mystery.",
        wiki = "https://runescape.wiki/w/Infernal_Source_Dig_Site",
    },

    vestibule_of_futility = {
        name = "Vestibule of Futility",
        match = { "vestibule of futility" },
        requirements = {
            levels = { { skill = "Archaeology", level = 29 } },
            other = { "Embrace the Chaos (Archaeology mystery)" },
        },
        howTo = "Complete the Embrace the Chaos mystery (29 Archaeology) to enter the Source.",
        wiki = "https://runescape.wiki/w/Infernal_Source_Dig_Site",
    },

    everlight = {
        name = "Everlight Dig Site",
        match = { "everlight" },
        requirements = {
            levels = { { skill = "Archaeology", level = 42 } },
            other = { "Morytania access (partial Priest in Peril, or kill the ghoul beneath Paterdomus)" },
        },
        howTo = "Get 42 Archaeology for the Everlight invitation, and be able to enter Morytania.",
        wiki = "https://runescape.wiki/w/Everlight_Dig_Site",
    },

    moonrise = {
        name = "Moonrise Dig Site",
        match = { "moonrise" },
        requirements = {
            levels = { { skill = "Archaeology", level = 52 } },
            other = { "Partial: Secrets of Amberfell", "Speak to Utu at the Moonrise Temple entrance" },
        },
        howTo = "Get 52 Archaeology and progress Secrets of Amberfell far enough to reach north Amberfell, then talk to Utu.",
        wiki = "https://runescape.wiki/w/Moonrise_Dig_Site",
    },

    stormguard_citadel = {
        name = "Stormguard Citadel Dig Site",
        match = { "stormguard" },
        requirements = {
            levels = { { skill = "Archaeology", level = 70 } },
            other = {
                "Archaeology Guild assistant qualification",
                "Restored Ikovian gerege to enter the Citadel",
                "Boots of Flight / wingsuit for further areas",
            },
        },
        howTo = "Get 70 Archaeology and the assistant qualification, then restore an Ikovian gerege to enter. Boots of Flight and a wingsuit open further areas.",
        wiki = "https://runescape.wiki/w/Stormguard_Citadel_Dig_Site",
    },

    daemonheim_dig_site = {
        name = "Daemonheim Dig Site",
        match = { "daemonheim dig site" },
        requirements = {
            levels = { { skill = "Archaeology", level = 73 } },
            other = { "Free Skaldrun on a frozen Dungeoneering floor" },
        },
        howTo = "Get 73 Archaeology and free Skaldrun (a frozen figure on high-complexity frozen floors) with fire.",
        wiki = "https://runescape.wiki/w/Daemonheim_Dig_Site",
    },

    warforge = {
        name = "Warforge Dig Site",
        match = { "warforge" },
        requirements = {
            levels = { { skill = "Archaeology", level = 76 } },
            other = { "Archaeology Guild assistant qualification" },
        },
        howTo = "Get 76 Archaeology and the assistant qualification.",
        wiki = "https://runescape.wiki/w/Warforge_Dig_Site",
    },

    warforge_north_tunnels = {
        name = "Warforge north goblin tunnels",
        match = { "north goblin tunnels" },
        requirements = {
            levels = { { skill = "Archaeology", level = 83 } },
            other = { "Archaeology Guild assistant qualification" },
        },
        howTo = "Clear the barricade under the Crucible throne with 83 Archaeology.",
        wiki = "https://runescape.wiki/w/Warforge_Dig_Site",
    },

    orthen = {
        name = "Orthen Dig Site",
        match = { "orthen" },
        requirements = {
            levels = { { skill = "Archaeology", level = 90 } },
            other = { "Archaeology Guild associate qualification", "Anachronia base camp tutorial" },
        },
        howTo = "Get 90 Archaeology and the associate qualification, and finish the Anachronia base camp tutorial.",
        wiki = "https://runescape.wiki/w/Orthen_Dig_Site",
    },

    xolo_city = {
        name = "Xolo City (Orthen)",
        match = { "xolo city" },
        requirements = {
            levels = {
                { skill = "Archaeology", level = 108 },
                { skill = "Hunter", level = 86 },
            },
            other = { "Orthen Dig Site access (associate qualification)", "Levels are boostable to unlock" },
        },
        howTo = "Unlock Xolo City with 108 Archaeology and 86 Hunter (both boostable). Its excavation site needs 113 Archaeology.",
        wiki = "https://runescape.wiki/w/Orthen_Dig_Site",
    },

    ------------------------------------------------------------------------
    -- Other areas
    ------------------------------------------------------------------------
    daemonheim = {
        name = "Daemonheim",
        match = { "daemonheim" },
        howTo = "Open to everyone, including free players. Get there with the ring of kinship from the Dungeoneering tutor.",
        wiki = "https://runescape.wiki/w/Daemonheim",
    },

    wilderness = {
        name = "Wilderness",
        match = { "wilderness" },
        howTo = "No requirements: teleport to Edgeville or Fort Forinthry and cross the wall.",
        wiki = "https://runescape.wiki/w/Wilderness",
        danger = "Wilderness: aggressive monsters, and other players can attack you if you opt into PvP",
    },

    void_knights_outpost = {
        name = "Void Knights' Outpost",
        match = { "void knights' outpost" },
        howTo = "Open to members. Talk to the Squire on the Port Sarim pier for a free boat.",
        wiki = "https://runescape.wiki/w/Void_Knights%27_Outpost",
    },

    tree_gnome_stronghold = {
        name = "Tree Gnome Stronghold",
        match = { "gnome stronghold" },
        howTo = "Open to members, no quest needed. Walk in through the main gate.",
        wiki = "https://runescape.wiki/w/Tree_Gnome_Stronghold",
    },
}
