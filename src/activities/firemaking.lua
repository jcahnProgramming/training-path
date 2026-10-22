--[[
    Firemaking activities (data only, no code).
    Sources: RuneScape Wiki, "Pay-to-play Firemaking training", "Bonfire",
    "Curly root", "Jadinko Lair", "Sharp shell shards".
    Licensed CC BY-NC-SA 3.0. Format: docs/activity-format.md
]]

return {
    skill = "Firemaking",
    source = "Data: RuneScape Wiki (CC BY-NC-SA 3.0)",

    activities = {
        {
            id = "firemaking_logs_activity",
            method = "firemaking_logs",
            title = "Bonfire with normal logs",
            intro = "Light a fire near a bank and keep adding logs to it as a bonfire. Semi-AFK and no running back and forth.",
            checklist = {
                items = {
                    { label = "Logs", names = { "Logs" }, count = 28 },
                    { label = "Tinderbox", contains = { "tinderbox" }, toolBelt = true },
                },
                other = { "A tinderbox is always on your tool belt" },
            },
            steps = {
                "Stand near a bank and light one log with your tinderbox (or use an existing fire or portable brazier).",
                "Use a log on the fire, or click a log and choose 'Add to bonfire'.",
                "Your character keeps adding logs until the backpack is empty.",
                "Bank, withdraw another backpack of logs and add them to the same fire.",
                "Light a new fire if the bonfire burns out.",
            },
            tips = {
                "Each extra player at your bonfire adds XP, up to five players.",
                "Every log has a 1 in 100 chance to release a fire spirit. Click it quickly for a reward, it lasts one minute.",
                "After 5 logs in a row you get a temporary life point boost.",
            },
            finish = { "At 15, switch to oak logs; at 30, willow logs." },
        },
        {
            id = "firemaking_maple_activity",
            method = "firemaking_maple",
            title = "Maple logs: bonfire or line",
            intro = "Burn maple logs on a bonfire (semi-AFK) or light them in a line (faster but more clicks).",
            checklist = {
                levels = { { skill = "Firemaking", level = 45 } },
                items = {
                    { label = "Maple logs", names = { "Maple logs" }, count = 28 },
                    { label = "Tinderbox", contains = { "tinderbox" }, toolBelt = true },
                },
            },
            steps = {
                "Bonfire: add your maple logs to a fire or portable brazier near the bank.",
                "A bonfire burns one log every 6 game ticks without you clicking again.",
                "Line: light the logs one after another on the ground instead; each takes 4 ticks.",
                "Bank and repeat with a fresh backpack of maple logs.",
            },
            tips = {
                "Portable brazier: +10% base XP, counts as a 5-player bonfire, and can save logs.",
                "World 84 at Lumbridge Market or Fort Forinthry usually has portable braziers.",
                "Line fires give more ashes but no fire spirits.",
            },
            finish = { "At 50, mahogany or eucalyptus (58) logs give more XP." },
        },
        {
            id = "firemaking_curly_roots_activity",
            method = "firemaking_curly_roots",
            title = "Curly roots in the Jadinko Lair",
            intro = "Chop curly jade roots and burn the roots at the lair's firepits. Free, gives Woodcutting XP too, about 250k Firemaking XP per hour.",
            checklist = {
                levels = {
                    { skill = "Firemaking", level = 83 },
                    { skill = "Woodcutting", level = 83 },
                },
                items = {
                    { label = "Any hatchet", contains = { "hatchet", "inferno adze" }, toolBelt = true },
                    { label = "Ring of fire (optional)", names = { "Ring of fire" } },
                    { label = "Flame gloves (optional)", names = { "Flame gloves" } },
                },
                other = {
                    "Access to the Kharazi Jungle",
                    "Talk to Dotmatrix at the entrance the first time",
                },
            },
            steps = {
                "Find a curly jade root hanging from the ceiling (not a straight one).",
                "Chop it, then collect the roots: four curly roots per vine.",
                "Fill your backpack with curly roots.",
                "Go to a dry patch on the south side of a jadinko area and put a root in it.",
                "Light the firepit, then click it to keep adding roots until you run out.",
                "Go back to the roots and repeat.",
            },
            tips = {
                "Each root burned gives about 378.5 Firemaking XP and 2 Jadinko Favour.",
                "The jadinkos are not aggressive, but left-click can attack them. Turn off left-click attack.",
                "Jade roots are not instanced; a world where nobody else is chopping is faster.",
                "With Superheat Form (91 Prayer) roots burn instantly, but you get no Jadinko Favour.",
            },
            finish = { "Spend Jadinko Favour at the offering stone in the Jadinko Queen's chamber." },
        },
        {
            id = "firemaking_sharp_shell_shards_activity",
            method = "firemaking_sharp_shell_shards",
            title = "Igniting sharp shell shards",
            intro = "Ignite sharp shell shards for 341.9 base XP every five ticks. About 410,000 base XP per hour and up to 3 minutes AFK.",
            checklist = {
                levels = { { skill = "Firemaking", level = 87 } },
                items = {
                    { label = "Sharp shell shards", contains = { "sharp shell shard" }, count = 60 },
                },
                other = { "Extinction is not needed to ignite shards" },
            },
            steps = {
                "Buy sharp shell shards, or collect them from Seggregation in Prehistoric Potterington's.",
                "Right-click the shards and choose Ignite.",
                "Up to 60 shards are ignited in a row; wait until it stops.",
                "Ignite again when it stops.",
            },
            tips = {
                "A portable fletcher and tier 3 Ranger's Workroom boost this Firemaking XP.",
            },
        },
        {
            id = "firemaking_elder_activity",
            method = "firemaking_elder",
            title = "Bonfire with elder logs",
            intro = "Burn elder logs on a 5-player bonfire or portable brazier for 444,600 XP per hour, or 521k in a line. Fast but expensive.",
            checklist = {
                levels = { { skill = "Firemaking", level = 90 } },
                items = {
                    { label = "Elder logs", names = { "Elder logs" }, count = 28 },
                    { label = "Ring of fire", names = { "Ring of fire" } },
                    { label = "Flame gloves", names = { "Flame gloves" } },
                    { label = "Tinderbox", contains = { "tinderbox" }, toolBelt = true },
                },
            },
            steps = {
                "Find a bonfire with other players or a portable brazier next to a bank.",
                "Use your elder logs on it; your character keeps adding them.",
                "Bank and withdraw another backpack of elder logs.",
                "Repeat. Click any fire spirits that appear.",
            },
            tips = {
                "Fired up set (ring of fire and flame gloves): +5% XP for both pieces.",
                "A pitch can speeds up adding logs from six to five ticks.",
                "The Prifddinas bonfires (Tower of Voices, Max Guild) can save logs.",
                "Magic logs are a much cheaper alternative.",
            },
            finish = { "At 100, eternal magic logs give the best log XP." },
        },
    },
}
