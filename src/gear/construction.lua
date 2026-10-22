--[[
    Construction gear (data only, no code).
    Sources: RuneScape Wiki, "Construction training" (Useful equipment), "Construction Contracts"
    (Equipment presets), "Constructor's outfit", "Master constructor's outfit" and the item pages linked below.
    Licensed CC BY-NC-SA 3.0. Format: docs/gear-format.md
]]

local hammer = {
    slot = "Tool",
    label = "Hammer",
    names = { "Hammer" },
    toolBelt = true,
    tradeable = true,
    obtain = "General stores (13 coins), or the crate in the Lumbridge furnace.",
    notes = "Needed for almost all building.",
    wiki = "https://runescape.wiki/w/Hammer",
}

local saw = {
    slot = "Tool",
    label = "Saw",
    names = { "Saw", "Crystal saw" },
    toolBelt = true,
    tradeable = true,
    obtain = "13 coins from the Rimmington plank maker or Bill at Fort Forinthry's Construction Supplies.",
    notes = "Needed for most furniture.",
    wiki = "https://runescape.wiki/w/Saw",
}

local constructorOutfit = {
    slot = "Outfit",
    label = "Constructor's outfit",
    names = { "Constructor's hat", "Constructor's garb", "Constructor's trousers", "Constructor's gloves", "Constructor's boots" },
    tradeable = false,
    obtain = "Temple Trekking minigame (needs In Aid of the Myreque; The Darkness of Hallowvale for the garb).",
    notes = "+1% XP per piece, +6% for all five.",
    wiki = "https://runescape.wiki/w/Constructor%27s_outfit",
}

local masterOutfit = {
    slot = "Outfit",
    label = "Master constructor's outfit",
    contains = { "master constructor's" },
    levels = { { skill = "Construction", level = 40 } },
    tradeable = false,
    obtain = "Construction Contracts: 250 contract credits per piece (1,250 total) from the Estate Agents Shop.",
    notes = "Faster contracts, teleports to the contract and house, logs-to-planks. Keeps the constructor's outfit XP bonus if you own it.",
    wiki = "https://runescape.wiki/w/Master_constructor%27s_outfit",
}

local plankBox = {
    slot = "Other",
    label = "Plank box",
    names = { "Plank box" },
    levels = { { skill = "Construction", level = 40 } },
    tradeable = false,
    obtain = "50 contract credits from the Estate Agents Shop; upgrades cost 150 and 300 credits.",
    notes = "Holds 25, 50 or 100 of each plank type and builds straight from it.",
    wiki = "https://runescape.wiki/w/Plank_box",
}

local workbench = {
    slot = "Other",
    label = "Portable workbench",
    names = { "Portable workbench" },
    tradeable = true,
    obtain = "Grand Exchange, or from a portable skilling pack. Often already set up on world 84.",
    notes = "+10% XP and a 7.5% chance to save a plank. Place it next to a bank.",
    wiki = "https://runescape.wiki/w/Portable_workbench",
}

local nails = {
    slot = "Other",
    label = "Mithril or steel nails",
    contains = { " nails" },
    tradeable = true,
    obtain = "Grand Exchange, or smith from bars (mithril nails need 30 Smithing).",
    notes = "Any tier works; bronze nails bend more often.",
    wiki = "https://runescape.wiki/w/Mithril_nails",
}

local chisel = {
    slot = "Two-handed",
    label = "Sculpting chisel",
    contains = { "sculpting chisel" },
    tradeable = false,
    obtain = "From Copernicus Glyph after building statues in the God Statues D&D for four monthly resets.",
    notes = "+1% XP and +1 hidden Construction level. Can't go on the tool belt.",
    wiki = "https://runescape.wiki/w/Sculpting_chisel",
}

local brooch = {
    slot = "Pocket",
    label = "Brooch of the Gods",
    names = { "Brooch of the Gods" },
    tradeable = true,
    obtain = "Grand Exchange, or cast Lvl-6 Enchant on an alchemical hydrix brooch. Untradeable once worn.",
    notes = "Doubles the portable workbench plank-saving chance (7.5% to 15%).",
    wiki = "https://runescape.wiki/w/Brooch_of_the_Gods",
}

local contractCarry = {
    { label = "Construction contract", names = { "Construction contract" } },
    { label = "Plank box", names = { "Plank box" } },
    { label = "Nails", contains = { " nails" } },
    { label = "Bolts of cloth", names = { "Bolt of cloth" } },
    { label = "White candles", names = { "White candle" } },
    { label = "Hammer", names = { "Hammer" }, toolBelt = true },
    { label = "Saw", names = { "Saw", "Crystal saw" }, toolBelt = true },
}

return {
    skill = "Construction",
    source = "Data: RuneScape Wiki, Construction training and Construction Contracts (CC BY-NC-SA 3.0)",

    bands = {
        {
            from = 1, to = 40,
            items = {
                hammer,
                saw,
                constructorOutfit,
                workbench,
                nails,
            },
        },
        {
            from = 40, to = 75,
            items = {
                plankBox,
                masterOutfit,
                constructorOutfit,
                workbench,
                {
                    slot = "Tool",
                    label = "Crystal saw",
                    names = { "Crystal saw" },
                    tradeable = false,
                    obtain = "Small crystal seed from The Eyes of Glouphrie, sung into a saw at Brimstail's cave.",
                    notes = "+3 hidden levels for items that need a saw. Reverts to a seed after 28 builds.",
                    wiki = "https://runescape.wiki/w/Crystal_saw",
                },
                hammer,
            },
        },
        {
            from = 75, to = 99,
            items = {
                masterOutfit,
                constructorOutfit,
                plankBox,
                chisel,
                brooch,
                workbench,
            },
        },
        {
            from = 99, to = 121,
            items = {
                {
                    slot = "Cape",
                    label = "Construction cape",
                    contains = { "construction cape" },
                    levels = { { skill = "Construction", level = 99 } },
                    tradeable = false,
                    obtain = "Buy for 99,000 coins from any estate agent at level 99.",
                    notes = "5% chance to save planks in your house, on contracts and at portable workbenches.",
                    wiki = "https://runescape.wiki/w/Construction_cape",
                },
                masterOutfit,
                constructorOutfit,
                plankBox,
                chisel,
                brooch,
            },
        },
    },

    inventories = {
        construction_wooden_furniture = {
            notes = "Build at a portable workbench next to a bank for +10% XP.",
            carry = {
                { label = "Hammer", names = { "Hammer" }, toolBelt = true },
                { label = "Saw", names = { "Saw", "Crystal saw" }, toolBelt = true },
                { label = "Planks", names = { "Plank" } },
                { label = "Nails", contains = { " nails" } },
            },
        },
        construction_oak_larder = {
            notes = "Build at a portable workbench next to a bank for +10% XP.",
            carry = {
                { label = "Hammer", names = { "Hammer" }, toolBelt = true },
                { label = "Saw", names = { "Saw", "Crystal saw" }, toolBelt = true },
                { label = "Oak planks", names = { "Oak plank" }, count = 8 },
            },
        },
        construction_teak_long_table = {
            notes = "Build at a portable workbench next to a bank for +10% XP.",
            carry = {
                { label = "Hammer", names = { "Hammer" }, toolBelt = true },
                { label = "Saw", names = { "Saw", "Crystal saw" }, toolBelt = true },
                { label = "Teak planks", names = { "Teak plank" }, count = 8 },
            },
        },
        construction_mahogany_long_table = {
            notes = "Build at a portable workbench next to a bank for +10% XP.",
            carry = {
                { label = "Hammer", names = { "Hammer" }, toolBelt = true },
                { label = "Saw", names = { "Saw", "Crystal saw" }, toolBelt = true },
                { label = "Mahogany planks", names = { "Mahogany plank" }, count = 8 },
            },
        },
        construction_teak_long_table_budget = {
            notes = "Build at a portable workbench next to a bank for +10% XP.",
            carry = {
                { label = "Hammer", names = { "Hammer" }, toolBelt = true },
                { label = "Saw", names = { "Saw", "Crystal saw" }, toolBelt = true },
                { label = "Teak planks", names = { "Teak plank" }, count = 8 },
            },
        },
        construction_mahogany_long_table_budget = {
            notes = "Build at a portable workbench next to a bank for +10% XP.",
            carry = {
                { label = "Hammer", names = { "Hammer" }, toolBelt = true },
                { label = "Saw", names = { "Saw", "Crystal saw" }, toolBelt = true },
                { label = "Mahogany planks", names = { "Mahogany plank" }, count = 8 },
            },
        },
        construction_eternal_round_table = {
            notes = "Build at a portable workbench next to a bank for +10% XP.",
            carry = {
                { label = "Hammer", names = { "Hammer" }, toolBelt = true },
                { label = "Saw", names = { "Saw", "Crystal saw" }, toolBelt = true },
                { label = "Eternal planks", names = { "Eternal plank" }, count = 6 },
            },
        },
        construction_eternal_long_table = {
            notes = "Build at a portable workbench next to a bank for +10% XP.",
            carry = {
                { label = "Hammer", names = { "Hammer" }, toolBelt = true },
                { label = "Saw", names = { "Saw", "Crystal saw" }, toolBelt = true },
                { label = "Eternal planks", names = { "Eternal plank" }, count = 8 },
            },
        },
        construction_contracts_low = {
            notes = "Wiki preset: fill the plank box, carry teleports, and a beast of burden can hold extra planks and bars.",
            wear = { { label = "Constructor's or master constructor's outfit", contains = { "constructor's" } } },
            carry = contractCarry,
        },
        construction_contracts_teak = {
            notes = "Wiki preset: fill the plank box, carry teleports, and a beast of burden can hold extra planks and bars.",
            wear = { { label = "Constructor's or master constructor's outfit", contains = { "constructor's" } } },
            carry = contractCarry,
        },
        construction_contracts_mahogany = {
            notes = "Wiki preset: about 16 mahogany planks in the backpack plus a filled plank box.",
            wear = { { label = "Constructor's or master constructor's outfit", contains = { "constructor's" } } },
            carry = contractCarry,
        },
        construction_contracts_mahogany_80 = {
            notes = "Wiki preset: about 16 mahogany planks in the backpack plus a filled plank box.",
            wear = { { label = "Constructor's or master constructor's outfit", contains = { "constructor's" } } },
            carry = contractCarry,
        },
        construction_contracts_eternal = {
            notes = "Wiki preset: master constructor's outfit, eternal planks in the plank box, extra cloth and candles.",
            wear = { { label = "Master constructor's outfit", contains = { "master constructor's" } } },
            carry = contractCarry,
        },
        construction_contracts_eternal_106 = {
            notes = "Wiki preset: master constructor's outfit, eternal planks in the plank box, extra cloth and candles.",
            wear = { { label = "Master constructor's outfit", contains = { "master constructor's" } } },
            carry = contractCarry,
        },
        construction_contracts_eternal_110 = {
            notes = "Wiki preset: master constructor's outfit, eternal planks in the plank box, extra cloth and candles.",
            wear = { { label = "Master constructor's outfit", contains = { "master constructor's" } } },
            carry = contractCarry,
        },
    },
}
