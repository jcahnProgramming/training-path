--[[
    Farming gear (data only, no code).
    Sources: RuneScape Wiki, "Pay-to-play Farming training" (Useful equipment), "Tool belt", "Urns",
    "Farmer's outfit", "Master farmer outfit", "Seedicide" and the item pages linked below.
    Licensed CC BY-NC-SA 3.0. Format: docs/gear-format.md
]]

local spade = {
    slot = "Tool",
    label = "Spade",
    names = { "Spade" },
    toolBelt = true,
    tradeable = true,
    obtain = "Farming shops, or the Grand Exchange. Store it on the tool belt.",
    notes = "Harvests crops and clears dead or finished patches.",
    wiki = "https://runescape.wiki/w/Spade",
}

local rake = {
    slot = "Tool",
    label = "Rake",
    names = { "Rake" },
    toolBelt = true,
    tradeable = true,
    obtain = "One is added to the tool belt automatically. Also sold in farming shops.",
    notes = "Clears weeds from patches.",
    wiki = "https://runescape.wiki/w/Rake",
}

local dibber = {
    slot = "Tool",
    label = "Seed dibber",
    names = { "Seed dibber" },
    toolBelt = true,
    tradeable = true,
    obtain = "On the tool belt automatically. Also sold in any farming shop.",
    notes = "Needed to plant seeds in patches.",
    wiki = "https://runescape.wiki/w/Seed_dibber",
}

local trowel = {
    slot = "Tool",
    label = "Gardening trowel",
    names = { "Gardening trowel" },
    toolBelt = true,
    tradeable = true,
    obtain = "Farming shops, or the Grand Exchange. Store it on the tool belt.",
    notes = "Fills plant pots and plants tree seeds in them to grow saplings.",
    wiki = "https://runescape.wiki/w/Gardening_trowel",
}

local secateurs = {
    slot = "Tool",
    label = "Secateurs",
    names = { "Secateurs" },
    toolBelt = true,
    tradeable = true,
    obtain = "Farming shops, or the Grand Exchange. Store it on the tool belt.",
    notes = "Prunes diseased trees and bushes.",
    wiki = "https://runescape.wiki/w/Secateurs",
}

local magicSecateurs = {
    slot = "Weapon",
    label = "Magic secateurs",
    names = { "Magic secateurs" },
    toolBelt = true,
    tradeable = false,
    obtain = "Reward from the quest A Fairy Tale I - Growing Pains.",
    notes = "10% chance to save a harvest life on allotments, hops and herbs. Replaces secateurs on the tool belt.",
    wiki = "https://runescape.wiki/w/Magic_secateurs",
}

local wateringCan = {
    slot = "Tool",
    label = "Watering can",
    contains = { "watering can" },
    tradeable = true,
    obtain = "Farming shops, or the Grand Exchange. Fill it at any water source.",
    notes = "Waters allotments and flowers to lower disease. Only the magic watering can fits on the tool belt.",
    wiki = "https://runescape.wiki/w/Watering_can",
}

local magicCan = {
    slot = "Tool",
    label = "Magic watering can",
    names = { "Magic watering can" },
    toolBelt = true,
    tradeable = false,
    obtain = "Reward from the quest A Fairy Tale III - Battle at Ork's Rift.",
    notes = "Never needs refilling.",
    wiki = "https://runescape.wiki/w/Magic_watering_can",
}

local farmer = {
    slot = "Outfit",
    label = "Farmer's outfit",
    contains = { "farmer's hat", "farmer's jacket", "farmer's legwear", "farmer's cuffs", "farmer's boots" },
    tradeable = false,
    obtain = "Cabbage Facepunch Bonanza: 800 renown a piece or 4,000 for the set. Also Sydekix's Shop of Balance.",
    notes = "+1% XP per piece, +6% for the full set.",
    wiki = "https://runescape.wiki/w/Farmer%27s_outfit",
}

local masterFarmer = {
    slot = "Outfit",
    label = "Master farmer outfit",
    contains = { "master farmer" },
    levels = { { skill = "Farming", level = 80 }, { skill = "Invention", level = 20 } },
    tradeable = false,
    obtain = "Blueprints from Granny Potterington at the Farmers' Market (1,000 beans), then 54,000 master farmer fragments from the player-owned farm.",
    notes = "Long-term goal. Extra herbs and crops, auto-cleaned herbs, auto-watering and two Rapid Growth casts.",
    wiki = "https://runescape.wiki/w/Master_farmer_outfit",
}

local supercompost = {
    slot = "Other",
    label = "Supercompost",
    names = { "Supercompost" },
    tradeable = true,
    obtain = "Grand Exchange, or fill a compost bin with supercompostable items.",
    notes = "+2 harvest lives on allotments, herbs and hops, and less disease. Store up to 2,000 with the tool leprechaun.",
    wiki = "https://runescape.wiki/w/Supercompost",
}

local ultracompost = {
    slot = "Other",
    label = "Ultracompost",
    names = { "Ultracompost" },
    tradeable = true,
    obtain = "Grand Exchange, or fill a compost bin with dragon manure or Infernus pyroclasts.",
    notes = "The best compost.",
    wiki = "https://runescape.wiki/w/Ultracompost",
}

local seedicide = {
    slot = "Pocket",
    label = "Seedicide",
    names = { "Seedicide" },
    toolBelt = true,
    tradeable = false,
    obtain = "Cabbage Facepunch Bonanza for 2,200 renown, the Farmers' Market for 10,000 beans, or Stanley Limelight for 360 thaler.",
    notes = "Destroys seed drops for double planting XP. Tool belt slot costs 500 Slayer points.",
    wiki = "https://runescape.wiki/w/Seedicide",
}

local crackedUrn = {
    slot = "Other",
    label = "Cracked farming urn",
    contains = { "cracked farming urn" },
    tradeable = false,
    obtain = "Make with 5 Crafting and a nature rune, or buy the (no rune) urn on the GE and add a nature rune.",
    notes = "+20% XP from patches up to level 12.",
    wiki = "https://runescape.wiki/w/Urns#Farming",
}

local fragileUrn = {
    slot = "Other",
    label = "Fragile farming urn",
    contains = { "fragile farming urn" },
    tradeable = false,
    obtain = "Make with 18 Crafting, or buy the (no rune) urn on the GE and add a nature rune.",
    notes = "+20% XP from patches up to level 30.",
    wiki = "https://runescape.wiki/w/Urns#Farming",
}

local plainUrn = {
    slot = "Other",
    label = "Plain farming urn",
    contains = { "plain farming urn" },
    tradeable = false,
    obtain = "Make with 40 Crafting, or buy the (no rune) urn on the GE and add a nature rune.",
    notes = "+20% XP from patches up to level 53.",
    wiki = "https://runescape.wiki/w/Urns#Farming",
}

local strongUrn = {
    slot = "Other",
    label = "Strong farming urn",
    contains = { "strong farming urn" },
    tradeable = false,
    obtain = "Make with 58 Crafting, or buy the (no rune) urn on the GE and add a nature rune.",
    notes = "+20% XP from patches up to level 72.",
    wiki = "https://runescape.wiki/w/Urns#Farming",
}

local decoratedUrn = {
    slot = "Other",
    label = "Decorated farming urn",
    contains = { "decorated farming urn" },
    tradeable = false,
    obtain = "Make with 84 Crafting, or buy the (no rune) urn on the GE and add a nature rune.",
    notes = "+20% XP from any patch.",
    wiki = "https://runescape.wiki/w/Urns#Farming",
}

local exquisiteUrn = {
    slot = "Other",
    label = "Exquisite farming urn",
    contains = { "exquisite farming urn" },
    tradeable = false,
    obtain = "Make with 110 Crafting (needs an emerald), or buy the (no rune) urn on the GE and add a nature rune.",
    notes = "Top-tier urn, works on any patch.",
    wiki = "https://runescape.wiki/w/Urns#Farming",
}

local cape = {
    slot = "Cape",
    label = "Farming cape",
    contains = { "farming cape" },
    levels = { { skill = "Farming", level = 99 } },
    tradeable = false,
    obtain = "Buy from Martin the Master Gardener in Draynor Village for 99,000 coins at level 99.",
    notes = "5% chance per action to harvest all remaining produce at once.",
    wiki = "https://runescape.wiki/w/Farming_cape",
}

local masterCape = {
    slot = "Cape",
    label = "Farming master cape",
    names = { "Farming master cape" },
    levels = { { skill = "Farming", level = 120 } },
    tradeable = false,
    obtain = "Buy from Martin the Master Gardener or Elen Anterth in the Max Guild for 120,000 coins at level 120.",
    notes = "Treats patches with free supercompost, plus the Farming cape perk.",
    wiki = "https://runescape.wiki/w/Farming_master_cape",
}

return {
    skill = "Farming",
    source = "Data: RuneScape Wiki, Pay-to-play Farming training (CC BY-NC-SA 3.0)",

    bands = {
        { from = 1, to = 15, items = { spade, rake, dibber, wateringCan, crackedUrn, farmer } },
        { from = 15, to = 30, items = { spade, trowel, secateurs, fragileUrn, supercompost, farmer } },
        { from = 30, to = 50, items = { magicSecateurs, plainUrn, supercompost, farmer, seedicide, spade } },
        { from = 50, to = 74, items = { magicSecateurs, magicCan, strongUrn, supercompost, farmer, seedicide } },
        { from = 74, to = 90, items = { farmer, masterFarmer, decoratedUrn, ultracompost, seedicide, magicSecateurs } },
        { from = 90, to = 101, items = { masterFarmer, farmer, decoratedUrn, ultracompost, seedicide, cape } },
        { from = 101, to = 107, items = { masterFarmer, farmer, cape, decoratedUrn, ultracompost, seedicide } },
        { from = 107, to = 113, items = { masterFarmer, farmer, cape, decoratedUrn, ultracompost, seedicide } },
        { from = 113, to = 121, items = { masterFarmer, farmer, masterCape, exquisiteUrn, ultracompost, seedicide } },
    },

    inventories = {
        farming_allotments_low = {
            notes = "Use noted payment items for gardeners and note your produce on the tool leprechaun.",
            carry = {
                { label = "Spade", names = { "Spade" }, toolBelt = true },
                { label = "Rake", names = { "Rake" }, toolBelt = true },
                { label = "Seed dibber", names = { "Seed dibber" }, toolBelt = true },
                { label = "Allotment seeds", contains = { "potato seed", "onion seed", "cabbage seed", "tomato seed" }, count = 3 },
                { label = "Supercompost", names = { "Supercompost" } },
                { label = "Farming urn", contains = { "farming urn" } },
            },
        },
        farming_seedicide_tortoise = {
            notes = "Turn on Seedicide and pick which seeds it destroys. Bring food for the fight.",
            carry = {
                { label = "Seedicide (pocket slot or tool belt)", names = { "Seedicide" }, toolBelt = true },
            },
        },
        farming_seedicide_tortoise_15 = {
            notes = "Turn on Seedicide and pick which seeds it destroys. Bring food for the fight.",
            carry = {
                { label = "Seedicide (pocket slot or tool belt)", names = { "Seedicide" }, toolBelt = true },
            },
        },
        farming_seedicide_turoth = {
            notes = "Turoths need a leaf-bladed weapon, broad arrows or bolts, or Slayer Dart.",
            carry = {
                { label = "Seedicide (pocket slot or tool belt)", names = { "Seedicide" }, toolBelt = true },
            },
        },
        farming_tree_runs_low = {
            notes = "Bring noted payments for each gardener so the trees cannot die.",
            carry = {
                { label = "Saplings", contains = { "sapling" } },
                { label = "Spade", names = { "Spade" }, toolBelt = true },
                { label = "Rake", names = { "Rake" }, toolBelt = true },
                { label = "Supercompost", names = { "Supercompost" } },
                { label = "Farming urn", contains = { "farming urn" } },
            },
        },
        farming_tree_runs_30 = {
            notes = "Bring noted payments for each gardener so the trees cannot die.",
            carry = {
                { label = "Saplings", contains = { "sapling" } },
                { label = "Spade", names = { "Spade" }, toolBelt = true },
                { label = "Rake", names = { "Rake" }, toolBelt = true },
                { label = "Supercompost", names = { "Supercompost" } },
                { label = "Farming urn", contains = { "farming urn" } },
            },
        },
        farming_tree_runs_50 = {
            notes = "Bring noted payments for each gardener so the trees cannot die.",
            carry = {
                { label = "Saplings", contains = { "sapling" } },
                { label = "Spade", names = { "Spade" }, toolBelt = true },
                { label = "Rake", names = { "Rake" }, toolBelt = true },
                { label = "Supercompost", names = { "Supercompost" } },
                { label = "Farming urn", contains = { "farming urn" } },
            },
        },
        farming_tree_runs_74 = {
            notes = "Bring noted payments for each gardener so the trees cannot die.",
            carry = {
                { label = "Saplings", contains = { "sapling" } },
                { label = "Spade", names = { "Spade" }, toolBelt = true },
                { label = "Rake", names = { "Rake" }, toolBelt = true },
                { label = "Ultracompost", names = { "Ultracompost" } },
                { label = "Farming urn", contains = { "farming urn" } },
            },
        },
    },
}
