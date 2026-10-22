--[[
    Dungeoneering training guide (data only, no code).

    Source: RuneScape Wiki, "Pay-to-play Dungeoneering training"
    https://runescape.wiki/w/Pay-to-play_Dungeoneering_training
    Licensed CC BY-NC-SA 3.0. Copied 2026-10-22. The wiki flags this
    page as possibly out of date after Dungeoneering Remastered, and it
    gives no XP/hr for normal floors, so those are left out.
]]

return {
    skill = "Dungeoneering",
    maxLevel = 120,
    wiki = "https://runescape.wiki/w/Pay-to-play_Dungeoneering_training",
    source = "Data: RuneScape Wiki, Pay-to-play Dungeoneering training (CC BY-NC-SA 3.0)",

    bands = {
        {
            from = 1, to = 20,
            methods = {
                {
                    id = "dungeoneering_resource_dungeons",
                    name = "Resource dungeons (one time each)",
                    intensity = "medium",
                    notes = "Each unique one gives 1 to 5 levels at this range. 282,600 XP in total for members.",
                    wiki = "https://runescape.wiki/w/Resource_dungeon",
                },
                {
                    id = "dungeoneering_you_are_it",
                    name = "You Are It (quest trinkets)",
                    intensity = "high",
                    notes = "Up to 5 necklace trinkets, 10,000 XP each.",
                    wiki = "https://runescape.wiki/w/You_Are_It",
                },
                {
                    id = "dungeoneering_solo_small",
                    name = "Solo small floors",
                    intensity = "high",
                    location = "Daemonheim",
                    notes = "Small size, high complexity.",
                    wiki = "https://runescape.wiki/w/Dungeoneering_floors",
                    items = {
                        { label = "Ring of kinship", names = { "Ring of kinship" } },
                    },
                },
            },
        },
        {
            from = 20, to = 59,
            methods = {
                {
                    id = "dungeoneering_floors_low",
                    name = "Floors (small/medium, large on Furnished)",
                    intensity = "high",
                    location = "Daemonheim",
                    notes = "Frozen and Abandoned 1 on small or medium, Furnished on large. Large floors are best in a party of 5.",
                    wiki = "https://runescape.wiki/w/Dungeoneering_floors",
                    items = {
                        { label = "Ring of kinship", names = { "Ring of kinship" } },
                    },
                },
                {
                    id = "dungeoneering_resource_dungeons_mid",
                    name = "Resource dungeons (one time each)",
                    intensity = "medium",
                    notes = "282,600 XP in total for members.",
                    wiki = "https://runescape.wiki/w/Resource_dungeon",
                },
                {
                    id = "dungeoneering_sinkholes",
                    name = "Sinkholes",
                    intensity = "high",
                    notes = "5-player raid, twice a day. Gives XP lamps and tokens. Public groups are rare.",
                    wiki = "https://runescape.wiki/w/Sinkholes",
                },
            },
        },
        {
            from = 59, to = 80,
            methods = {
                {
                    id = "dungeoneering_rush_frozen",
                    name = "Rushing Frozen floors",
                    intensity = "high",
                    location = "Daemonheim",
                    notes = "Small size, low complexity. The wiki says this is no longer best after the rework.",
                    wiki = "https://runescape.wiki/w/Dungeoneering_floors",
                    items = {
                        { label = "Ring of kinship", names = { "Ring of kinship" } },
                    },
                },
                {
                    id = "dungeoneering_large_floors",
                    name = "Large floors",
                    intensity = "high",
                    location = "Daemonheim",
                    notes = "Party of 5 at max difficulty. Use the floor XP buffs.",
                    wiki = "https://runescape.wiki/w/Large_floors",
                    items = {
                        { label = "Ring of kinship", names = { "Ring of kinship" } },
                    },
                },
                {
                    id = "dungeoneering_sinkholes_mid",
                    name = "Sinkholes",
                    intensity = "high",
                    notes = "5-player raid, twice a day. Gives XP lamps and tokens.",
                    wiki = "https://runescape.wiki/w/Sinkholes",
                },
            },
        },
        {
            from = 80, to = 95,
            methods = {
                {
                    id = "dungeoneering_elite_dungeons",
                    name = "Elite Dungeons",
                    intensity = "high",
                    xpPerHour = 130000,
                    notes = "Team of three killing early mobs and mini-bosses. Also gives elite skilling outfit fragments.",
                    wiki = "https://runescape.wiki/w/Elite_Dungeons",
                    requirements = {
                        other = { "80+ combat stats" },
                    },
                },
                {
                    id = "dungeoneering_large_floors_high",
                    name = "Large floors",
                    intensity = "high",
                    location = "Daemonheim",
                    notes = "Party of 5 at max difficulty. Occult uses large at 71 to 94.",
                    wiki = "https://runescape.wiki/w/Large_floors",
                    items = {
                        { label = "Ring of kinship", names = { "Ring of kinship" } },
                    },
                },
                {
                    id = "dungeoneering_daemonheim_dig_mid",
                    name = "Daemonheim Dig Site token boxes",
                    intensity = "low",
                    location = "Daemonheim Dig Site",
                    notes = "Dragonkin V gives 2 large token boxes. Tokens buy XP 1:1 at the Rewards shop.",
                    crossovers = "Trains Archaeology",
                    wiki = "https://runescape.wiki/w/Daemonheim_Dig_Site",
                    requirements = {
                        levels = { { skill = "Archaeology", level = 77 } },
                    },
                    items = {
                        { label = "Mattock", contains = { "mattock" }, toolBelt = true },
                    },
                },
            },
        },
        {
            from = 95, to = 121,
            methods = {
                {
                    id = "dungeoneering_daily_challenges",
                    name = "Daily challenges",
                    intensity = "medium",
                    notes = "One to two hundred thousand XP per day if most skills are maxed. Wiki calls it the most efficient method.",
                    wiki = "https://runescape.wiki/w/Daily_challenge",
                },
                {
                    id = "dungeoneering_elite_dungeons_high",
                    name = "Elite Dungeons",
                    intensity = "high",
                    xpPerHour = 130000,
                    notes = "Team of three killing early mobs and mini-bosses.",
                    wiki = "https://runescape.wiki/w/Elite_Dungeons",
                    requirements = {
                        other = { "80+ combat stats" },
                    },
                },
                {
                    id = "dungeoneering_daemonheim_dig",
                    name = "Daemonheim Dig Site",
                    intensity = "low",
                    xpPerHour = 100000,
                    location = "Daemonheim Dig Site",
                    notes = "Over 100k XP/hr at 120 Dungeoneering and 99 Archaeology with all boosts. No combat.",
                    crossovers = "Trains Archaeology",
                    wiki = "https://runescape.wiki/w/Daemonheim_Dig_Site",
                    requirements = {
                        levels = { { skill = "Archaeology", level = 77 } },
                    },
                    items = {
                        { label = "Mattock", contains = { "mattock" }, toolBelt = true },
                    },
                },
                {
                    id = "dungeoneering_rush_abandoned2",
                    name = "Rushing Abandoned 2 floors",
                    intensity = "high",
                    location = "Daemonheim",
                    notes = "Most floors can be rushed at 95+. Occult and Warped on large.",
                    wiki = "https://runescape.wiki/w/Dungeoneering_floors",
                    items = {
                        { label = "Ring of kinship", names = { "Ring of kinship" } },
                    },
                },
            },
        },
    },

    boosts = {
        "Gorajan trailblazer outfit: +5% floor XP (warped set +7%)",
        "Floor XP buffs: +10%, or +5% on large floors",
        "Inspire Love relic (116 Archaeology): +2% Dungeoneering XP",
        "Clan avatar, Wise perk and pulse cores also apply",
    },
}
