--[[
    regions_cities.lua
    ------------------
    Data only. Gated cities and areas, and how a player unlocks access.
    Facts come from the RuneScape Wiki (RS3). Regions with no
    requirements are open to all members and are listed so we know
    they were checked.
]]

return {
    prifddinas = {
        name = "Prifddinas",
        match = { "prifddinas", "trahaearn", "crwys", "ithell", "hefin", "meilyr" },
        requirements = {
            quests = { "Plague's End" },
            other = { "Enter on foot the first time before teleports work" },
        },
        howTo = "Complete the quest Plague's End. It needs 75 in Agility, Construction, Crafting, Dungeoneering, Herblore, Mining, Prayer, Ranged, Summoning and Woodcutting.",
        wiki = "https://runescape.wiki/w/Prifddinas",
    },

    menaphos = {
        name = "Menaphos",
        match = { "menaphos" },
        requirements = {
            other = {
                "Partial: The Jack of Spades (start it with Emir Ali Mirza in Al Kharid palace)",
                "VIP area: Menaphos reputation tier 7",
            },
        },
        howTo = "Start The Jack of Spades in the Al Kharid palace and play it until you reach Menaphos. The VIP area needs tier 7 Menaphos reputation.",
        wiki = "https://runescape.wiki/w/Menaphos",
    },

    darkmeyer = {
        name = "Darkmeyer",
        match = { "darkmeyer" },
        requirements = {
            other = {
                "Partial: The Branches of Darkmeyer",
                "Wear the full Darkmeyer disguise or the House Drakan outfit",
            },
        },
        howTo = "Play part of The Branches of Darkmeyer, then wear the Darkmeyer disguise (or House Drakan outfit) so the guards don't throw you out.",
        wiki = "https://runescape.wiki/w/Darkmeyer",
    },

    morytania = {
        name = "Morytania (Canifis, Slayer Tower)",
        match = { "canifis", "slayer tower", "werewolf" },
        requirements = {
            other = { "Priest in Peril, or kill the ghoul in the mausoleum under Paterdomus" },
        },
        howTo = "To enter Morytania, complete Priest in Peril or kill the ghoul under the Paterdomus temple and pass the holy barrier. The Slayer Tower and its Mausoleum need nothing more.",
        wiki = "https://runescape.wiki/w/Morytania",
    },

    port_phasmatys = {
        name = "Port Phasmatys",
        match = { "port phasmatys" },
        requirements = {
            other = {
                "Morytania access (Priest in Peril, or kill the ghoul under Paterdomus)",
                "Before Ghosts Ahoy: pay 2 ecto-tokens and wear a ghostspeak amulet (from The Restless Ghost)",
            },
        },
        howTo = "Pay 2 ecto-tokens at the gate while wearing a ghostspeak amulet. After Ghosts Ahoy, entry is free and needs no amulet.",
        wiki = "https://runescape.wiki/w/Port_Phasmatys",
    },

    dragontooth_island = {
        name = "Dragontooth Island",
        match = { "dragontooth" },
        requirements = {
            other = {
                "Reach the ghost captain in Port Phasmatys",
                "Wear a ghostspeak amulet or cramulet, or have the hard Morytania achievements",
            },
        },
        howTo = "Talk to the ghost captain in Port Phasmatys while wearing a ghostspeak amulet (from The Restless Ghost). Ghosts Ahoy is not needed.",
        wiki = "https://runescape.wiki/w/Dragontooth_Island",
    },

    ape_atoll = {
        name = "Ape Atoll",
        match = { "ape atoll" },
        requirements = {
            other = { "Started: Monkey Madness" },
        },
        howTo = "Start the quest Monkey Madness. Parts of the island (like the Agility course) also need a ninja monkey greegree.",
        wiki = "https://runescape.wiki/w/Ape_Atoll",
    },

    lletya = {
        name = "Lletya (Tirannwn)",
        match = { "lletya" },
        requirements = {
            other = { "Started: Mourning's End Part I, or partial: The Prisoner of Glouphrie" },
        },
        howTo = "Start Mourning's End Part I (Eluned teleports you in), or play part of The Prisoner of Glouphrie to use the path near the Ourania Altar.",
        wiki = "https://runescape.wiki/w/Lletya",
    },

    neitiznot = {
        name = "Neitiznot",
        match = { "neitiznot" },
        requirements = {
            quests = { "The Fremennik Trials" },
            other = { "Started: The Fremennik Isles (first few steps)" },
        },
        howTo = "Complete The Fremennik Trials, then start The Fremennik Isles and take Maria Gunnars' boat from the north dock of Rellekka.",
        wiki = "https://runescape.wiki/w/Neitiznot",
    },

    zanaris = {
        name = "Zanaris",
        match = { "zanaris" },
        requirements = {
            quests = { "Lost City" },
        },
        howTo = "Complete Lost City, then enter the Lumbridge Swamp shed holding a Dramen staff (or lunar staff).",
        wiki = "https://runescape.wiki/w/Zanaris",
    },

    fairy_rings = {
        name = "Fairy rings",
        match = { "fairy ring" },
        requirements = {
            quests = { "Priest in Peril", "Nature Spirit", "Lost City", "A Fairy Tale I - Growing Pains" },
            other = {
                "Started: A Fairy Tale II - Cure a Queen",
                "Dramen or lunar staff, unless A Fairy Tale III - Battle at Ork's Rift is complete",
            },
        },
        howTo = "Fairy rings are a travel shortcut. To use them, finish the listed quests, start A Fairy Tale II, and wield a Dramen or lunar staff.",
        wiki = "https://runescape.wiki/w/Fairy_rings",
    },

    soul_altar = {
        name = "Soul altar",
        match = { "soul altar" },
        requirements = {
            other = {
                "'Phite Club (needed for the soul ruins in Menaphos)",
                "First visit: drain the fountain with a soul or omni talisman, tiara or staff",
            },
        },
        howTo = "The soul ruins in Menaphos open after 'Phite Club. The wiki also says you can enter through the Abyss, but is unclear whether that route skips the quest.",
        wiki = "https://runescape.wiki/w/Soul_altar",
    },

    dorgesh_kaan = {
        name = "Dorgesh-Kaan",
        match = { "dorgesh-kaan" },
        requirements = {
            quests = { "Death to the Dorgeshuun" },
        },
        howTo = "Complete the quest Death to the Dorgeshuun. Bring a light source for the cave routes.",
        wiki = "https://runescape.wiki/w/Dorgesh-Kaan",
    },

    shilo_village = {
        name = "Shilo Village",
        match = { "shilo village" },
        requirements = {
            quests = { "Shilo Village" },
        },
        howTo = "Complete the quest Shilo Village (it needs Jungle Potion, 32 Agility and 20 Crafting).",
        wiki = "https://runescape.wiki/w/Shilo_Village",
    },

    mos_le_harmless = {
        name = "Mos Le'Harmless",
        match = { "mos le'harmless" },
        requirements = {
            quests = { "Cabin Fever" },
        },
        howTo = "Complete the quest Cabin Fever. To understand the pirates, carry the Little Book o' Piracy or complete Rocking Out.",
        wiki = "https://runescape.wiki/w/Mos_Le%27Harmless",
    },

    fort_forinthry = {
        name = "Fort Forinthry",
        match = { "fort forinthry" },
        requirements = {},
        howTo = "Open to all members, north-east of Varrock. The fort is safe, but its gates lead into the Wilderness.",
        wiki = "https://runescape.wiki/w/Fort_Forinthry",
    },

    fort_forinthry_workshop = {
        name = "Fort Forinthry Workshop",
        match = { "forinthry workshop" },
        requirements = {
            other = { "Build the Workshop at Fort Forinthry (tier 1: 8 wooden frames, 6 stone wall segments)" },
        },
        howTo = "Build the Workshop in your Fort Forinthry. It is the one building you can make before nearly finishing New Foundations.",
        wiki = "https://runescape.wiki/w/Fort_Forinthry",
    },

    city_of_um = {
        name = "City of Um",
        match = { "city of um" },
        requirements = {},
        howTo = "Open to all members. Enter the Underworld portal just north of the Draynor lodestone; this starts the Necromancy! quest if needed.",
        wiki = "https://runescape.wiki/w/City_of_Um",
    },

    havenhythe = {
        name = "Havenhythe",
        match = { "havenhythe" },
        requirements = {
            other = { "Partial: Visions of Havenhythe (start in the Rusty Anchor, Port Sarim)" },
        },
        howTo = "Start Visions of Havenhythe at the Rusty Anchor in Port Sarim and play it until you arrive. The wiki doesn't say exactly which step unlocks access.",
        wiki = "https://runescape.wiki/w/Havenhythe",
    },

    wendlewick = {
        name = "Wendlewick",
        match = { "wendlewick" },
        requirements = {
            other = { "Partial: Visions of Havenhythe (lodestone is built when the quest ends)" },
        },
        howTo = "Start Visions of Havenhythe at the Rusty Anchor in Port Sarim and play it until you reach Wendlewick. Its lodestone works after you finish the quest.",
        wiki = "https://runescape.wiki/w/Wendlewick",
    },

    hets_oasis = {
        name = "Het's Oasis",
        match = { "het's oasis" },
        requirements = {},
        howTo = "Open to all members. Use a ring of duelling, or walk north-east from the Al Kharid lodestone.",
        wiki = "https://runescape.wiki/w/Het%27s_Oasis",
    },

    anachronia = {
        name = "Anachronia",
        match = { "anachronia" },
        requirements = {},
        howTo = "Open to all members. Your first trip is on The Stormbreaker, the ship east of the Varrock Dig Site.",
        wiki = "https://runescape.wiki/w/Anachronia",
    },

    the_arc = {
        name = "The Arc",
        match = { "the arc", "tuai leit", "uncharted isles" },
        requirements = {
            quests = { "Impressing the Locals" },
            other = { "Uncharted Isles: enough supplies for the voyage (Rosie gives 5 free a day)" },
        },
        howTo = "Complete the quest Impressing the Locals, then talk to Quartermaster Gully in Port Sarim or Menaphos.",
        wiki = "https://runescape.wiki/w/The_Arc",
    },

    elder_halls = {
        name = "Elder Halls",
        match = { "elder halls" },
        requirements = {
            quests = { "Fate of the Gods" },
        },
        howTo = "Complete Fate of the Gods. Then use the World Gate (for example via the Sixth-Age circuit) to reach the Elder Halls on Freneskae.",
        wiki = "https://runescape.wiki/w/Elder_wisp",
    },

    memorial_to_guthix = {
        name = "Memorial to Guthix",
        match = { "memorial to guthix" },
        requirements = {},
        howTo = "Open to all members, in the Piscatoris Hunter area north-west of Eagles' Peak. The Hall of Memories below it needs 70 Divination.",
        wiki = "https://runescape.wiki/w/Memorial_to_Guthix",
    },

    abyss = {
        name = "The Abyss",
        match = { "abyss" },
        requirements = {
            other = { "Enter the Abyss miniquest" },
        },
        howTo = "Complete the Enter the Abyss miniquest, then use the Mage of Zamorak's teleport in level 4-6 Wilderness.",
        wiki = "https://runescape.wiki/w/Abyss",
        danger = "Wilderness: other players can attack you on the way to the Mage of Zamorak. The Abyss drains Prayer and has aggressive monsters.",
    },

    senntisten = {
        name = "Senntisten (Elder God Wars Dungeon)",
        match = { "senntisten", "croesus front", "glacor front" },
        requirements = {},
        howTo = "Open to all members. Walk through the ancient door north of the Archaeology Guild. Sliske's Endgame and City of Senntisten are recommended, not required.",
        wiki = "https://runescape.wiki/w/Elder_God_Wars_Dungeon",
    },

    ghorrock = {
        name = "Ghorrock",
        match = { "ghorrock" },
        requirements = {
            other = { "Partial: The Temple at Senntisten (the stage that melts the ice block)" },
        },
        howTo = "Play part of The Temple at Senntisten to melt the ice block at the entrance. The main routes avoid the Wilderness, but some teleports land in it.",
        wiki = "https://runescape.wiki/w/Ghorrock",
    },

    penguin_area = {
        name = "Penguin area (Cold War)",
        match = { "penguin area" },
        requirements = {
            other = {
                "Partial: Cold War",
                "Wear a clockwork suit",
            },
        },
        howTo = "Play part of the quest Cold War, then wear the clockwork suit to use the Penguin Agility Course.",
        wiki = "https://runescape.wiki/w/Penguin_Agility_Course",
    },
}
