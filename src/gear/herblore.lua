--[[
    Herblore gear (data only, no code).
    Sources: RuneScape Wiki, "Pay-to-play Herblore training" (Useful equipment), "Botanist's outfit",
    "Flash Powder Factory", "Tool belt" and the item pages linked below.
    Licensed CC BY-NC-SA 3.0. Format: docs/gear-format.md
]]

local pestle = {
    slot = "Tool",
    label = "Pestle and mortar",
    names = { "Pestle and mortar" },
    toolBelt = true,
    tradeable = true,
    obtain = "Added to the tool belt automatically. Spare ones are cheap in shops and on the Grand Exchange.",
    notes = "Grinds secondaries such as chocolate dust and makes tar.",
    wiki = "https://runescape.wiki/w/Pestle_and_mortar",
}

local well = {
    slot = "Other",
    label = "Portable well",
    names = { "Portable well" },
    tradeable = true,
    obtain = "Grand Exchange. Other players set them up for free on world 84 at Fort Forinthry, Lumbridge bank and the GE.",
    notes = "+10% XP and 5% chance of an extra potion. Mix on a well within 4 tiles of a bank.",
    wiki = "https://runescape.wiki/w/Portable_well",
}

local amulet = {
    slot = "Neck",
    label = "Botanist's amulet",
    contains = { "botanist's amulet" },
    tradeable = true,
    obtain = "Grand Exchange, or enchant a jade amulet with Lvl-2 Enchant.",
    notes = "About 5% chance to make a 4-dose potion. 5 charges, then it crumbles. New ones are tradeable, used ones are not.",
    wiki = "https://runescape.wiki/w/Botanist%27s_amulet",
}

local botanist = {
    slot = "Outfit",
    label = "Botanist's outfit",
    contains = { "botanist's mask", "botanist's top", "botanist's trousers", "botanist's gloves", "botanist's boots" },
    tradeable = false,
    obtain = "Flash Powder Factory reward shop in the Rogues' Den, 4,000 Brian points for the set. Entry needs 75 Thieving, 75 Agility and 50 Herblore.",
    notes = "+1% XP per piece, +6% for the full set. Lost pieces are free from Diango.",
    wiki = "https://runescape.wiki/w/Botanist%27s_outfit",
}

local modmask = {
    slot = "Head",
    label = "Modified botanist's mask",
    names = { "Modified botanist's mask" },
    tradeable = false,
    obtain = "Use a botanist's mask add-on (Flash Powder Factory reward) on a botanist's mask.",
    notes = "Still +1% XP, plus a 5% chance to duplicate a potion. Stacks with the portable well.",
    wiki = "https://runescape.wiki/w/Modified_botanist%27s_mask",
}

local factory = {
    slot = "Outfit",
    label = "Factory outfit",
    contains = { "factory mask", "factory top", "factory trousers", "factory gloves", "factory boots" },
    tradeable = false,
    obtain = "Flash Powder Factory reward shop: 10,500 Brian points for the set, or 1,200 thaler.",
    notes = "3 pieces: 10% chance of 4-dose potions. Used for profit instead of the botanist's XP boost.",
    wiki = "https://runescape.wiki/w/Factory_outfit",
}

local herbicide = {
    slot = "Pocket",
    label = "Herbicide",
    names = { "Herbicide" },
    toolBelt = true,
    levels = { { skill = "Herblore", level = 21 }, { skill = "Dungeoneering", level = 41 } },
    tradeable = false,
    obtain = "Daemonheim Rewards for 50,000 Dungeoneering tokens, or the Farmers' Market for 10,000 beans.",
    notes = "Burns grimy herb drops while you fight for double cleaning XP. Tool belt needs 500 Slayer points.",
    wiki = "https://runescape.wiki/w/Herbicide",
}

local brooch = {
    slot = "Pocket",
    label = "Brooch of the Gods",
    names = { "Brooch of the Gods" },
    tradeable = true,
    obtain = "Grand Exchange, or enchant an alchemical hydrix brooch with Lvl-6 Enchant. Expensive.",
    notes = "Doubles the portable well's extra potion chance to 10%. Becomes untradeable once worn.",
    wiki = "https://runescape.wiki/w/Brooch_of_the_Gods",
}

local scripture = {
    slot = "Pocket",
    label = "Scripture of Elidinis",
    names = { "Scripture of Elidinis" },
    tradeable = true,
    obtain = "Drop from the Gate of Elidinis, or the Grand Exchange. Expensive, end-game.",
    notes = "Spawns souls that give bonus XP, about 100k XP/hr at 99.",
    wiki = "https://runescape.wiki/w/Scripture_of_Elidinis",
}

local cape = {
    slot = "Cape",
    label = "Herblore cape",
    contains = { "herblore cape" },
    levels = { { skill = "Herblore", level = 99 } },
    tradeable = false,
    obtain = "Buy from Kaqemeex in Taverley for 99,000 coins at level 99.",
    wiki = "https://runescape.wiki/w/Herblore_cape",
}

local mastercape = {
    slot = "Cape",
    label = "Herblore master cape",
    names = { "Herblore master cape" },
    levels = { { skill = "Herblore", level = 120 } },
    tradeable = false,
    obtain = "Reward for reaching level 120 Herblore.",
    notes = "Makes overloads 5 at a time from the ingredients of 4.",
    wiki = "https://runescape.wiki/w/Herblore_master_cape",
}

return {
    skill = "Herblore",
    source = "Data: RuneScape Wiki, Pay-to-play Herblore training (CC BY-NC-SA 3.0)",

    bands = {
        { from = 1, to = 12, items = { pestle, well, amulet } },
        { from = 12, to = 26, items = { well, amulet, pestle, herbicide } },
        { from = 26, to = 38, items = { well, amulet, herbicide, pestle } },
        { from = 38, to = 55, items = { well, amulet, botanist, herbicide, pestle } },
        { from = 55, to = 63, items = { botanist, well, modmask, amulet, factory } },
        { from = 63, to = 72, items = { botanist, well, modmask, amulet, factory, brooch } },
        { from = 72, to = 81, items = { botanist, well, modmask, amulet, brooch, factory } },
        { from = 81, to = 88, items = { botanist, well, modmask, amulet, brooch, scripture } },
        { from = 88, to = 96, items = { botanist, well, modmask, amulet, brooch, scripture } },
        { from = 96, to = 99, items = { botanist, well, modmask, amulet, brooch, scripture } },
        { from = 99, to = 107, items = { cape, botanist, well, modmask, amulet, scripture } },
        { from = 107, to = 121, items = { mastercape, cape, botanist, well, modmask, scripture } },
    },

    inventories = {
        herblore_attack_potion = {
            notes = "Bank preset of 14 unfinished potions and 14 secondaries. Mix next to a portable well.",
            wear = {
                { label = "Botanist's outfit", contains = { "botanist's mask", "botanist's top", "botanist's trousers", "botanist's gloves", "botanist's boots" } },
            },
            carry = {
                { label = "Guam potion (unf)", names = { "Guam potion (unf)" }, count = 14 },
                { label = "Eye of newt", names = { "Eye of newt" }, count = 14 },
            },
        },
        herblore_strength_potion = {
            notes = "Bank preset of 14 unfinished potions and 14 secondaries. Mix next to a portable well.",
            wear = {
                { label = "Botanist's outfit", contains = { "botanist's mask", "botanist's top", "botanist's trousers", "botanist's gloves", "botanist's boots" } },
            },
            carry = {
                { label = "Tarromin potion (unf)", names = { "Tarromin potion (unf)" }, count = 14 },
                { label = "Limpwurt root", names = { "Limpwurt root" }, count = 14 },
            },
        },
        herblore_energy_potion = {
            notes = "Bank preset of 14 unfinished potions and 14 secondaries. Mix next to a portable well.",
            wear = {
                { label = "Botanist's outfit", contains = { "botanist's mask", "botanist's top", "botanist's trousers", "botanist's gloves", "botanist's boots" } },
            },
            carry = {
                { label = "Harralander potion (unf)", names = { "Harralander potion (unf)" }, count = 14 },
                { label = "Chocolate dust", names = { "Chocolate dust" }, count = 14 },
            },
        },
        herblore_prayer_potion = {
            notes = "Bank preset of 14 unfinished potions and 14 secondaries. Mix next to a portable well.",
            wear = {
                { label = "Botanist's outfit", contains = { "botanist's mask", "botanist's top", "botanist's trousers", "botanist's gloves", "botanist's boots" } },
            },
            carry = {
                { label = "Ranarr potion (unf)", names = { "Ranarr potion (unf)" }, count = 14 },
                { label = "Snape grass", names = { "Snape grass" }, count = 14 },
            },
        },
        herblore_super_strength = {
            notes = "Bank preset of 14 unfinished potions and 14 secondaries. Mix next to a portable well.",
            wear = {
                { label = "Botanist's outfit", contains = { "botanist's mask", "botanist's top", "botanist's trousers", "botanist's gloves", "botanist's boots" } },
            },
            carry = {
                { label = "Kwuarm potion (unf)", names = { "Kwuarm potion (unf)" }, count = 14 },
                { label = "Limpwurt root", names = { "Limpwurt root" }, count = 14 },
            },
        },
        herblore_super_restore = {
            notes = "Bank preset of 14 unfinished potions and 14 secondaries. Mix next to a portable well.",
            wear = {
                { label = "Botanist's outfit", contains = { "botanist's mask", "botanist's top", "botanist's trousers", "botanist's gloves", "botanist's boots" } },
            },
            carry = {
                { label = "Snapdragon potion (unf)", names = { "Snapdragon potion (unf)" }, count = 14 },
                { label = "Red spiders' eggs", names = { "Red spiders' eggs" }, count = 14 },
            },
        },
        herblore_super_ranging = {
            notes = "Bank preset of 14 unfinished potions and 14 secondaries. Mix next to a portable well.",
            wear = {
                { label = "Botanist's outfit", contains = { "botanist's mask", "botanist's top", "botanist's trousers", "botanist's gloves", "botanist's boots" } },
            },
            carry = {
                { label = "Dwarf weed potion (unf)", names = { "Dwarf weed potion (unf)" }, count = 14 },
                { label = "Wine of Zamorak", names = { "Wine of Zamorak" }, count = 14 },
            },
        },
        herblore_saradomin_brew = {
            notes = "Bank preset of 14 unfinished potions and 14 secondaries. Mix next to a portable well.",
            wear = {
                { label = "Botanist's outfit", contains = { "botanist's mask", "botanist's top", "botanist's trousers", "botanist's gloves", "botanist's boots" } },
            },
            carry = {
                { label = "Toadflax potion (unf)", names = { "Toadflax potion (unf)" }, count = 14 },
                { label = "Crushed nest", names = { "Crushed nest" }, count = 14 },
            },
        },
        herblore_harralander_tar = {
            notes = "Swamp tar stacks, so one inventory makes a lot of tar.",
            carry = {
                { label = "Pestle and mortar", names = { "Pestle and mortar" }, toolBelt = true },
                { label = "Clean harralander", names = { "Clean harralander" } },
                { label = "Swamp tar", names = { "Swamp tar" }, count = 15 },
            },
        },
    },
}
