--[[
    Mining activities (data only, no code).
    Sources: RuneScape Wiki pages "Pay-to-play Mining training", "Mining" (stamina,
    rockertunities, ore boxes), "Metal bank", "Corrupted ore", "Seren stone",
    "Alaea crablet", "Uncharted Isles" and "Promethium rock". CC BY-NC-SA 3.0.
    Format: docs/activity-format.md
]]

return {
    skill = "Mining",
    source = "Data: RuneScape Wiki (CC BY-NC-SA 3.0)",

    activities = {
        {
            id = "mining_copper_tin_activity",
            method = "mining_copper_tin",
            title = "Mining copper and tin",
            intro = "Mine copper and tin rocks for your first 10 levels. It takes about 10 minutes and the ore smelts into bronze bars.",
            checklist = {
                items = {
                    { label = "Any pickaxe", contains = { "pickaxe" }, toolBelt = true },
                    { label = "Ore box (optional, holds more ore)", contains = { "ore box" } },
                },
                other = { "Empty backpack space for ore" },
            },
            steps = {
                "Click a copper or tin rock once. Rocks never run out, so you can keep mining the same one.",
                "Watch for a rockertunity: a nearby rock of the same type lights up. Click it for a big burst of progress and XP.",
                "Go back to mining normally until the next rockertunity appears.",
                "When the backpack is full, store ore in your ore box or drop it.",
                "To keep the ore, deposit it into the metal bank at any furnace, forge or anvil.",
            },
            tips = {
                "Put the ore on your action bar and press its key to drop it without stopping mining.",
                "Mine both copper and tin if you want to smelt bronze bars later.",
                "Rockertunities only appear on rocks of the type you are mining.",
            },
            finish = { "At level 10, move on to iron rocks." },
        },
        {
            id = "mining_iron_activity",
            method = "mining_iron",
            title = "Mining iron with stamina",
            intro = "Mine iron rocks from level 10. From level 15 the stamina bar appears, so a little attention keeps you mining at full speed.",
            checklist = {
                levels = { { skill = "Mining", level = 10 } },
                items = {
                    { label = "Any pickaxe", contains = { "pickaxe" }, toolBelt = true },
                    { label = "Iron ore box or better (optional)", contains = { "ore box" } },
                },
            },
            steps = {
                "Click an iron rock to start mining.",
                "From level 15, watch the stamina bar under the progress bar. Each swing uses 10 stamina.",
                "Click the rock again before stamina runs out. Clicking refills it completely.",
                "Click every rockertunity that appears on a nearby iron rock.",
                "When the backpack is full, store the ore in your ore box, or deposit it into the metal bank at a furnace, forge or anvil.",
            },
            tips = {
                "At 0 stamina you only do 20% damage, so fully AFK mining is about 5 times slower.",
                "Any stamina above 0 still gives 90% damage; full stamina gives 100%.",
                "A new rockertunity appears 24 to 36 seconds after you use one.",
            },
            finish = { "At level 20, move on to coal." },
        },
        {
            id = "mining_banite_activity",
            method = "mining_banite",
            title = "Mining banite",
            intro = "Mine banite at the Pirates' Hideout mine, which has a forge and anvil right next to it for depositing ore into your metal bank.",
            checklist = {
                levels = { { skill = "Mining", level = 80 } },
                items = {
                    { label = "Any pickaxe", contains = { "pickaxe" }, toolBelt = true },
                    { label = "Ore box", contains = { "ore box" } },
                },
                other = { "This mine is in the Wilderness (level 54)" },
            },
            steps = {
                "Click a banite rock to start mining.",
                "Click a rock again before your stamina runs out, and click each rockertunity as it appears.",
                "When the backpack and ore box are full, use the nearby forge or anvil.",
                "Open the metal bank there and deposit all: it empties your backpack and ore box together.",
                "Walk back and keep mining.",
            },
            tips = {
                "The metal bank's deposit-all takes ore from both the backpack and the ore box.",
                "Banite is also found in the Arctic (azure) habitat mine and other mines with quest or achievement requirements.",
            },
            finish = { "At 89 Mining with Plague's End done, corrupted ore is the best AFK option." },
        },
        {
            id = "mining_corrupted_ore_activity",
            method = "mining_corrupted_ore",
            title = "Mining corrupted ore",
            intro = "Mine Seren stones in Prifddinas. They use no stamina and the ore stacks, so this is the best AFK Mining.",
            checklist = {
                levels = { { skill = "Mining", level = 89 } },
                quests = { "Plague's End" },
                items = {
                    { label = "Any pickaxe", contains = { "pickaxe" }, toolBelt = true },
                },
            },
            steps = {
                "Click a Seren stone once.",
                "Keep mining: the stone never depletes, stamina does not drain, and the ore stacks in one backpack slot.",
                "Click the stone again only if you stop mining.",
                "When done, bank the ore or smelt it at a furnace for Smithing XP (needs 89 Smithing).",
            },
            tips = {
                "When the Voice of Seren is on the Trahaearn Clan, Seren stones give 20% more ore.",
                "Seren stones have no rockertunities.",
                "Juju mining potions and signs of the porter do not work here.",
                "Corrupted ore cannot go in the metal bank or be traded.",
            },
            finish = { "Smelt the ore yourself for fast Smithing XP (see the Smithing corrupted ore activity)." },
        },
        {
            id = "mining_alaea_crablets_activity",
            method = "mining_alaea_crablets",
            title = "Mining alaea crablets",
            intro = "Mine the salt deposits on alaea crablets on your Uncharted Isle. Each colony gives about 90,000 XP a day.",
            checklist = {
                levels = { { skill = "Mining", level = 97 } },
                quests = { "Impressing the Locals" },
                items = {
                    { label = "Any pickaxe", contains = { "pickaxe" }, toolBelt = true },
                },
                other = {
                    "Supplies for the voyage (from Rosie on Waiko)",
                    "Flag Fall done and an island with crablets claimed (recommended)",
                },
            },
            steps = {
                "Claim your 5 free daily supplies from the crate next to Rosie, and buy more with chimes if needed.",
                "Talk to Quartermaster Gully to sail. A claimed island costs 3 supplies.",
                "Find the colony: crablets are yellow dots on the minimap near a pile of dead fish.",
                "Click a crablet to mine it. It relaxes and stops moving until you have mined 40 alaea sea salt from it.",
                "Move to the next crablet when it is depleted. A colony has 5 crablets.",
                "Back on Waiko, sell the salt to Salty Goods for 5 chimes each to pay for more supplies.",
            },
            tips = {
                "If you find a better island, keep a claim island flag in the bank to claim it.",
                "Juju mining potions and Crystallise do not work on crablets.",
                "If you log out or hop worlds, relaxed crablets start moving again but keep their progress.",
                "Arc contracts from Sojobo can add more XP.",
            },
            finish = { "Each colony takes about 35 minutes a day. Use Seren stones or primal ores for the rest of your session." },
            repeats = "daily",
            repeatNote = "Colonies reset at 00:00 UTC.",
        },
        {
            id = "mining_primal_ores_activity",
            method = "mining_primal_ores",
            title = "Mining primal ores",
            intro = "Mine primal ores around Daemonheim from level 100. Promethium rocks on Daemonheim Peninsula Island have a deposit box close by.",
            checklist = {
                levels = { { skill = "Mining", level = 100 } },
                items = {
                    { label = "Any pickaxe", contains = { "pickaxe" }, toolBelt = true },
                    { label = "Primal ore box (optional)", contains = { "primal ore box" } },
                },
                other = { "Medium Daemonheim achievements, for the island's deposit box" },
            },
            steps = {
                "Click a primal rock (such as promethium) to start mining.",
                "Click again before stamina runs out, and click rockertunities as they appear.",
                "Store ore in a primal ore box if you have one.",
                "When full, use the bank deposit box on the island, then keep mining.",
            },
            tips = {
                "From level 103 you get a chance at double ore, so the wiki suggests starting then.",
                "From 105 Mining, rates reach 250,000 XP an hour or more with good items and boosts.",
                "Primal ores can be stored in the metal bank.",
            },
        },
    },
}
