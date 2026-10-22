--[[
    Fletching gear (data only, no code).
    Sources: RuneScape Wiki, "Pay-to-play Fletching training" (Useful equipment, methods),
    "Fletcher's outfit" and the item pages linked below.
    Licensed CC BY-NC-SA 3.0. Format: docs/gear-format.md
]]

return {
    skill = "Fletching",
    source = "Data: RuneScape Wiki, Pay-to-play Fletching training (CC BY-NC-SA 3.0)",

    bands = {
        {
            from = 1, to = 30,
            items = {
                {
                    slot = "Tool",
                    label = "Knife",
                    names = { "Knife" },
                    toolBelt = true,
                    tradeable = true,
                    obtain = "General stores (Varrock, Karamja), or the Grand Exchange.",
                    notes = "Needed to cut logs into shafts and bows.",
                    wiki = "https://runescape.wiki/w/Knife",
                },
                {
                    slot = "Weapon",
                    label = "Dwarven army axe",
                    names = { "Dwarven army axe" },
                    tradeable = false,
                    obtain = "Reward from the To Lumbridge! achievement path, or claim it from Major Mary Rancour in Burthorpe.",
                    notes = "Extra XP that stacks up while making arrows in one Make-X batch.",
                    wiki = "https://runescape.wiki/w/Dwarven_army_axe",
                },
                {
                    slot = "Outfit",
                    label = "Fletcher's outfit",
                    names = { "Fletcher's headwear", "Fletcher's chestpiece", "Fletcher's legwear", "Fletcher's gloves", "Fletcher's boots" },
                    tradeable = false,
                    obtain = "Stealing Creation reward shop (100 points per piece), or Stanley Limelight Traders (360 thaler per piece).",
                    notes = "+1% XP per piece, +6% for the full set.",
                    wiki = "https://runescape.wiki/w/Fletcher%27s_outfit",
                },
                {
                    slot = "Other",
                    label = "Portable fletcher",
                    names = { "Portable fletcher" },
                    tradeable = true,
                    obtain = "Grand Exchange, or use one placed by other players on world 84 (Grand Exchange or Fort Forinthry).",
                    notes = "+10% XP and 10% chance to save materials.",
                    wiki = "https://runescape.wiki/w/Portable_fletcher",
                },
            },
        },
        {
            from = 30, to = 65,
            items = {
                {
                    slot = "Outfit",
                    label = "Fletcher's outfit",
                    names = { "Fletcher's headwear", "Fletcher's chestpiece", "Fletcher's legwear", "Fletcher's gloves", "Fletcher's boots" },
                    tradeable = false,
                    obtain = "Stealing Creation reward shop (100 points per piece), or Stanley Limelight Traders (360 thaler per piece).",
                    notes = "+6% XP for the full set.",
                    wiki = "https://runescape.wiki/w/Fletcher%27s_outfit",
                },
                {
                    slot = "Other",
                    label = "Portable fletcher",
                    names = { "Portable fletcher" },
                    tradeable = true,
                    obtain = "Grand Exchange, or use one placed by other players on world 84.",
                    notes = "Also strings two bows at once 10% of the time.",
                    wiki = "https://runescape.wiki/w/Portable_fletcher",
                },
                {
                    slot = "Tool",
                    label = "Knife",
                    names = { "Knife" },
                    toolBelt = true,
                    tradeable = true,
                    obtain = "General stores (Varrock, Karamja), or the Grand Exchange.",
                    wiki = "https://runescape.wiki/w/Knife",
                },
                {
                    slot = "Potion",
                    label = "Fletching potion",
                    contains = { "fletching potion" },
                    tradeable = true,
                    obtain = "Grand Exchange, or make with 58 Herblore.",
                    notes = "+3 Fletching levels, to make items a little early.",
                    wiki = "https://runescape.wiki/w/Fletching_potion",
                },
            },
        },
        {
            from = 65, to = 99,
            items = {
                {
                    slot = "Outfit",
                    label = "Fletcher's outfit",
                    names = { "Fletcher's headwear", "Fletcher's chestpiece", "Fletcher's legwear", "Fletcher's gloves", "Fletcher's boots" },
                    tradeable = false,
                    obtain = "Stealing Creation reward shop (100 points per piece), or Stanley Limelight Traders (360 thaler per piece).",
                    notes = "+6% XP for the full set.",
                    wiki = "https://runescape.wiki/w/Fletcher%27s_outfit",
                },
                {
                    slot = "Other",
                    label = "Portable fletcher",
                    names = { "Portable fletcher" },
                    tradeable = true,
                    obtain = "Grand Exchange, or use one placed by other players on world 84.",
                    wiki = "https://runescape.wiki/w/Portable_fletcher",
                },
                {
                    slot = "Weapon",
                    label = "Fenshell knife",
                    names = { "Fenshell knife" },
                    tradeable = true,
                    obtain = "Grand Exchange, or from totem reward bundles at Fenmoor Totems (65 Fletching and Woodcutting).",
                    notes = "Wield it: 7% chance to save resources when fletching.",
                    wiki = "https://runescape.wiki/w/Fenshell_knife",
                },
                {
                    slot = "Neck",
                    label = "Amulet of Offerings",
                    names = { "Amulet of Offerings" },
                    tradeable = false,
                    obtain = "Reward from the master quest Ode of the Devourer (end-game).",
                    notes = "+3% Fletching and Crafting XP.",
                    wiki = "https://runescape.wiki/w/Amulet_of_Offerings",
                },
                {
                    slot = "Weapon",
                    label = "Crystal knife",
                    names = { "Crystal knife" },
                    tradeable = false,
                    obtain = "Sing a crystal tool seed in Prifddinas (80 Smithing and 150 harmonic dust, or pay an elf). Needs Plague's End.",
                    notes = "5% chance of double shafts or a strung bow. Degrades back to a seed.",
                    wiki = "https://runescape.wiki/w/Crystal_knife",
                },
            },
        },
        {
            from = 99, to = 111,
            items = {
                {
                    slot = "Outfit",
                    label = "Fletcher's outfit",
                    names = { "Fletcher's headwear", "Fletcher's chestpiece", "Fletcher's legwear", "Fletcher's gloves", "Fletcher's boots" },
                    tradeable = false,
                    obtain = "Stealing Creation reward shop (100 points per piece), or Stanley Limelight Traders (360 thaler per piece).",
                    notes = "+6% XP for the full set.",
                    wiki = "https://runescape.wiki/w/Fletcher%27s_outfit",
                },
                {
                    slot = "Neck",
                    label = "Amulet of Fletcher's Offerings",
                    names = { "Amulet of Fletcher's Offerings" },
                    tradeable = false,
                    obtain = "Combine an Amulet of Offerings with a Latent Offering (dropped by the Gate of Elidinis).",
                    notes = "+10% XP but destroys what you fletch. 1,000 charges. Plain Amulet of Offerings gives +3%.",
                    wiki = "https://runescape.wiki/w/Amulet_of_Fletcher%27s_Offerings",
                },
                {
                    slot = "Other",
                    label = "Portable fletcher",
                    names = { "Portable fletcher" },
                    tradeable = true,
                    obtain = "Grand Exchange, or use one placed by other players on world 84.",
                    wiki = "https://runescape.wiki/w/Portable_fletcher",
                },
                {
                    slot = "Weapon",
                    label = "Fenshell knife",
                    names = { "Fenshell knife" },
                    tradeable = true,
                    obtain = "Grand Exchange, or from totem reward bundles at Fenmoor Totems.",
                    notes = "7% chance to save resources when fletching.",
                    wiki = "https://runescape.wiki/w/Fenshell_knife",
                },
                {
                    slot = "Cape",
                    label = "Fletching cape",
                    names = { "Fletching cape", "Fletching cape (t)" },
                    levels = { { skill = "Fletching", level = 99 } },
                    tradeable = false,
                    obtain = "Buy from Hickton's Archery Emporium in Catherby for 99,000 coins at level 99.",
                    notes = "0.75% chance of extra bolts, arrows and darts, with XP.",
                    wiki = "https://runescape.wiki/w/Fletching_cape",
                },
            },
        },
    },

    inventories = {
        fletching_willow_longbow_string = {
            notes = "Use a bank preset to swap in 14 unstrung bows and 14 bowstrings in one click.",
            carry = {
                { label = "Willow longbow (u)", names = { "Willow longbow (u)" }, count = 14 },
                { label = "Bowstrings", names = { "Bowstring" }, count = 14 },
            },
        },
        fletching_maple_shortbow_string = {
            notes = "Use a bank preset to swap in 14 unstrung bows and 14 bowstrings in one click.",
            carry = {
                { label = "Maple shortbow (u)", names = { "Maple shortbow (u)" }, count = 14 },
                { label = "Bowstrings", names = { "Bowstring" }, count = 14 },
            },
        },
        fletching_maple_longbow_string = {
            notes = "Use a bank preset to swap in 14 unstrung bows and 14 bowstrings in one click.",
            carry = {
                { label = "Maple longbow (u)", names = { "Maple longbow (u)" }, count = 14 },
                { label = "Bowstrings", names = { "Bowstring" }, count = 14 },
            },
        },
        fletching_yew_longbow_string = {
            notes = "Use a bank preset to swap in 14 unstrung bows and 14 bowstrings in one click.",
            carry = {
                { label = "Yew longbow (u)", names = { "Yew longbow (u)" }, count = 14 },
                { label = "Bowstrings", names = { "Bowstring" }, count = 14 },
            },
        },
        fletching_magic_longbow_string = {
            notes = "Use a bank preset to swap in 14 unstrung bows and 14 bowstrings in one click.",
            carry = {
                { label = "Magic longbow (u)", names = { "Magic longbow (u)" }, count = 14 },
                { label = "Bowstrings", names = { "Bowstring" }, count = 14 },
            },
        },
        fletching_eternal_magic_shortbow = {
            notes = "A wood box is needed for the Mk. 5 upgrade (32 logs). Refill it from noted logs, no bank needed.",
            carry = {
                { label = "Eternal magic wood box", names = { "Eternal magic wood box" } },
                { label = "Noted eternal magic logs", names = { "Eternal magic logs" } },
                { label = "Eternal magic shortbow", contains = { "eternal magic shortbow" } },
            },
        },
    },
}
