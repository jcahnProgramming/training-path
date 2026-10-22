--[[
    Fishing activities (data only, no code).
    Sources: RuneScape Wiki pages "Pay-to-play Fishing training", "Raw crayfish",
    "Fly fishing rod", "Wendlewick fish farm", "Lobster pool", "Ghostly sole spot"
    and "Fishing Frenzy". CC BY-NC-SA 3.0.
    Format: docs/activity-format.md
]]

return {
    skill = "Fishing",
    source = "Data: RuneScape Wiki (CC BY-NC-SA 3.0)",

    activities = {
        {
            id = "fishing_crayfish_activity",
            method = "fishing_crayfish",
            title = "Catching crayfish",
            intro = "Catch crayfish with a crayfish cage. No bait is needed, and level 20 takes about 23 minutes.",
            checklist = {
                items = {
                    { label = "Crayfish cage", names = { "Crayfish cage" }, toolBelt = true },
                },
                other = { "Empty backpack space for the catch" },
            },
            steps = {
                "Click a Cage fishing spot to start fishing.",
                "Keep fishing until your backpack is full. Each crayfish gives 10 XP.",
                "Bank the crayfish, cook them, or drop them.",
                "Click the spot again and repeat.",
            },
            tips = {
                "Cook the crayfish (level 1 Cooking) for some Cooking XP too.",
            },
            finish = { "At 20, get a fly fishing rod and feathers and start fly fishing." },
        },
        {
            id = "fishing_fly_fishing_activity",
            method = "fishing_fly_fishing",
            title = "Fly fishing trout and salmon",
            intro = "Fly fish with feathers for trout, and salmon from level 30. Good XP from 20 to 70.",
            checklist = {
                levels = { { skill = "Fishing", level = 20 } },
                items = {
                    { label = "Fly fishing rod", names = { "Fly fishing rod" }, toolBelt = true },
                    { label = "Feathers", names = { "Feather" }, count = 100 },
                },
            },
            steps = {
                "Right-click a fishing spot and choose Lure (not Bait).",
                "Keep fishing. Each fish uses one feather.",
                "From level 30 you catch a mix of trout and salmon.",
                "When the backpack is full, bank or drop the fish and lure again.",
            },
            tips = {
                "Fishing shops sell up to 1,000 feathers a day for 6 coins each, and feather packs of 2,000.",
                "From 58, barbarian fishing gives similar XP plus some Strength and Agility XP (needs 30 Strength and Agility).",
                "With strong fishing urns at 70 Fishing you can get up to 70,000 XP an hour.",
            },
            finish = { "At 45 with 25 Farming, try the Wendlewick fish farm. At 66, ghostly sole is the best AFK option." },
        },
        {
            id = "fishing_wendlewick_farm_activity",
            method = "fishing_wendlewick_farm",
            title = "Running the Wendlewick fish farm",
            intro = "Feed, grow and harvest fish in up to four pools. Busy, but faster XP than normal fishing spots.",
            checklist = {
                levels = {
                    { skill = "Fishing", level = 45 },
                    { skill = "Farming", level = 25 },
                },
                items = {
                    { label = "Lobster pot (for the lobster pool)", names = { "Lobster pot" }, toolBelt = true },
                    { label = "10 raw lobsters to populate the pool", names = { "Raw lobster" }, count = 10 },
                },
                other = {
                    "Trader Woes achievement (talk to Nathan the Banker in Wendlewick)",
                    "Lower-tier raw fish for the food hatches (raw tuna works for every pool)",
                },
            },
            steps = {
                "Populate each repaired pool with its fish: 10 lobsters, 10 swordfish, 8 sharks or 6 giant crayfish.",
                "Fill each pool's food hatch with raw fish of a lower tier. Maya can unnote raw tuna for you.",
                "Take clams from the crate o' clams on the west side of the farm.",
                "Operate the food dispenser controls in the middle to start all fed pools.",
                "Throw a clam at every algae bloom as it appears, or the fish die off.",
                "When a pool's timer finishes, fish from it until it is empty, still clearing algae.",
                "Clean the empty pool with a clam, put 10 of the catch back in to repopulate, and start again.",
            },
            tips = {
                "More active pools give the Pool Synergy buff, so pools fill faster.",
                "After 250 of a pool's fish, Maya notes them for free, so you rarely need to bank.",
                "Surge, Escape and Dive save time running between algae.",
                "The deposit box by the fishing shop has a Deposit all fish option.",
                "Shrimp and anchovy spots east of the farm give free feed.",
            },
            finish = { "Repair more pools as you level: swordfish at 55 (Construction 50), shark at 79 (70), giant crayfish at 84 (80)." },
        },
        {
            id = "fishing_ghostly_sole_activity",
            method = "fishing_ghostly_sole",
            title = "Fishing ghostly sole",
            intro = "Bait-fish the ghostly sole spot at the Reflection Pool. It never moves or runs out, so this is the longest AFK Fishing.",
            checklist = {
                levels = { { skill = "Fishing", level = 66 } },
                quests = { "Necromancy!" },
                items = {
                    { label = "Fishing rod", names = { "Fishing rod" }, toolBelt = true },
                    { label = "Fishing bait", names = { "Fishing bait" }, count = 100 },
                },
            },
            steps = {
                "Click the ghostly sole spot (Bait) to start fishing.",
                "Keep fishing until the backpack is full.",
                "Bank at the City of Um bank to the west, or drop the fish.",
                "Come back and click the spot again.",
            },
            tips = {
                "Signs of the porter bank the sole for you, and a shark outfit can consume it, for even longer AFK.",
                "Put the fish on your action bar and hold its key to drop it without stopping fishing.",
                "The passing bracelet's Reflection Pool teleport lands a few steps from the spot.",
                "Cook the sole at 66 Cooking for Cooking XP.",
            },
        },
        {
            id = "fishing_frenzy_activity",
            method = "fishing_frenzy",
            title = "Fishing Frenzy",
            intro = "Fling fish at fast-moving spots in the Deep Sea Fishing hub. No fish, just very fast XP with a growing streak bonus.",
            checklist = {
                levels = { { skill = "Fishing", level = 94 } },
                items = {
                    { label = "Fishing rod", names = { "Fishing rod" }, toolBelt = true },
                },
            },
            steps = {
                "Go to the fishing spots in the north-west part of the hub.",
                "Click a spot (Fling). It moves after giving XP 1 to 3 times.",
                "Click the new spot straight away to build your streak.",
                "Keep clicking: every 10 streak gives +1% XP, up to +20% at 200.",
            },
            tips = {
                "Stay active: 6 seconds idle halves your streak, and leaving the hub or logging out loses it.",
                "Larger frenzy fish spots don't move. Calm fish spots give a quick burst of XP but no streak.",
                "Don't take part in the area's random events: they cost you your streak.",
                "Use found items: barrel of bait, broken fishing rod, tangled fishbowl and fishing notes.",
            },
        },
    },
}
