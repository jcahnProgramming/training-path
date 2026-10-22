--[[
    Thieving training guide (data only, no code).
    Source: RuneScape Wiki, "Pay-to-play Thieving training"
    https://runescape.wiki/w/Pay-to-play_Thieving_training
    Licensed CC BY-NC-SA 3.0. Numbers copied from the wiki on 2026-10-22;
    values the wiki doesn't state are left out. Pickpocketing rates are base
    XP/hr assuming 2,000 successful pickpockets an hour.
    Format: docs/guide-format.md
]]

return {
    skill = "Thieving",
    maxLevel = 120,
    wiki = "https://runescape.wiki/w/Pay-to-play_Thieving_training",
    source = "Data: RuneScape Wiki, Pay-to-play Thieving training (CC BY-NC-SA 3.0)",

    bands = {
        {
            from = 1, to = 15,
            methods = {
                {
                    id = "thieving_pp_farmer",
                    name = "Pickpocket farmers",
                    intensity = "high",
                    xpPerHour = 29000,
                    notes = "From level 10. Before that, men and women give 16k XP/hr.",
                    wiki = "https://runescape.wiki/w/Farmer",
                },
                {
                    id = "thieving_pp_man",
                    name = "Pickpocket men and women",
                    intensity = "high",
                    xpPerHour = 16000,
                    location = "Lumbridge, Varrock and most towns",
                    wiki = "https://runescape.wiki/w/Man",
                },
            },
        },
        {
            from = 15, to = 38,
            methods = {
                {
                    id = "thieving_pp_cave_goblin",
                    name = "Pickpocket cave goblins",
                    intensity = "high",
                    xpPerHour = 80000,
                    location = "Dorgesh-Kaan",
                    notes = "From level 36.",
                    wiki = "https://runescape.wiki/w/Cave_goblin",
                    requirements = {
                        levels = { { skill = "Thieving", level = 36 } },
                    },
                },
                {
                    id = "thieving_pp_warrior_woman",
                    name = "Pickpocket warrior women",
                    intensity = "high",
                    xpPerHour = 52000,
                    notes = "From level 25.",
                    wiki = "https://runescape.wiki/w/Warrior_woman",
                    requirements = {
                        levels = { { skill = "Thieving", level = 25 } },
                    },
                },
                {
                    id = "thieving_pp_ham",
                    name = "Pickpocket H.A.M. members",
                    intensity = "high",
                    xpPerHour = 44400,
                    location = "H.A.M. Hideout",
                    wiki = "https://runescape.wiki/w/H.A.M._Member",
                },
            },
        },
        {
            from = 38, to = 55,
            methods = {
                {
                    id = "thieving_pp_trainee_archaeologist",
                    name = "Pickpocket trainee archaeologists",
                    intensity = "high",
                    xpPerHour = 150000,
                    notes = "From level 50. Desert bandits at 53 give 158.8k XP/hr.",
                    wiki = "https://runescape.wiki/w/Trainee_archaeologist",
                    requirements = {
                        levels = { { skill = "Thieving", level = 50 } },
                    },
                },
                {
                    id = "thieving_pp_fremennik",
                    name = "Pickpocket brigands or Fremennik citizens",
                    intensity = "high",
                    xpPerHour = 130000,
                    notes = "From level 45. Menaphite marketeers at 46 give 133.2k (partial The Jack of Spades).",
                    wiki = "https://runescape.wiki/w/Pickpocketing",
                    requirements = {
                        levels = { { skill = "Thieving", level = 45 } },
                    },
                },
                {
                    id = "thieving_pp_druid",
                    name = "Pickpocket druids",
                    intensity = "high",
                    xpPerHour = 116000,
                    notes = "From level 42. Master farmers (38) give 86k, guards (40) 93.6k.",
                    wiki = "https://runescape.wiki/w/Druid",
                    requirements = {
                        levels = { { skill = "Thieving", level = 42 } },
                    },
                },
            },
        },
        {
            from = 55, to = 62,
            methods = {
                {
                    id = "thieving_pp_knight_ardougne",
                    name = "Pickpocket Knights of Ardougne",
                    intensity = "high",
                    xpPerHour = 168600,
                    location = "Ardougne",
                    notes = "Medium Ardougne achievements boost success. Pollnivneach bandits give the same XP.",
                    wiki = "https://runescape.wiki/w/Knight_of_Ardougne",
                },
            },
        },
        {
            from = 62, to = 76,
            methods = {
                {
                    id = "thieving_safecracking_misthalin",
                    name = "Safecracking in Misthalin",
                    intensity = "high",
                    xpPerHour = 300000,
                    location = "Edgeville, Lumbridge, Draynor, Wizards' Tower, Al Kharid",
                    notes = "Up to 300k XP/hr, 400k with flashing safes. Pollnivneach and Al Kharid safes need 69.",
                    wiki = "https://runescape.wiki/w/Safecracking",
                    requirements = {
                        other = { "Thieves' Guild capers completed" },
                    },
                    items = {
                        { label = "Stethoscope", contains = { "stethoscope" } },
                        { label = "Small loot bag", names = { "Small loot bag" } },
                    },
                },
                {
                    id = "thieving_pp_paladin",
                    name = "Pickpocket paladins",
                    intensity = "high",
                    xpPerHour = 212400,
                    notes = "From level 70. Wizards' Tower mages (64) give 189k XP/hr.",
                    wiki = "https://runescape.wiki/w/Paladin",
                    requirements = {
                        levels = { { skill = "Thieving", level = 70 } },
                    },
                },
                {
                    id = "thieving_big_top_bonanza",
                    name = "Big Top Bonanza (weekly)",
                    intensity = "high",
                    location = "The Circus",
                    notes = "Once a week. Trick XP from 2,206 (level 50) to 3,525 (level 90).",
                    wiki = "https://runescape.wiki/w/Balthazar_Beauregard%27s_Big_Top_Bonanza",
                    requirements = {
                        levels = { { skill = "Thieving", level = 50 } },
                        quests = { "Some Like It Cold" },
                    },
                },
            },
        },
        {
            from = 76, to = 83,
            methods = {
                {
                    id = "thieving_safecracking_asgarnia",
                    name = "Safecracking in Asgarnia",
                    intensity = "high",
                    xpPerHour = 400000,
                    location = "Falador, Burthorpe, Port Sarim, Black Knights' Fortress",
                    notes = "Up to 400k XP/hr, 500k with flashing safes.",
                    wiki = "https://runescape.wiki/w/Safecracking",
                    requirements = {
                        other = { "Thieves' Guild capers completed" },
                    },
                    items = {
                        { label = "Stethoscope", contains = { "stethoscope" } },
                    },
                },
                {
                    id = "thieving_pp_hero",
                    name = "Pickpocket heroes",
                    intensity = "high",
                    xpPerHour = 382600,
                    notes = "From level 80. Archaeologists (78) give 336k XP/hr.",
                    wiki = "https://runescape.wiki/w/Hero",
                    requirements = {
                        levels = { { skill = "Thieving", level = 80 } },
                    },
                },
            },
        },
        {
            from = 83, to = 90,
            methods = {
                {
                    id = "thieving_safecracking_kandarin",
                    name = "Safecracking in Kandarin",
                    intensity = "high",
                    xpPerHour = 500000,
                    location = "Camelot Castle, Ardougne Market, Yanille",
                    notes = "Up to 500k XP/hr, 600k with flashing safes. Keep lower safes as backups.",
                    wiki = "https://runescape.wiki/w/Safecracking",
                    requirements = {
                        other = { "Thieves' Guild capers completed" },
                    },
                    items = {
                        { label = "Stethoscope", contains = { "stethoscope" } },
                    },
                },
                {
                    id = "thieving_pp_elf",
                    name = "Pickpocket elves",
                    intensity = "high",
                    xpPerHour = 494600,
                    location = "Prifddinas",
                    notes = "From level 85. Lock-outs mean real rates depend on your route.",
                    wiki = "https://runescape.wiki/w/Pickpocketing",
                    requirements = {
                        levels = { { skill = "Thieving", level = 85 } },
                    },
                },
            },
        },
        {
            from = 90, to = 95,
            methods = {
                {
                    id = "thieving_hidden_safes",
                    name = "Hidden safes",
                    intensity = "high",
                    xpPerHour = 950000,
                    location = "Zemouregal's fort, Rogues' Castle, Zanaris",
                    notes = "Zemouregal's fort needs The Curse of Arrav. Rogues' Castle is in the Wilderness.",
                    wiki = "https://runescape.wiki/w/Pay-to-play_Thieving_training",
                    requirements = {
                        quests = { "Lost City" },
                    },
                    items = {
                        { label = "Stethoscope", contains = { "stethoscope" } },
                    },
                },
                {
                    id = "thieving_pp_trader",
                    name = "Pickpocket traders",
                    intensity = "high",
                    xpPerHour = 779000,
                    wiki = "https://runescape.wiki/w/Pickpocketing",
                },
            },
        },
        {
            from = 95, to = 108,
            methods = {
                {
                    id = "thieving_heist_hereditas",
                    name = "Vault of Hereditas heists",
                    intensity = "high",
                    xpPerHour = 1200000,
                    location = "Kharid-et Dig Site, sealed wing",
                    notes = "1.2M to 1.35M XP/hr. Safes need 102 Thieving, crevices 72 Agility. Talk to Liara.",
                    wiki = "https://runescape.wiki/w/Pay-to-play_Thieving_training",
                    requirements = {
                        other = { "Breaking the Seal (Archaeology mystery)" },
                    },
                    items = {
                        { label = "Stethoscope", contains = { "stethoscope" } },
                    },
                },
                {
                    id = "thieving_pp_vyrewatch_tither",
                    name = "Pickpocket Vyrewatch tithers",
                    intensity = "high",
                    xpPerHour = 844000,
                    notes = "From level 100. Goebie scavengers (102) give 882k XP/hr.",
                    wiki = "https://runescape.wiki/w/Pickpocketing",
                    requirements = {
                        levels = { { skill = "Thieving", level = 100 } },
                    },
                },
            },
        },
        {
            from = 108, to = 121,
            methods = {
                {
                    id = "thieving_heist_asuran",
                    name = "Asuran Arsenal heists",
                    intensity = "high",
                    xpPerHour = 1600000,
                    location = "Swamp Fortress, south-east Anachronia",
                    notes = "1.6M to 2.26M XP/hr. Safes need 114. Dying resets progress. Talk to Liara.",
                    wiki = "https://runescape.wiki/w/Pay-to-play_Thieving_training",
                    items = {
                        { label = "Stethoscope", contains = { "stethoscope" } },
                    },
                },
                {
                    id = "thieving_pp_vyrelord_consumer",
                    name = "Pickpocket Vyrelord/Vyrelady consumers",
                    intensity = "high",
                    xpPerHour = 1155000,
                    notes = "From level 118. Archaeology professors (108) give 987k XP/hr.",
                    wiki = "https://runescape.wiki/w/Pickpocketing",
                    requirements = {
                        levels = { { skill = "Thieving", level = 118 } },
                    },
                },
            },
        },
    },

    boosts = {
        "Black ibis outfit: +5% XP for the full set",
        "Crystal Mask: +15% pickpocket success (+30% more with Light Form)",
        "Gloves of silence: +5% pickpocket success",
        "Ring of Vitur: +5% pickpocket success",
        "Magpie pouch: +3 invisible Thieving levels",
        "Abyssal lurker scroll: +4 temporary Thieving levels",
    },
}
