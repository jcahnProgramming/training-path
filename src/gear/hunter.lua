--[[
    Hunter gear (data only, no code).
    Sources: RuneScape Wiki, "Pay-to-play Hunter training" (Useful equipment), "Urns", "Tool belt",
    "Hunter's outfit", "Desert trapper outfit" and the item pages linked below.
    Licensed CC BY-NC-SA 3.0. Format: docs/gear-format.md
]]

local snare = {
    slot = "Tool",
    label = "Bird snare",
    names = { "Bird snare" },
    tradeable = true,
    obtain = "Hunter shops: Aleck in Yanille, Artimeus in Nardah, Ayleth Beaststalker in Taverley. Also the GE.",
    notes = "Needs no bait. Bring one per trap you can lay.",
    wiki = "https://runescape.wiki/w/Bird_snare",
}

local noose = {
    slot = "Tool",
    label = "Noose wand",
    names = { "Noose wand" },
    toolBelt = true,
    tradeable = true,
    obtain = "Hunter shops, or the Grand Exchange. Store it on the tool belt.",
    notes = "Catches tracked kebbits and jadinkos.",
    wiki = "https://runescape.wiki/w/Noose_wand",
}

local boxTrap = {
    slot = "Tool",
    label = "Box trap",
    names = { "Box trap" },
    levels = { { skill = "Hunter", level = 27 } },
    tradeable = true,
    obtain = "Aleck's Hunter Emporium in Yanille for 38 coins. 5 free from Nyriki's crate in the Tree Gnome Stronghold.",
    notes = "Used for chinchompas, skillchompas and grenwalls.",
    wiki = "https://runescape.wiki/w/Box_trap",
}

local net = {
    slot = "Tool",
    label = "Small fishing net",
    names = { "Small fishing net" },
    tradeable = true,
    obtain = "Fishing shops, or the Grand Exchange.",
    notes = "Each net trap needs a small fishing net and a rope in the backpack (the tool belt doesn't count).",
    wiki = "https://runescape.wiki/w/Small_fishing_net",
}

local rope = {
    slot = "Other",
    label = "Rope",
    names = { "Rope" },
    tradeable = true,
    obtain = "Ned in Draynor Village for 15 coins or 4 balls of wool, or the Grand Exchange.",
    notes = "One per net trap.",
    wiki = "https://runescape.wiki/w/Rope",
}

local hunterOutfit = {
    slot = "Outfit",
    label = "Hunter's outfit",
    contains = { "hunter's headwear", "hunter's chestpiece", "hunter's legwear", "hunter's gloves", "hunter's boots" },
    tradeable = false,
    obtain = "Waiko Reward Shop: 10,000 chimes and 10 taijitu for the set.",
    notes = "+1% XP per piece, +6% for the full set. Lost pieces are free from Diango.",
    wiki = "https://runescape.wiki/w/Hunter%27s_outfit",
}

local vitur = {
    slot = "Ring",
    label = "Ring of Vitur",
    names = { "Ring of Vitur" },
    tradeable = true,
    obtain = "Grand Exchange, or from the Darkmeyer magic stall, Darkmeyer chests and vyrelord/vyrelady consumers.",
    notes = "+5% Hunter success chance.",
    wiki = "https://runescape.wiki/w/Ring_of_Vitur",
}

local whispers = {
    slot = "Ring",
    label = "Ring of Whispers",
    names = { "Ring of Whispers" },
    tradeable = false,
    obtain = "Reward from the quest Sliske's Endgame.",
    notes = "Invisible +3 Hunter level while worn.",
    wiki = "https://runescape.wiki/w/Ring_of_Whispers",
}

local yaktwee = {
    slot = "Weapon",
    label = "Enhanced yaktwee stick",
    names = { "Enhanced yaktwee stick" },
    tradeable = false,
    obtain = "Catch 1,000 charm sprites (72 Hunter) with a yaktwee stick, then talk to Yaktwee Swinmari Cianta.",
    notes = "+2% Hunter XP, stacks with the Hunter's outfit.",
    wiki = "https://runescape.wiki/w/Enhanced_yaktwee_stick",
}

local brawling = {
    slot = "Hands",
    label = "Brawling gloves (Hunter)",
    names = { "Brawling gloves (Hunter)" },
    tradeable = false,
    obtain = "Rare drop from revenants, the Wilderness shared loot table and the Chaos Elemental.",
    notes = "+50% XP (+75% with Infernal Puzzle Box tier 4). 336 charges.",
    wiki = "https://runescape.wiki/w/Brawling_gloves_(Hunter)",
}

local catalyst = {
    slot = "Off-hand",
    label = "Hunter's Catalyst fragment",
    contains = { "catalyst fragment" },
    tradeable = false,
    obtain = "Reward from the quest Sliske's Endgame.",
    notes = "Resets box traps, bird snares, magic boxes and tortle traps that fail.",
    wiki = "https://runescape.wiki/w/Hunter%27s_Catalyst_fragment",
}

local trapper = {
    slot = "Outfit",
    label = "Trapper outfit (desert, jungle or arctic)",
    contains = { "trapper head", "trapper chest", "trapper legguards", "trapper arms", "trapper boots" },
    levels = { { skill = "Hunter", level = 80 }, { skill = "Invention", level = 20 } },
    tradeable = false,
    obtain = "Blueprint from the Hunter mark shop (100 Hunter marks, Big Game Hunter), then 3,600 trapper fragments per piece at an inventor's workbench.",
    notes = "Full set: +5% success chance and keeps the Hunter's outfit XP bonus if you own it.",
    wiki = "https://runescape.wiki/w/Desert_trapper_outfit",
}

local cape = {
    slot = "Cape",
    label = "Hunter cape",
    contains = { "hunter cape" },
    levels = { { skill = "Hunter", level = 99 } },
    tradeable = false,
    obtain = "Buy from the Hunting expert in the Feldip Hills for 99,000 coins at level 99.",
    notes = "Can instantly deploy traps.",
    wiki = "https://runescape.wiki/w/Hunter_cape",
}

local crackedUrn = {
    slot = "Other",
    label = "Cracked hunter urn",
    contains = { "cracked hunter urn" },
    tradeable = false,
    obtain = "Make with 3 Crafting and a mud rune, or buy the (no rune) urn on the GE and add a mud rune.",
    notes = "+20% XP from creatures up to level 11.",
    wiki = "https://runescape.wiki/w/Urns#Hunter",
}

local fragileUrn = {
    slot = "Other",
    label = "Fragile hunter urn",
    contains = { "fragile hunter urn" },
    tradeable = false,
    obtain = "Make with 17 Crafting, or buy the (no rune) urn on the GE and add a mud rune.",
    notes = "+20% XP from creatures up to level 29.",
    wiki = "https://runescape.wiki/w/Urns#Hunter",
}

local plainUrn = {
    slot = "Other",
    label = "Plain hunter urn",
    contains = { "plain hunter urn" },
    tradeable = false,
    obtain = "Make with 34 Crafting, or buy the (no rune) urn on the GE and add a mud rune.",
    notes = "+20% XP from creatures up to level 53.",
    wiki = "https://runescape.wiki/w/Urns#Hunter",
}

local strongUrn = {
    slot = "Other",
    label = "Strong hunter urn",
    contains = { "strong hunter urn" },
    tradeable = false,
    obtain = "Make with 55 Crafting, or buy the (no rune) urn on the GE and add a mud rune.",
    notes = "+20% XP from creatures up to level 74.",
    wiki = "https://runescape.wiki/w/Urns#Hunter",
}

local decoratedUrn = {
    slot = "Other",
    label = "Decorated hunter urn",
    contains = { "decorated hunter urn" },
    tradeable = false,
    obtain = "Make with 79 Crafting, or buy the (no rune) urn on the GE and add a mud rune.",
    notes = "+20% XP from any creature.",
    wiki = "https://runescape.wiki/w/Urns#Hunter",
}

local exquisiteUrn = {
    slot = "Other",
    label = "Exquisite hunter urn",
    contains = { "exquisite hunter urn" },
    tradeable = false,
    obtain = "Make with 109 Crafting (needs an opal), or buy the (no rune) urn on the GE and add a mud rune.",
    notes = "+25% XP from any creature.",
    wiki = "https://runescape.wiki/w/Exquisite_hunter_urn",
}

return {
    skill = "Hunter",
    source = "Data: RuneScape Wiki, Pay-to-play Hunter training (CC BY-NC-SA 3.0)",

    bands = {
        { from = 1, to = 11, items = { snare, crackedUrn, noose, hunterOutfit } },
        { from = 11, to = 19, items = { snare, crackedUrn, fragileUrn, hunterOutfit } },
        { from = 19, to = 30, items = { snare, fragileUrn, boxTrap, hunterOutfit } },
        { from = 30, to = 50, items = { plainUrn, snare, boxTrap, hunterOutfit, vitur } },
        { from = 50, to = 59, items = { boxTrap, plainUrn, strongUrn, hunterOutfit, vitur } },
        { from = 59, to = 63, items = { net, rope, strongUrn, hunterOutfit, vitur } },
        { from = 63, to = 70, items = { net, rope, boxTrap, strongUrn, hunterOutfit, vitur } },
        { from = 70, to = 80, items = { hunterOutfit, yaktwee, strongUrn, vitur, whispers, catalyst } },
        { from = 80, to = 88, items = { trapper, hunterOutfit, yaktwee, decoratedUrn, vitur, brawling } },
        { from = 88, to = 96, items = { trapper, yaktwee, decoratedUrn, vitur, catalyst, brawling } },
        { from = 96, to = 111, items = { trapper, yaktwee, cape, decoratedUrn, exquisiteUrn, vitur } },
    },

    inventories = {
        hunter_crimson_swift = {
            carry = {
                { label = "Bird snare", names = { "Bird snare" } },
                { label = "Hunter urn", contains = { "hunter urn" } },
            },
        },
        hunter_cerulean_twitch = {
            carry = {
                { label = "Bird snare", names = { "Bird snare" } },
                { label = "Hunter urn", contains = { "hunter urn" } },
            },
        },
        hunter_tropical_wagtail = {
            notes = "Drop bones and meat as you go, or bury the bones for Prayer.",
            carry = {
                { label = "Bird snares", names = { "Bird snare" }, count = 2 },
                { label = "Hunter urn", contains = { "hunter urn" } },
            },
        },
        hunter_tropical_wagtail_30 = {
            notes = "Drop bones and meat as you go, or bury the bones for Prayer.",
            carry = {
                { label = "Bird snares", names = { "Bird snare" }, count = 3 },
                { label = "Hunter urn", contains = { "hunter urn" } },
            },
        },
        hunter_red_salamander = {
            notes = "Each net trap needs its own net and rope.",
            carry = {
                { label = "Small fishing nets", names = { "Small fishing net" }, count = 3 },
                { label = "Rope", names = { "Rope" }, count = 3 },
                { label = "Hunter urn", contains = { "hunter urn" } },
            },
        },
        hunter_black_salamander = {
            notes = "Wilderness: bring only what you can afford to lose.",
            carry = {
                { label = "Small fishing nets", names = { "Small fishing net" }, count = 4 },
                { label = "Rope", names = { "Rope" }, count = 4 },
                { label = "Hunter urn", contains = { "hunter urn" } },
            },
        },
        hunter_black_salamander_70 = {
            notes = "Wilderness: bring only what you can afford to lose.",
            carry = {
                { label = "Small fishing nets", names = { "Small fishing net" }, count = 4 },
                { label = "Rope", names = { "Rope" }, count = 4 },
                { label = "Hunter urn", contains = { "hunter urn" } },
            },
        },
        hunter_carnivorous_chinchompa = {
            notes = "Bring a box trap for every trap you can lay.",
            carry = {
                { label = "Box traps", names = { "Box trap" }, count = 4 },
                { label = "Hunter urn", contains = { "hunter urn" } },
            },
        },
        hunter_grenwall = {
            notes = "Bring runes for Crystallise and prayer potions if you use Light Form.",
            carry = {
                { label = "Box traps", names = { "Box trap" }, count = 5 },
                { label = "Hunter urn", contains = { "hunter urn" } },
            },
        },
    },
}
