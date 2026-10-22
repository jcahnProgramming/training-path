--[[
    Smithing activities (data only, no code).
    Sources: RuneScape Wiki pages "Pay-to-play Smithing training", "The Knight's Sword"
    and its quick guide, "Metal bank", "Smelting gauntlets", "Heat", "Smithing autoheater",
    "Burial armour" and "Corrupted ore". CC BY-NC-SA 3.0.
    Format: docs/activity-format.md
    Orikalkum urn smithing has its own hand-written activity (urn_smithing.lua).
]]

return {
    skill = "Smithing",
    source = "Data: RuneScape Wiki (CC BY-NC-SA 3.0)",

    activities = {
        {
            id = "smithing_knights_sword_activity",
            method = "smithing_knights_sword",
            title = "The Knight's Sword",
            intro = "A short quest whose reward lamp gives 12,725 Smithing XP: level 1 straight to 29.",
            checklist = {
                levels = { { skill = "Mining", level = 10 } },
                items = {
                    { label = "Redberry pie", names = { "Redberry pie" } },
                    { label = "2 iron bars (or in your metal bank)", names = { "Iron bar" }, count = 2 },
                    { label = "Any pickaxe", contains = { "pickaxe" }, toolBelt = true },
                },
                other = { "Food and armour: level 40 ice warriors and 47 ice giants are aggressive in the cave" },
            },
            steps = {
                "Talk to Squire Asrol in the White Knights' Castle courtyard, Falador.",
                "Talk to Reldo in the Varrock Palace library (skip if The Giant Dwarf is done).",
                "Talk to Thurgo south of Port Sarim with the redberry pie, then talk to him again.",
                "Back at the castle, talk to the squire, then go up to Sir Vyvin's room and search his cupboard for the portrait while he is not looking.",
                "Give Thurgo the portrait. Go down the trapdoor east of his hut and mine a blurite ore in the Asgarnian Ice Dungeon.",
                "Give Thurgo the blurite ore and 2 iron bars (they can be withdrawn at the anvil in his hut).",
                "Report back to Squire Asrol and use the reward lamp on Smithing.",
            },
            tips = {
                "20 Mining and a steel pickaxe or better are recommended for the blurite.",
                "Mine extra blurite ore if you plan to do Defender of Varrock or the medium Falador achievements.",
                "If Sir Vyvin keeps seeing you, wait until he looks at a wall or is behind the door.",
            },
            finish = { "From 29, forge steel or mithril items." },
        },
        {
            id = "smithing_smelt_low_activity",
            method = "smithing_smelt_low",
            title = "Smelting bars",
            intro = "Smelt ore from your metal bank into bars at a furnace. Slow XP, but very AFK and usually profitable.",
            checklist = {
                items = {
                    { label = "Smelting gauntlets (recommended)", names = { "Smelting gauntlets" } },
                },
                other = { "Ores in your metal bank (the plugin can't see it)" },
            },
            steps = {
                "Deposit your ores into the metal bank at the furnace, or at any forge or anvil.",
                "Click the furnace and pick the bar you want: bronze, then iron, then steel as your level allows.",
                "Choose how many to make. Ore is taken straight from the metal bank.",
                "Wait until the batch finishes, then click the furnace again.",
                "Without gauntlets the bars go to your backpack: deposit them into the metal bank before the next batch.",
            },
            tips = {
                "Smelting gauntlets (Family Crest quest) send bars to the metal bank and let you smelt up to 60 at once.",
                "Once you reach the level for a metal's extra bar chance, about 10% of bars come out doubled.",
                "The Al Kharid lodestone has a furnace right next to it.",
            },
            finish = { "Use the bars to forge items, or sell them." },
        },
        {
            id = "smithing_forge_steel_mithril_activity",
            method = "smithing_forge_steel_mithril",
            title = "Forging steel or mithril items",
            intro = "Heat an item at the forge, then hammer it at the anvil. Keep the heat up for speed, or queue items and AFK.",
            checklist = {
                items = {
                    { label = "Hammer", names = { "Hammer" }, toolBelt = true },
                    { label = "Smithing autoheater (optional, 35 Smithing and Dungeoneering)", names = { "Smithing autoheater" } },
                },
                other = { "Steel or mithril bars in your metal bank" },
            },
            steps = {
                "Deposit your bars into the metal bank at the forge or anvil.",
                "Click the forge and choose the item. Upgrades (+1, +2) need the previous version of the item in your backpack.",
                "Wait until the heat bar is full.",
                "Click the anvil to hammer. Each swing loses heat, and progress slows as heat drops.",
                "When the heat gets low, click the forge to reheat, then go back to the anvil.",
                "Repeat until the item is done.",
            },
            tips = {
                "Keep heat above 66% for the fastest progress.",
                "To AFK, open the forge menu again, pick an item and wait for full heat. Repeat to queue several items.",
                "A smithing autoheater reheats to 30% using 5 coal each time the heat runs out.",
                "Turn on sound effects: an unheated item makes a distinct sound.",
                "For XP it doesn't matter which piece you make, so pick the one that loses the least money.",
            },
            finish = { "At 40, move on to adamant items or burial armour." },
        },
        {
            id = "smithing_burial_rune_activity",
            method = "smithing_burial_rune",
            title = "Burial armour (rune)",
            intro = "Turn fully upgraded rune armour into burial armour at the Artisans' Workshop. Very fast XP, but the armour is destroyed.",
            checklist = {
                levels = { { skill = "Smithing", level = 50 } },
                items = {
                    { label = "Hammer", names = { "Hammer" }, toolBelt = true },
                    {
                        label = "Rune + 3 armour pieces (5 for a full set)",
                        names = {
                            "Rune full helm + 3", "Rune platebody + 3", "Rune platelegs + 3",
                            "Rune gauntlets + 3", "Rune armoured boots + 3",
                        },
                        count = 5,
                    },
                },
            },
            steps = {
                "Bring a full set of rune + 3 armour: full helm, platebody, platelegs, gauntlets and armoured boots.",
                "Click a burial forge and choose the burial set (or a single burial piece).",
                "Accept the warning that the armour will be destroyed. You can turn this warning off.",
                "Hammer at a burial anvil and reheat at the burial forge as with normal smithing.",
                "When the set is done the armour is removed and you get the XP. Bank and repeat.",
            },
            tips = {
                "A full burial set gives 5% more XP than making each piece alone (up to 10% with Solemn Smith).",
                "Only the highest upgrade of an item can be used, and items must be repaired back to a tradeable state first.",
                "Respect is given as one lump sum at the end; anything over 100% is lost.",
                "A normal forge and anvil can't be used. Thalmund's Forge in Warforge also works.",
            },
            finish = { "At 60, move on to orikalkum burial sets, or use strong smithing urns." },
        },
        {
            id = "smithing_corrupted_ore_activity",
            method = "smithing_corrupted_ore",
            title = "Smelting corrupted ore",
            intro = "Smelt corrupted ore you mined from Seren stones. It makes no bars, only fast and AFK Smithing XP.",
            checklist = {
                levels = { { skill = "Smithing", level = 89 } },
                quests = { "Plague's End" },
                items = {
                    { label = "Corrupted ore", names = { "Corrupted ore" } },
                },
                other = { "Superheat Form needs 91 Prayer and The Light Within (optional)" },
            },
            steps = {
                "Mine corrupted ore from the Seren stones in the Trahaearn district. It stacks in your backpack.",
                "Click a furnace with the ore in your backpack. The Make-X menu opens.",
                "Smelt the whole stack. Each ore gives 160 XP and takes 4 ticks.",
                "After your first 100 ore, claim a 50,000 Smithing XP lamp from Lady Trahaearn.",
            },
            tips = {
                "While the Voice of Seren is on the Trahaearn district, each ore gives 192 XP.",
                "Superheat Form cuts a tick off each ore: up to 2,000 ore an hour.",
                "Superheat Form drains prayer; an Orthen furnace core or grace of the elves helps.",
                "A decorated smithing urn fills after 60 ore (50 during the Voice of Seren).",
                "Corrupted ore cannot be stored in the metal bank.",
            },
        },
    },
}
