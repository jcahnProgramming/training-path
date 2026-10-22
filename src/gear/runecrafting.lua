--[[
    Runecrafting gear (data only, no code).
    Sources: RuneScape Wiki, "Pay-to-play Runecrafting training" (Useful equipment, Abyss setup,
    Runic attuner preset), "Runecrafting pouches", "Master runecrafter robes" and the item pages linked below.
    Licensed CC BY-NC-SA 3.0. Format: docs/gear-format.md
]]

local smallPouch = {
    slot = "Other",
    label = "Small pouch",
    names = { "Small pouch" },
    tradeable = false,
    obtain = "Free from the Mage of Zamorak for the Enter the Abyss miniquest. Replace it free from the Dark Mage in the Abyss.",
    notes = "Holds 3 essence and never degrades.",
    wiki = "https://runescape.wiki/w/Small_pouch",
}

local mediumPouch = {
    slot = "Other",
    label = "Medium pouch",
    names = { "Medium pouch" },
    levels = { { skill = "Runecrafting", level = 25 } },
    tradeable = false,
    obtain = "Dropped by abyssal monsters, or free from Wizard Korvak in the Runecrafting Guild (50 Runecrafting to enter).",
    notes = "Holds 6 essence. Degrades; the Dark Mage in the Abyss repairs pouches for free.",
    wiki = "https://runescape.wiki/w/Medium_pouch",
}

local largePouch = {
    slot = "Other",
    label = "Large pouch",
    names = { "Large pouch" },
    levels = { { skill = "Runecrafting", level = 50 } },
    tradeable = false,
    obtain = "Dropped by abyssal monsters, or 25,000 coins from Wizard Korvak in the Runecrafting Guild.",
    notes = "Holds 9 essence.",
    wiki = "https://runescape.wiki/w/Large_pouch",
}

local giantPouch = {
    slot = "Other",
    label = "Giant pouch",
    names = { "Giant pouch" },
    levels = { { skill = "Runecrafting", level = 75 } },
    tradeable = false,
    obtain = "Dropped by abyssal leeches, walkers and guardians, or 50,000 coins from Wizard Korvak.",
    notes = "Holds 12 essence. Boosts don't work for the level.",
    wiki = "https://runescape.wiki/w/Giant_pouch",
}

local wildySword = {
    slot = "Weapon",
    label = "Wilderness sword",
    contains = { "wilderness sword" },
    levels = { { skill = "Attack", level = 40 } },
    tradeable = false,
    obtain = "Wilderness sword 1 is from Mr Ex in Edgeville for the easy Wilderness achievements.",
    notes = "Free Edgeville teleport and a better magical thread chance in the Abyss. 40 Attack only to wield it.",
    wiki = "https://runescape.wiki/w/Wilderness_sword_1",
}

local passingBracelet = {
    slot = "Hands",
    label = "Passing bracelet",
    names = { "Passing bracelet" },
    tradeable = true,
    obtain = "Grand Exchange, or cast Lvl-5 Enchant on a moonstone bracelet. Teleports need the Necromancy! quest.",
    notes = "Unlimited Haunt on the Hill teleports, right next to the Necromantic Rune Temple.",
    wiki = "https://runescape.wiki/w/Passing_bracelet",
}

local grimoire = {
    slot = "Pocket",
    label = "Underworld Grimoire",
    contains = { "underworld grimoire" },
    tradeable = false,
    obtain = "Reward for the Underworld achievements, from Icthlarin in the City of Um.",
    notes = "2.5% to 10% chance per impure essence for an extra necrotic rune.",
    wiki = "https://runescape.wiki/w/Underworld_Grimoire_1",
}

local urns = {
    slot = "Other",
    label = "Runecrafting urns",
    contains = { "runecrafting urn" },
    tradeable = true,
    obtain = "Make with Crafting (4 to 107), or buy the (no rune) urn on the Grand Exchange and add pure essence.",
    notes = "Carry in the backpack for +20% XP (+25% exquisite). Once essence is added the urn can't be traded.",
    wiki = "https://runescape.wiki/w/Urns",
}

local robes = {
    slot = "Outfit",
    label = "Master runecrafter robes",
    contains = { "master runecrafter" },
    levels = { { skill = "Runecrafting", level = 50 } },
    tradeable = false,
    obtain = "Runecrafting Guild: 15,000 guild tokens each from Wizard Elriss, or 4,000 Runespan points each from Wizard Rinsit.",
    notes = "+1% XP per piece, +5% for all four.",
    wiki = "https://runescape.wiki/w/Master_runecrafter_robes",
}

local ethereal = {
    slot = "Outfit",
    label = "Ethereal outfit (death, law, blood or infinity)",
    contains = { "ethereal head", "ethereal body", "ethereal legs", "ethereal hands", "ethereal feet" },
    levels = { { skill = "Runecrafting", level = 80 }, { skill = "Invention", level = 20 } },
    tradeable = false,
    obtain = "Combine rune ethereal fragments (3,600 per piece). Combine all three sets into the infinity ethereal outfit.",
    notes = "Stores essence in the body, slows pouch decay and keeps the master robes XP bonus.",
    wiki = "https://runescape.wiki/w/Infinity_ethereal_outfit",
}

local attuner = {
    slot = "Off-hand",
    label = "Runic attuner",
    names = { "Runic attuner" },
    levels = { { skill = "Runecrafting", level = 80 } },
    tradeable = true,
    obtain = "Reward from the Gate of Elidinis, or the Grand Exchange.",
    notes = "+50% XP at the attuned altar; every 50th attunement gives a huge bonus.",
    wiki = "https://runescape.wiki/w/Runic_attuner",
}

local imbuing = {
    slot = "Ring",
    label = "Ring of imbuing",
    names = { "Ring of imbuing" },
    tradeable = true,
    obtain = "Grand Exchange, or cast Lvl-5 Enchant on a moonstone ring.",
    notes = "+10% runes (not XP) at altars.",
    wiki = "https://runescape.wiki/w/Ring_of_imbuing",
}

local titan = {
    slot = "Familiar",
    label = "Abyssal titan pouch",
    names = { "Abyssal titan pouch" },
    levels = { { skill = "Summoning", level = 93 } },
    tradeable = true,
    obtain = "Grand Exchange, or make with 93 Summoning (green charm + abyssal charm).",
    notes = "Carries 20 essence. Lower levels: abyssal parasite (54, 7 essence) or lurker (62, 12).",
    wiki = "https://runescape.wiki/w/Abyssal_titan_pouch",
}

local rcCape = {
    slot = "Cape",
    label = "Runecrafting cape",
    contains = { "runecrafting cape" },
    levels = { { skill = "Runecrafting", level = 99 } },
    tradeable = false,
    obtain = "Buy for 99,000 coins from Larriar in the Runecrafting Guild at level 99.",
    notes = "Chance for extra runes.",
    wiki = "https://runescape.wiki/w/Runecrafting_cape",
}

local bindingRod = {
    slot = "Weapon",
    label = "Crystal binding rod",
    contains = { "crystal binding rod" },
    levels = { { skill = "Runecrafting", level = 81 } },
    tradeable = false,
    obtain = "Make with 82 Invention after discovering its blueprint.",
    notes = "+5% runes. Needs charge to work.",
    wiki = "https://runescape.wiki/w/Crystal_binding_rod",
}

local allPouches = {
    label = "Runecrafting pouches (all you own)",
    names = { "Small pouch", "Medium pouch", "Large pouch", "Giant pouch", "Massive pouch" },
}

return {
    skill = "Runecrafting",
    source = "Data: RuneScape Wiki, Pay-to-play Runecrafting training and Runecrafting pouches (CC BY-NC-SA 3.0)",

    bands = {
        {
            from = 1, to = 25,
            items = {
                smallPouch,
                {
                    slot = "Head",
                    label = "Wicked hood",
                    names = { "Wicked hood" },
                    tradeable = false,
                    obtain = "Free from Tam McGrubor in Burthorpe, or 175 Runespan points from Wizard Finix.",
                    notes = "Works as a tiara for every altar you feed it and teleports to the Runecrafting Guild.",
                    wiki = "https://runescape.wiki/w/Wicked_hood",
                },
                passingBracelet,
                urns,
                {
                    slot = "Ring",
                    label = "Explorer's ring 2 or higher",
                    contains = { "explorer's ring" },
                    tradeable = false,
                    obtain = "Reward for the easy Lumbridge achievements, from Bob in Lumbridge.",
                    notes = "10% chance for an extra air, water, earth or fire rune per essence.",
                    wiki = "https://runescape.wiki/w/Explorer%27s_ring_2",
                },
                wildySword,
            },
        },
        {
            from = 25, to = 50,
            items = {
                mediumPouch,
                smallPouch,
                passingBracelet,
                grimoire,
                wildySword,
                urns,
            },
        },
        {
            from = 50, to = 75,
            items = {
                robes,
                largePouch,
                mediumPouch,
                passingBracelet,
                grimoire,
                wildySword,
            },
        },
        {
            from = 75, to = 90,
            items = {
                giantPouch,
                robes,
                ethereal,
                attuner,
                bindingRod,
                imbuing,
            },
        },
        {
            from = 90, to = 105,
            items = {
                {
                    slot = "Other",
                    label = "Massive pouch",
                    names = { "Massive pouch" },
                    levels = { { skill = "Runecrafting", level = 90 } },
                    tradeable = false,
                    obtain = "1,000 Runespan points from Wizard Finix in front of the Runecrafting Guild.",
                    notes = "Holds 18 essence. Can't be repaired and crumbles after 756 essence.",
                    wiki = "https://runescape.wiki/w/Massive_pouch",
                },
                ethereal,
                attuner,
                titan,
                imbuing,
                rcCape,
            },
        },
        {
            from = 105, to = 111,
            items = {
                {
                    slot = "Other",
                    label = "Expansive pouch",
                    names = { "Expansive pouch" },
                    levels = { { skill = "Runecrafting", level = 105 }, { skill = "Divination", level = 95 } },
                    tradeable = false,
                    obtain = "Make from the small, medium, large, giant and massive pouches (105 Runecrafting, 95 Divination).",
                    notes = "Holds 70 essence and never degrades.",
                    wiki = "https://runescape.wiki/w/Expansive_pouch",
                },
                ethereal,
                attuner,
                titan,
                bindingRod,
                rcCape,
            },
        },
    },

    inventories = {
        runecrafting_necrotic_spirit = {
            notes = "Use Haunt on the Hill on the passing bracelet to reach the temple fast.",
            wear = { { label = "Passing bracelet", names = { "Passing bracelet" } } },
            carry = { allPouches, { label = "Impure essence", names = { "Impure essence" }, count = 20 } },
        },
        runecrafting_necrotic_bone = {
            notes = "Use Haunt on the Hill on the passing bracelet to reach the temple fast.",
            wear = { { label = "Passing bracelet", names = { "Passing bracelet" } } },
            carry = { allPouches, { label = "Impure essence", names = { "Impure essence" }, count = 20 } },
        },
        runecrafting_necrotic_flesh = {
            notes = "Use Haunt on the Hill on the passing bracelet to reach the temple fast.",
            wear = { { label = "Passing bracelet", names = { "Passing bracelet" } } },
            carry = { allPouches, { label = "Impure essence", names = { "Impure essence" }, count = 20 } },
        },
        runecrafting_necrotic_miasma = {
            notes = "Use Haunt on the Hill on the passing bracelet to reach the temple fast.",
            wear = { { label = "Passing bracelet", names = { "Passing bracelet" } } },
            carry = { allPouches, { label = "Impure essence", names = { "Impure essence" }, count = 20 } },
        },
        runecrafting_necrotic_high = {
            notes = "Use Haunt on the Hill on the passing bracelet to reach the temple fast.",
            wear = { { label = "Passing bracelet", names = { "Passing bracelet" } } },
            carry = { allPouches, { label = "Impure essence", names = { "Impure essence" }, count = 20 } },
        },
        runecrafting_necrotic_90 = {
            notes = "Use Haunt on the Hill on the passing bracelet to reach the temple fast.",
            wear = { { label = "Passing bracelet", names = { "Passing bracelet" } } },
            carry = { allPouches, { label = "Impure essence", names = { "Impure essence" }, count = 20 } },
        },
        runecrafting_abyss_low = {
            notes = "Make a bank preset with filled pouches. Explorer's ring 2 adds elemental runes.",
            wear = { { label = "Wilderness sword", contains = { "wilderness sword" } } },
            carry = { allPouches, { label = "Pure essence", names = { "Pure essence" }, count = 20 } },
        },
        runecrafting_abyss_cosmic = {
            notes = "Make a bank preset with filled pouches. Wilderness sword teleports you to Edgeville.",
            wear = { { label = "Wilderness sword", contains = { "wilderness sword" } } },
            carry = { allPouches, { label = "Pure essence", names = { "Pure essence" }, count = 20 } },
        },
        runecrafting_abyss_astral_nature_law = {
            notes = "Make a bank preset with filled pouches. Wilderness sword teleports you to Edgeville.",
            wear = { { label = "Wilderness sword", contains = { "wilderness sword" } } },
            carry = { allPouches, { label = "Pure essence", names = { "Pure essence" }, count = 20 } },
        },
        runecrafting_abyss_death = {
            notes = "Make a bank preset with filled pouches. Wilderness sword teleports you to Edgeville.",
            wear = { { label = "Wilderness sword", contains = { "wilderness sword" } } },
            carry = { allPouches, { label = "Pure essence", names = { "Pure essence" }, count = 20 } },
        },
        runecrafting_abyss_blood = {
            notes = "Make a bank preset with filled pouches. Wilderness sword teleports you to Edgeville.",
            wear = { { label = "Wilderness sword", contains = { "wilderness sword" } } },
            carry = { allPouches, { label = "Pure essence", names = { "Pure essence" }, count = 20 } },
        },
        runecrafting_abyss_soul = {
            notes = "Make a bank preset with filled pouches. Wilderness sword teleports you to Edgeville.",
            wear = { { label = "Wilderness sword", contains = { "wilderness sword" } } },
            carry = { allPouches, { label = "Pure essence", names = { "Pure essence" }, count = 20 } },
        },
        runecrafting_abyss_time = {
            notes = "Make a bank preset with filled pouches. Wilderness sword teleports you to Edgeville.",
            wear = { { label = "Wilderness sword", contains = { "wilderness sword" } } },
            carry = { allPouches, { label = "Pure essence", names = { "Pure essence" }, count = 20 } },
        },
        runecrafting_abyss_expansive = {
            notes = "An abyssal titan and an ethereal outfit carry even more essence.",
            wear = { { label = "Wilderness sword", contains = { "wilderness sword" } } },
            carry = {
                { label = "Expansive pouch", names = { "Expansive pouch" } },
                { label = "Pure essence", names = { "Pure essence" }, count = 20 },
            },
        },
        runecrafting_soul_altar = {
            notes = "Charge the altar with 400 pure essence (4 per charge), then craft. Fairy ring CKQ is closest.",
            carry = { { label = "Pure essence", names = { "Pure essence" }, count = 20 } },
        },
        runecrafting_soul_altar_100 = {
            notes = "Charge the altar with 400 pure essence (4 per charge), then craft. Fairy ring CKQ is closest.",
            carry = { { label = "Pure essence", names = { "Pure essence" }, count = 20 } },
        },
        runecrafting_soul_altar_105 = {
            notes = "Charge the altar with 400 pure essence (4 per charge), then craft. Fairy ring CKQ is closest.",
            carry = { { label = "Pure essence", names = { "Pure essence" }, count = 20 } },
        },
        runecrafting_runic_attuner = {
            notes = "Wiki preset. Finish every 50th attunement on a fully charged soul altar.",
            wear = {
                { label = "Runic attuner", names = { "Runic attuner" } },
                { label = "Infinity ethereal outfit (or master runecrafter robes)", contains = { "ethereal head", "ethereal body", "ethereal legs", "ethereal hands", "ethereal feet", "master runecrafter" } },
                { label = "Ring of imbuing", names = { "Ring of imbuing" } },
            },
            carry = {
                { label = "Expansive pouch (or all other pouches)", names = { "Expansive pouch", "Massive pouch", "Giant pouch" } },
                { label = "Wilderness sword", contains = { "wilderness sword" } },
                { label = "Pure essence", names = { "Pure essence" }, count = 20 },
            },
        },
    },
}
