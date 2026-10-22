--[[
    Prayer gear by level and inventories (data only, no code).
    Prayer is not trained with combat armour, so this lists the items that help
    training: XP boosts, bone and ash helpers, teleports and consumables.
    Sources: RuneScape Wiki, "Pay-to-play Prayer training" (Useful equipment and
    method sections) and item pages (requirements and tradeability from the infoboxes).
    Licensed CC BY-NC-SA 3.0. Format: docs/gear-format.md.
]]

return {
    skill = "Prayer",
    source = "Data: RuneScape Wiki, Pay-to-play Prayer training (CC BY-NC-SA 3.0)",

    bands = {
        {
            from = 1, to = 20,
            items = {
                {
                    slot = "Other",
                    label = "Powder of burials",
                    names = { "Powder of burials" },
                    tradeable = true,
                    obtain = "Grind 15 speedy whirligig shells from Het's Oasis, or buy on the Grand Exchange.",
                    notes = "3.5x XP for buried bones for 30 minutes. Fastest method; ashes are not boosted.",
                    wiki = "https://runescape.wiki/w/Powder_of_burials",
                },
                {
                    slot = "Other",
                    label = "Ectophial",
                    names = { "Ectophial" },
                    tradeable = false,
                    obtain = "Reward from the Ghosts Ahoy quest; replacements are free from Velorina in Port Phasmatys.",
                    notes = "Teleports to the Ectofuntus (4x XP per bone or ash).",
                    wiki = "https://runescape.wiki/w/Ectophial",
                },
                {
                    slot = "Outfit",
                    label = "First age outfit",
                    contains = { "first age" },
                    tradeable = false,
                    obtain = "Shady ghost at the Ectofuntus; the tiara and amulet cost 1,000 ecto-tokens each.",
                    notes = "1% XP per piece, 6% for all five. Does not work at the Ectofuntus.",
                    wiki = "https://runescape.wiki/w/First_age_outfit",
                },
                {
                    slot = "Other",
                    label = "Clean marrentill",
                    names = { "Clean marrentill" },
                    tradeable = true,
                    obtain = "Grand Exchange, or clean grimy marrentill with Herblore.",
                    notes = "Two light the incense burners at a gilded altar.",
                    wiki = "https://runescape.wiki/w/Clean_marrentill",
                },
            },
        },
        {
            from = 20, to = 50,
            items = {
                {
                    slot = "Pocket",
                    label = "Bonecrusher",
                    names = { "Bonecrusher" },
                    toolBelt = true,
                    levels = { { skill = "Prayer", level = 21 } },
                    tradeable = false,
                    obtain = "Daemonheim rewards trader: 50,000 Dungeoneering tokens (needs 41 Dungeoneering and 21 Prayer to buy).",
                    notes = "Buries bones dropped by monsters you kill. Works from the pocket, backpack or tool belt.",
                    wiki = "https://runescape.wiki/w/Bonecrusher",
                },
                {
                    slot = "Pocket",
                    label = "Ectoplasmator",
                    contains = { "ectoplasmator" },
                    tradeable = false,
                    obtain = "Rare drop from many ghosts. Reclaim it from Diango if lost.",
                    notes = "Gives Prayer XP when you kill most ghosts.",
                    wiki = "https://runescape.wiki/w/Ectoplasmator",
                },
                {
                    slot = "Other",
                    label = "Impious or accursed urn",
                    contains = { "impious urn", "accursed urn" },
                    tradeable = false,
                    obtain = "Make with Crafting (impious 1, accursed 26), then add the rune.",
                    notes = "Fills from demonic ashes while you fight; teleport it for bonus XP.",
                    wiki = "https://runescape.wiki/w/Urns",
                },
            },
        },
        {
            from = 50, to = 70,
            items = {
                {
                    slot = "Other",
                    label = "Infernal urn",
                    contains = { "infernal urn" },
                    tradeable = false,
                    obtain = "Make with 62 Crafting, then add the rune.",
                    notes = "1,875 XP per full urn. Kill demons that drop infernal ashes.",
                    wiki = "https://runescape.wiki/w/Infernal_urn",
                },
                {
                    slot = "Other",
                    label = "Urn enhancer",
                    names = { "Urn enhancer" },
                    tradeable = false,
                    obtain = "Invention device (24 Invention); the blueprint is a Nomad's Elegy reward.",
                    notes = "+25% XP per urn for 20 charges.",
                    wiki = "https://runescape.wiki/w/Urn_enhancer",
                },
                {
                    slot = "Potion",
                    label = "Perfect juju prayer potion",
                    contains = { "perfect juju prayer" },
                    tradeable = true,
                    obtain = "Herblore or the Grand Exchange.",
                    notes = "+5% XP for an hour at chapels, gilded altars, the Wilderness chaos altar and cleansing crystals.",
                    wiki = "https://runescape.wiki/w/Perfect_juju_prayer_potion",
                },
                {
                    slot = "Pocket",
                    label = "Bonecrusher",
                    names = { "Bonecrusher" },
                    toolBelt = true,
                    tradeable = false,
                    obtain = "Daemonheim rewards trader: 50,000 Dungeoneering tokens.",
                    notes = "Keep it on you while doing any combat training.",
                    wiki = "https://runescape.wiki/w/Bonecrusher",
                },
            },
        },
        {
            from = 70, to = 92,
            items = {
                {
                    slot = "Hands",
                    label = "Brawling gloves (Prayer)",
                    names = { "Brawling gloves (Prayer)" },
                    tradeable = false,
                    obtain = "Rare drop from revenants, the Wilderness shared loot table and the Chaos Elemental.",
                    notes = "+50% XP (75% with Infernal Puzzle Box tier 4). Not at the Wilderness chaos altar.",
                    wiki = "https://runescape.wiki/w/Brawling_gloves_(Prayer)",
                },
                {
                    slot = "Head",
                    label = "Modified first age tiara",
                    names = { "Modified first age tiara" },
                    tradeable = false,
                    obtain = "Use a first age tiara on a first age tiara add-on.",
                    notes = "2% chance to save bones and ashes, plus 3 house teleports a day.",
                    wiki = "https://runescape.wiki/w/Modified_first_age_tiara",
                },
                {
                    slot = "Pocket",
                    label = "Auto-sanctifier",
                    names = { "Auto-sanctifier" },
                    tradeable = false,
                    obtain = "Invention device: 70 Invention and 55 Dwarven Currency to unlock.",
                    notes = "50 charges of 3.5x XP when burying bones or scattering ashes.",
                    wiki = "https://runescape.wiki/w/Auto-sanctifier",
                },
                {
                    slot = "Neck",
                    label = "Dragon Rider amulet",
                    names = { "Dragon Rider amulet" },
                    levels = { { skill = "Magic", level = 81 } },
                    tradeable = false,
                    obtain = "Reward from the One of a Kind quest.",
                    notes = "Boosts dragon bone XP; great with a bonecrusher on dragons.",
                    wiki = "https://runescape.wiki/w/Dragon_Rider_amulet",
                },
            },
        },
        {
            from = 92, to = 100,
            items = {
                {
                    slot = "Two-handed",
                    label = "Augmented Sunspear",
                    contains = { "augmented sunspear" },
                    levels = { { skill = "Magic", level = 78 } },
                    tradeable = false,
                    obtain = "Made during River of Blood, then add an augmentor. Reclaim from Ivan Strom for 600,000 coins.",
                    notes = "Can switch between magic, melee and ranged styles.",
                    wiki = "https://runescape.wiki/w/Augmented_Sunspear_(magic)",
                },
                {
                    slot = "Legs",
                    label = "Morytania legs 4",
                    names = { "Morytania legs 4" },
                    levels = { { skill = "Defence", level = 38 } },
                    tradeable = false,
                    obtain = "Complete all Morytania achievements including elite, then talk to Old Man Ral in Meiyerditch.",
                    notes = "+50% Prayer XP from vyres.",
                    wiki = "https://runescape.wiki/w/Morytania_legs_4",
                },
                {
                    slot = "Neck",
                    label = "Amulet of zealots",
                    names = { "Amulet of zealots" },
                    levels = { { skill = "Prayer", level = 48 } },
                    tradeable = false,
                    obtain = "Daemonheim rewards: 40,000 Dungeoneering tokens (38 Dungeoneering).",
                    notes = "Makes Leech strength curses much stronger against vyres.",
                    wiki = "https://runescape.wiki/w/Amulet_of_zealots",
                },
                {
                    slot = "Hands",
                    label = "Brawling gloves (Prayer)",
                    names = { "Brawling gloves (Prayer)" },
                    tradeable = false,
                    obtain = "Rare drop from revenants, the Wilderness shared loot table and the Chaos Elemental.",
                    notes = "Use them for chapel sessions at Fort Forinthry.",
                    wiki = "https://runescape.wiki/w/Brawling_gloves_(Prayer)",
                },
            },
        },
    },

    inventories = {
        prayer_powder_of_burials = {
            notes = "Two powders per hour. Put the bones on the action bar and hold the key.",
            carry = {
                { label = "Powder of burials", names = { "Powder of burials" }, count = 1 },
                { label = "Bones", contains = { "bones" } },
            },
        },
        prayer_gilded_altar = {
            notes = "A pack yak or war tortoise carries extra bones per trip.",
            wear = {
                { label = "First age outfit pieces", contains = { "first age" } },
            },
            carry = {
                { label = "Clean marrentill", names = { "Clean marrentill" }, count = 2 },
                { label = "Bones or ashes", contains = { "bones", "ashes" } },
                { label = "Perfect juju prayer potion", contains = { "perfect juju prayer" }, count = 1 },
            },
        },
        prayer_ectofuntus = {
            notes = "Ectophial, a teleport and 13 bones or ashes with 13 empty slots. Ashes need no grinding.",
            carry = {
                { label = "Ectophial", names = { "Ectophial" } },
                { label = "Bones or ashes", contains = { "bones", "ashes" }, count = 13 },
            },
        },
        prayer_bonecrusher = {
            notes = "A Dragon Rider amulet (One of a Kind) boosts dragon bone XP on green or blue dragons.",
            carry = {
                { label = "Bonecrusher", names = { "Bonecrusher" }, toolBelt = true },
            },
        },
        prayer_chaos_altar = {
            notes = "Bank with Simon next door. After the hard Wilderness tasks, Harrison un-notes bones.",
            carry = {
                { label = "Bones or ashes", contains = { "bones", "ashes" } },
            },
        },
        prayer_urns = {
            notes = "Urns fill as you pick up demonic ashes; teleport them when full.",
            carry = {
                { label = "Prayer urn", contains = { "impious urn", "accursed urn", "infernal urn" } },
                { label = "Urn enhancer", names = { "Urn enhancer" } },
            },
        },
        prayer_fort_forinthry_chapel = {
            notes = "The only altar where Prayer brawling gloves work. Bank chest is just west.",
            wear = {
                { label = "Brawling gloves (Prayer)", names = { "Brawling gloves (Prayer)" } },
                { label = "First age outfit pieces", contains = { "first age" } },
            },
            carry = {
                { label = "Bones or ashes", contains = { "bones", "ashes" } },
                { label = "Perfect juju prayer potion", contains = { "perfect juju prayer" }, count = 1 },
            },
        },
        prayer_cleansing_crystals = {
            notes = "A perfect juju prayer potion gives +5%; the Hefin Voice of Seren gives +20%.",
            carry = {
                { label = "Cleansing crystals", names = { "Cleansing crystal" } },
                { label = "Perfect juju prayer potion", contains = { "perfect juju prayer" }, count = 1 },
            },
        },
        prayer_vyres_sunspear = {
            notes = "Stand between the building south of the bank and the tree to its west. Area loot every 90 to 120 seconds.",
            wear = {
                { label = "Augmented Sunspear", contains = { "augmented sunspear" } },
                { label = "Morytania legs 4", names = { "Morytania legs 4" } },
                { label = "Amulet of zealots", names = { "Amulet of zealots" } },
            },
        },
    },
}
