--[[
    Farming activities (data only, no code).
    Sources: RuneScape Wiki, "Pay-to-play Farming training" (patch tables and
    patch location lists), "Manure mound", "Tree patch", "Fruit tree patch",
    "Het's Oasis" and "Player-owned farm". Licensed CC BY-NC-SA 3.0.
    Run orders follow the order of the wiki's patch location tables; the wiki
    gives no fixed route. Format: docs/activity-format.md
]]

return {
    skill = "Farming",
    source = "Data: RuneScape Wiki (CC BY-NC-SA 3.0)",

    activities = {
        {
            id = "farming_manure_mound_activity",
            method = "farming_manure_mound",
            title = "Turning manure mounds",
            intro = "Turn a manure mound for 2.5 XP every 2.4 seconds. The fastest way to 15, about 40 minutes, and it needs no items.",
            checklist = {
                other = { "Members only" },
            },
            steps = {
                "Find the manure mound north-east of Granny Potterington's house at Manor Farm, or the one at the Anachronia Dinosaur Farm.",
                "Click the mound to Turn it.",
                "If your character tires out and stops to rest, click the mound again.",
                "Keep going until level 15.",
            },
            tips = {
                "A farming urn in your backpack fills very slowly while you turn the mound.",
                "The steady XP can also give strange rocks and master farmer fragments.",
            },
            finish = { "At 15 you can plant oak saplings: start doing tree runs." },
        },
        {
            id = "farming_tree_runs_low_activity",
            method = "farming_tree_runs_low",
            title = "Tree run",
            intro = "Visit every tree patch, check the health of grown trees for most of the XP, then plant new saplings. Oak takes 2 h 40 min to grow, magic 8 hours.",
            checklist = {
                levels = { { skill = "Farming", level = 15 } },
                items = {
                    { label = "Saplings (one per patch)", contains = { "sapling" }, count = 5 },
                    { label = "Spade", names = { "Spade" }, toolBelt = true },
                    { label = "Rake", names = { "Rake" }, toolBelt = true },
                },
                other = {
                    "Noted payment for each gardener: oak 1 basket of tomatoes, willow 1 basket of apples, maple 1 basket of oranges, magic 25 coconuts",
                    "Some coins: a gardener clears a grown tree for 200 coins",
                    "Prifddinas patch needs Plague's End; Fort Forinthry needs the tier 2 Woodcutters' Grove; Dalia's Tree Nursery needs Visions of Havenhythe",
                },
            },
            steps = {
                "Order: Lumbridge, Varrock Palace, Falador Park, Taverley, Tree Gnome Stronghold, then Prifddinas, Fort Forinthry and Dalia's Tree Nursery if unlocked.",
                "At each patch, Check-health on the grown tree for the big XP drop.",
                "Use Clear on the tree (or pay the gardener 200 coins) to empty the patch.",
                "Rake any weeds, then use a sapling on the patch.",
                "Use the noted payment on the gardener so the tree cannot die.",
                "Teleport to the next patch and repeat.",
            },
            tips = {
                "Saplings: put a seed in a plant pot with soil, water it, and wait a few minutes.",
                "Protected trees do not need compost.",
                "Note your produce on the tool leprechaun to keep the backpack free.",
            },
            finish = {
                "Come back when the trees are grown and repeat the run.",
                "From 27 add fruit tree runs, which grow in 16 hours.",
            },
        },
        {
            id = "farming_fruit_tree_run_activity",
            method = "farming_tree_runs_30",
            title = "Fruit tree run",
            intro = "Visit every fruit tree patch, check the health of grown trees and replant. Apple to palm trees take 16 hours, so one run a day fits well alongside tree runs.",
            checklist = {
                levels = { { skill = "Farming", level = 27 } },
                items = {
                    { label = "Saplings (one per patch)", contains = { "sapling" }, count = 5 },
                    { label = "Spade", names = { "Spade" }, toolBelt = true },
                    { label = "Rake", names = { "Rake" }, toolBelt = true },
                },
                other = {
                    "Noted payment for each gardener: apple 9 sweetcorn, banana 4 baskets of apples, orange 3 baskets of strawberries, curry 5 baskets of bananas",
                    "Lletya needs Mourning's End Part I started; Prifddinas needs Plague's End; Dalia's Tree Nursery needs Visions of Havenhythe",
                },
            },
            steps = {
                "Order: Tree Gnome Stronghold, west of Tree Gnome Village, Catherby, Brimhaven, Lletya, Herblore Habitat, Prifddinas, Dalia's Tree Nursery.",
                "At each patch, Check-health on the grown fruit tree for the XP.",
                "Pick the fruit if you want it, then use Clear or chop and dig up the stump.",
                "Rake weeds, plant a new sapling and pay the gardener with your noted payment.",
                "Teleport to the next patch and repeat.",
            },
            tips = {
                "A fruit tree you leave standing keeps regrowing fruit every 45 minutes.",
                "Pineapple trees are a cheap way to make your own supercompost.",
                "Do your tree run on the way, since many patches are close by.",
            },
            finish = { "Come back in 16 hours. Palm trees from 68 and calquat from 72 give much more XP." },
        },
        {
            id = "farming_hets_oasis_activity",
            method = "farming_hets_oasis_rose",
            title = "Het's Oasis flower bushes",
            intro = "Cultivate the flower bushes at Het's Oasis. No special items or unlocks, and harvests can give golden roses. Rose bushes give about 17,500 XP an hour at 30.",
            checklist = {
                levels = { { skill = "Farming", level = 30 } },
                items = {
                    { label = "Supercompost or ultracompost (optional)", contains = { "supercompost", "ultracompost" } },
                },
                other = { "Members only" },
            },
            steps = {
                "Speak with Dundee in the north-west of the oasis to open the activity.",
                "Go to the highest bush you can use: rose 30, iris 50, hydrangea 70, hollyhock 90.",
                "While it is bare, use compost on it for faster progress.",
                "Click the bush to cultivate it. Click again each time it changes stage.",
                "When nutritious gasses appear, click the bush. When a pesty scarab spawns, shoo it.",
                "At 100% harvest the flowers, then start again.",
            },
            tips = {
                "Better compost also raises the chance of golden roses.",
                "Rapid Growth sets a bush to 100% once a day.",
                "Iris gives 26,000 XP an hour, hydrangea 37,600 and hollyhock 91,000.",
                "Flowers bait whirligigs for Hunter or go into beehives on your farm.",
            },
            finish = { "Use the flowers for Hunter whirligigs, or sell them." },
        },
        {
            id = "farming_pof_activity",
            method = "farming_pof_start",
            title = "Player-owned farm",
            intro = "Raise animals at Manor Farm. Animals grow in real time and give Farming XP as you check each new growth stage, so a few minutes a day adds up.",
            checklist = {
                levels = {
                    { skill = "Farming", level = 17 },
                    { skill = "Construction", level = 20 },
                },
                other = { "Beans for pen deeds (earned at the Farmers' Market)" },
            },
            steps = {
                "Speak to Granny Potterington at Manor Farm and complete the tutorial.",
                "Buy a pen deed from her Farmers' Market option, then build the pen at its hotspot.",
                "Add a breeding pair (a male and a female) of an animal your level allows.",
                "Fill the trough with the right food, up to 1,000 at once. Each animal eats one an hour.",
                "Come back and check animals as they grow for XP; muck out pens for a little extra.",
                "Sell adolescents for the most beans, or grow animals to elder for the most XP and produce.",
            },
            tips = {
                "Woad leaves from Wyson in Falador Park are the cheapest food for many animals.",
                "Animals lose 10% health and happiness an hour without the right food.",
                "Buyers reset on a cycle, so log in on their days to sell.",
            },
            finish = { "Unlock bigger pens and better animals as your level grows." },
        },
    },
}
