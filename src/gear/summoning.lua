--[[
    Summoning gear (data only, no code).
    Sources: RuneScape Wiki, "Summoning training" (Useful items, How to make pouches, 200m preset),
    "Shrine of the Spirit Wolves", "Shaman's outfit" and the item pages linked below.
    Licensed CC BY-NC-SA 3.0. Format: docs/gear-format.md
]]

local shaman = {
    slot = "Outfit",
    label = "Shaman's outfit",
    names = { "Shaman's headdress", "Modified shaman's headdress", "Shaman's poncho", "Shaman's leggings", "Shaman's moccasins", "Shaman's hand wraps" },
    tradeable = false,
    obtain = "Shrine of the Spirit Wolves shop at the Shrine of Inanna (Havenhythe). 1 Blessing of the Wolf per pouch made there; 3,000 for the full set.",
    notes = "+1% XP per piece, +6% for all five. The headdress unlocks after 600 pouches.",
    wiki = "https://runescape.wiki/w/Shaman%27s_outfit",
}

local modHead = {
    slot = "Head",
    label = "Modified shaman's headdress",
    names = { "Modified shaman's headdress" },
    tradeable = false,
    obtain = "Use the shaman's headdress add-on (3,600 Blessings of the Wolf at the Shrine of the Spirit Wolves) on the headdress.",
    notes = "5% chance to save a charm, keeps the 1% XP bonus, 3 daily teleports to Bogrog.",
    wiki = "https://runescape.wiki/w/Modified_shaman%27s_headdress",
}

local spiritGems = {
    slot = "Pocket",
    label = "Spirit gems",
    contains = { "spirit sapphire", "spirit emerald", "spirit ruby", "spirit diamond", "spirit dragonstone", "spirit onyx" },
    tradeable = false,
    obtain = "Dropped by monsters that drop single charms, or from oysters in a player-owned house aquarium.",
    notes = "10% to 60% chance to save a charm. Best saved for blue and crimson charm pouches.",
    wiki = "https://runescape.wiki/w/Spirit_gems",
}

local focus = {
    slot = "Other",
    label = "Summoning focus",
    names = { "Summoning focus" },
    tradeable = true,
    obtain = "Grand Exchange, or a drop in the Sophanem Slayer Dungeon.",
    notes = "+20% XP; one is used per pouch. Expensive per XP.",
    wiki = "https://runescape.wiki/w/Summoning_focus",
}

local lightness = {
    slot = "Feet",
    label = "Boots of lightness",
    names = { "Boots of lightness" },
    tradeable = false,
    obtain = "Free on the floor of the Temple of Ikov dungeon south of Seers' Village. Bring a light source and a knife.",
    notes = "Weight-reducing: the wiki suggests it for the running between bank and obelisk.",
    wiki = "https://runescape.wiki/w/Boots_of_lightness",
}

local terrorbird = {
    slot = "Familiar",
    label = "Spirit terrorbird pouch",
    names = { "Spirit terrorbird pouch" },
    levels = { { skill = "Summoning", level = 52 } },
    tradeable = true,
    obtain = "Make with 52 Summoning (gold charm, raw bird meat), or the Grand Exchange.",
    notes = "The wiki suggests it for infinite run between bank and obelisk.",
    wiki = "https://runescape.wiki/w/Spirit_terrorbird_pouch",
}

local tortoise = {
    slot = "Familiar",
    label = "War tortoise pouch",
    names = { "War tortoise pouch" },
    levels = { { skill = "Summoning", level = 67 } },
    tradeable = true,
    obtain = "Make with 67 Summoning (gold charm, tortoise shell), or the Grand Exchange.",
    notes = "Beast of burden with 18 slots: carry extra secondaries for the drop trick.",
    wiki = "https://runescape.wiki/w/War_tortoise_pouch",
}

local yak = {
    slot = "Familiar",
    label = "Pack yak pouch",
    names = { "Pack yak pouch" },
    levels = { { skill = "Summoning", level = 96 } },
    tradeable = true,
    obtain = "Make with 96 Summoning (crimson charm, yak hide), or the Grand Exchange.",
    notes = "Beast of burden with 30 slots.",
    wiki = "https://runescape.wiki/w/Pack_yak_pouch",
}

local supplies = {
    { label = "Pouches", names = { "Pouch" } },
    { label = "Spirit shards", names = { "Spirit shards" } },
}

return {
    skill = "Summoning",
    source = "Data: RuneScape Wiki, Summoning training and Shrine of the Spirit Wolves (CC BY-NC-SA 3.0)",

    bands = {
        {
            from = 1, to = 52,
            items = {
                shaman,
                spiritGems,
                {
                    slot = "Other",
                    label = "Pouches and spirit shards",
                    names = { "Pouch", "Spirit shards" },
                    tradeable = true,
                    obtain = "Pikkupstix in Taverley: pouches 1 coin, spirit shards 25 coins each. Also on the Grand Exchange.",
                    notes = "Trade finished pouches to Bogrog or Lord Amlodd for 70% of the shards back.",
                    wiki = "https://runescape.wiki/w/Spirit_shards",
                },
                lightness,
                focus,
            },
        },
        {
            from = 52, to = 67,
            items = {
                shaman,
                spiritGems,
                terrorbird,
                modHead,
                lightness,
                focus,
            },
        },
        {
            from = 67, to = 96,
            items = {
                shaman,
                modHead,
                spiritGems,
                tortoise,
                focus,
            },
        },
        {
            from = 96, to = 100,
            items = {
                shaman,
                modHead,
                spiritGems,
                yak,
                {
                    slot = "Cape",
                    label = "Summoning cape",
                    contains = { "summoning cape" },
                    levels = { { skill = "Summoning", level = 99 } },
                    tradeable = false,
                    obtain = "Buy for 99,000 coins from Pikkupstix in Taverley at level 99.",
                    notes = "2% chance to save a charm.",
                    wiki = "https://runescape.wiki/w/Summoning_cape",
                },
                focus,
            },
        },
    },

    inventories = {
        summoning_granite_crab = {
            notes = "Wiki sample: charms, pouches and shards in the last three slots, the rest iron ore.",
            wear = { { label = "Shaman's outfit", contains = { "shaman's" } } },
            carry = {
                { label = "Iron ore", names = { "Iron ore" }, count = 25 },
                { label = "Gold charms", names = { "Gold charm" } },
                supplies[1],
                supplies[2],
            },
        },
        summoning_spirit_terrorbird = {
            notes = "Charms, pouches and shards in the last three slots, the rest raw bird meat.",
            wear = { { label = "Shaman's outfit", contains = { "shaman's" } } },
            carry = {
                { label = "Raw bird meat", names = { "Raw bird meat" }, count = 25 },
                { label = "Gold charms", names = { "Gold charm" } },
                supplies[1],
                supplies[2],
            },
        },
        summoning_geyser_titan = {
            notes = "Wiki preset: water talismans fill the backpack. Save spirit gems for blue charms.",
            wear = {
                { label = "Shaman's outfit", contains = { "shaman's" } },
                { label = "Spirit gem", contains = { "spirit sapphire", "spirit emerald", "spirit ruby", "spirit diamond", "spirit dragonstone", "spirit onyx" } },
            },
            carry = {
                { label = "Water talismans", names = { "Water talisman" }, count = 20 },
                { label = "Blue charms", names = { "Blue charm" } },
                supplies[1],
                supplies[2],
            },
        },
    },
}
