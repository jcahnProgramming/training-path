--[[
    Agility gear (data only, no code).
    Sources: RuneScape Wiki, "Agility training" (Useful equipment and method notes),
    "Weight-reducing clothing", "Agile armour", "Nimble outfit", "The Pit" and the item pages linked below.
    Licensed CC BY-NC-SA 3.0. Format: docs/gear-format.md
]]

local nimble = {
    slot = "Outfit",
    label = "Nimble outfit",
    contains = { "nimble " },
    tradeable = false,
    obtain = "The Pit: talk to a talent scout who appears while training on agility courses. Each Pit game has a 1/3 chance to give a piece.",
    notes = "+1% XP per piece, +6% for all five. Silverhawk boots count as the boots.",
    wiki = "https://runescape.wiki/w/Nimble_outfit",
}

local bootsOfLightness = {
    slot = "Feet",
    label = "Boots of lightness",
    names = { "Boots of lightness" },
    tradeable = false,
    obtain = "Free on the floor of the Temple of Ikov dungeon south of Seers' Village. Bring a light source and a knife.",
    notes = "Weight-reducing (-4.5 kg), so run energy lasts longer. Members only.",
    wiki = "https://runescape.wiki/w/Boots_of_lightness",
}

local penanceGloves = {
    slot = "Hands",
    label = "Penance gloves",
    names = { "Penance gloves", "Hardened penance gloves" },
    levels = { { skill = "Defence", level = 40 } },
    tradeable = false,
    obtain = "Barbarian Assault reward: 150 Honour Points of each role, or 60 thaler.",
    notes = "Best weight-reducing gloves (-7 kg).",
    wiki = "https://runescape.wiki/w/Penance_gloves",
}

local excalibur = {
    slot = "Off-hand",
    label = "Enhanced Excalibur",
    contains = { "enhanced excalibur" },
    tradeable = false,
    obtain = "Reward for the hard Seers' Village achievements, from the Lady of the Lake in Taverley.",
    notes = "Activate to heal 20-40% of your life points: a replacement for food on courses that hurt you.",
    wiki = "https://runescape.wiki/w/Enhanced_Excalibur",
}

local incense = {
    slot = "Other",
    label = "Toadflax incense sticks",
    names = { "Toadflax incense sticks" },
    levels = { { skill = "Firemaking", level = 30 } },
    tradeable = true,
    obtain = "Make with 30 Firemaking (impious willow incense sticks + clean toadflax), or buy on the Grand Exchange.",
    notes = "Up to a 50% chance to avoid failing obstacles. Needs 30 Firemaking to use.",
    wiki = "https://runescape.wiki/w/Toadflax_incense_sticks",
}

local silverhawk = {
    slot = "Feet",
    label = "Silverhawk boots",
    names = { "Silverhawk boots" },
    tradeable = false,
    obtain = "Stanley Limelight Traders for 750 thaler. Charge with silverhawk feathers or down.",
    notes = "Give Agility XP from other activities while charged. Not available to ironmen.",
    wiki = "https://runescape.wiki/w/Silverhawk_boots",
}

return {
    skill = "Agility",
    source = "Data: RuneScape Wiki, Agility training and Weight-reducing clothing (CC BY-NC-SA 3.0)",

    bands = {
        {
            from = 1, to = 25,
            items = {
                nimble,
                bootsOfLightness,
                {
                    slot = "Potion",
                    label = "Agility potion",
                    contains = { "agility potion" },
                    tradeable = true,
                    obtain = "Grand Exchange, or make with 34 Herblore (clean toadflax + toad's legs).",
                    notes = "+3 Agility. Useful for shortcuts; it can't open courses like Ape Atoll early.",
                    wiki = "https://runescape.wiki/w/Agility_potion",
                },
            },
        },
        {
            from = 25, to = 48,
            items = {
                nimble,
                {
                    slot = "Ring",
                    label = "Ring of charos",
                    contains = { "ring of charos" },
                    tradeable = false,
                    obtain = "Pickpocket Dr Fenkenstrain after the quest Creature of Fenkenstrain.",
                    notes = "Needed to get past the werewolf guard to Werewolf Skullball and the Werewolf course.",
                    wiki = "https://runescape.wiki/w/Ring_of_charos",
                },
                {
                    slot = "Other",
                    label = "Clockwork suit",
                    names = { "Clockwork suit" },
                    tradeable = false,
                    obtain = "Made during the quest Cold War (partial completion is enough).",
                    notes = "Needed for the Penguin Agility Course from level 30.",
                    wiki = "https://runescape.wiki/w/Clockwork_suit",
                },
                bootsOfLightness,
                penanceGloves,
                incense,
            },
        },
        {
            from = 48, to = 60,
            items = {
                nimble,
                {
                    slot = "Weapon",
                    label = "Ninja monkey greegree",
                    contains = { "ninja monkey greegree" },
                    tradeable = false,
                    obtain = "Give small ninja monkey bones (from monkey archers) and a monkey talisman to Zooknock on Ape Atoll. Needs partial Monkey Madness.",
                    notes = "Must be worn on the Ape Atoll Agility Course.",
                    wiki = "https://runescape.wiki/w/Ninja_monkey_greegree_(small)",
                },
                excalibur,
                incense,
                penanceGloves,
                bootsOfLightness,
            },
        },
        {
            from = 60, to = 77,
            items = {
                nimble,
                {
                    slot = "Ammo",
                    label = "Mithril grapple",
                    names = { "Mithril grapple", "Enhanced grappling hook" },
                    tradeable = true,
                    obtain = "Grand Exchange, or attach a mithril grapple tip to a mithril bolt, then add a rope.",
                    notes = "Needed for Bandos's Throne Room course. Grapples can break; the wiki recommends an enhanced grappling hook (tool belt).",
                    wiki = "https://runescape.wiki/w/Mithril_grapple",
                },
                excalibur,
                incense,
                silverhawk,
                penanceGloves,
            },
        },
        {
            from = 77, to = 90,
            items = {
                nimble,
                silverhawk,
                {
                    slot = "Other",
                    label = "Summer pie",
                    contains = { "summer pie" },
                    tradeable = true,
                    obtain = "Grand Exchange, or cook with 95 Cooking.",
                    notes = "+5 Agility and heals. 1-2 bites let 80 Agility players use the level 85 part of Anachronia.",
                    wiki = "https://runescape.wiki/w/Summer_pie",
                },
                {
                    slot = "Legs",
                    label = "Agile legs",
                    names = { "Agile legs" },
                    tradeable = false,
                    obtain = "250 perfect laps of the advanced Gnome Stronghold course (85 Agility, boosts allowed).",
                    notes = "Weight-reducing (-10 kg). Long grind; optional.",
                    wiki = "https://runescape.wiki/w/Agile_armour",
                },
                excalibur,
                incense,
            },
        },
        {
            from = 90, to = 100,
            items = {
                nimble,
                silverhawk,
                {
                    slot = "Body",
                    label = "Agile top",
                    names = { "Agile top" },
                    tradeable = false,
                    obtain = "250 perfect laps of the advanced Barbarian Outpost course (90 Agility, boosts allowed).",
                    notes = "Lightest item in the game (-12 kg). Long grind; optional.",
                    wiki = "https://runescape.wiki/w/Agile_top",
                },
                {
                    slot = "Legs",
                    label = "Agile legs",
                    names = { "Agile legs" },
                    tradeable = false,
                    obtain = "250 perfect laps of the advanced Gnome Stronghold course (85 Agility, boosts allowed).",
                    notes = "Weight-reducing (-10 kg).",
                    wiki = "https://runescape.wiki/w/Agile_armour",
                },
                excalibur,
                {
                    slot = "Cape",
                    label = "Agility cape",
                    contains = { "agility cape" },
                    levels = { { skill = "Agility", level = 99 } },
                    tradeable = false,
                    obtain = "Buy for 99,000 coins from Capn' Izzy No-Beard at the Brimhaven Agility Arena at level 99.",
                    notes = "Worn when talking to a talent scout, gives unlimited entries to The Pit.",
                    wiki = "https://runescape.wiki/w/Agility_cape",
                },
            },
        },
    },

    inventories = {
        agility_werewolf_skullball = {
            notes = "The ring gets you past the werewolf guarding the course.",
            wear = {
                { label = "Ring of charos", contains = { "ring of charos" } },
            },
        },
        agility_werewolf_course = {
            notes = "The ring gets you past the werewolf guarding the course.",
            wear = {
                { label = "Ring of charos", contains = { "ring of charos" } },
            },
        },
        agility_penguin_course = {
            notes = "Some obstacles can fail; bring a little food.",
            carry = {
                { label = "Clockwork suit", names = { "Clockwork suit" } },
            },
        },
        agility_barbarian_outpost = {
            notes = "Some obstacles can fail; bring food or use the Enhanced Excalibur heal.",
            wear = {
                { label = "Enhanced Excalibur (optional)", contains = { "enhanced excalibur" } },
            },
        },
        agility_ape_atoll = {
            notes = "The greegree must be worn to use the course.",
            wear = {
                { label = "Ninja monkey greegree", contains = { "ninja monkey greegree" } },
            },
        },
        agility_wilderness_course = {
            notes = "Fails are common; bring food or use the Enhanced Excalibur heal. Dangerous area.",
            wear = {
                { label = "Enhanced Excalibur (optional)", contains = { "enhanced excalibur" } },
            },
        },
        agility_bandos_throne_room = {
            notes = "Grapples can break, so carry spares unless you use the enhanced grappling hook.",
            carry = {
                { label = "Mithril grapple or enhanced grappling hook", names = { "Mithril grapple", "Enhanced grappling hook" } },
            },
        },
        agility_anachronia_full = {
            notes = "At 80-84 Agility, a bite of summer pie gets you through the level 85 section.",
            carry = {
                { label = "Summer pie", contains = { "summer pie" } },
            },
        },
    },
}
