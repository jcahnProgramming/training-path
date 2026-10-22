--[[
    Woodcutting activities (data only, no code).
    Sources: RuneScape Wiki, "Pay-to-play Woodcutting training", "Creeping ivy",
    "Choking ivy", "Crystal tree", "Eternal magic tree".
    Licensed CC BY-NC-SA 3.0. Format: docs/activity-format.md
]]

return {
    skill = "Woodcutting",
    source = "Data: RuneScape Wiki (CC BY-NC-SA 3.0)",

    activities = {
        {
            id = "woodcutting_regular_trees_activity",
            method = "woodcutting_regular_trees",
            title = "Chopping regular trees",
            intro = "Chop regular trees from level 1. Train where many trees grow together so you never wait for one to respawn.",
            checklist = {
                items = {
                    { label = "Any hatchet", contains = { "hatchet", "army axe" }, toolBelt = true },
                },
                other = { "Dwarven army axe gives extra XP per normal log (the listed rate assumes it)" },
            },
            steps = {
                "Wield your hatchet or dwarven army axe, or keep a hatchet on your tool belt.",
                "Click a regular tree and keep chopping until it falls.",
                "Move straight to the next standing tree nearby.",
                "When your backpack is full, bank the logs or drop them.",
            },
            tips = {
                "Seers' headband 1 or better gives a chance of two logs from regular trees (no extra XP).",
                "A wood box lets you store logs and stay out longer between bank trips.",
            },
            finish = { "At level 10, move on to oak trees." },
        },
        {
            id = "woodcutting_willow_activity",
            method = "woodcutting_willow",
            title = "Chopping willows at Draynor",
            intro = "Chop the group of willow trees on the Draynor coastline, close to the bank. Up to 27,000 base XP per hour.",
            checklist = {
                levels = { { skill = "Woodcutting", level = 20 } },
                items = {
                    { label = "Any hatchet", contains = { "hatchet", "army axe" }, toolBelt = true },
                    { label = "Wood box (optional)", contains = { "wood box" } },
                },
            },
            steps = {
                "Click one of the willow trees on the coastline and keep chopping.",
                "When a willow falls, switch to another one in the group.",
                "Fill your wood box from the backpack when the backpack is full, if you have one.",
                "Walk back to Draynor bank when everything is full and deposit the logs.",
            },
            tips = {
                "Willow logs can be burned for Firemaking or fletched into willow bows.",
            },
            finish = { "At level 30, try teak trees; at 35, creeping ivy is an AFK option." },
        },
        {
            id = "woodcutting_creeping_ivy_activity",
            method = "woodcutting_creeping_ivy",
            title = "Chopping creeping ivy",
            intro = "AFK training on creeping ivy on the east wall of Isaac's house in Wendlewick. 30k to 75k base XP per hour, no logs and no banking.",
            checklist = {
                levels = { { skill = "Woodcutting", level = 35 } },
                items = {
                    { label = "Any hatchet", contains = { "hatchet", "army axe" }, toolBelt = true },
                },
                other = { "Members only", "Free backpack space for bird's nests" },
            },
            steps = {
                "Click a creeping ivy on the wall and let your character chop.",
                "Each successful chop gives 162.5 XP and no items.",
                "When the ivy turns into a stump, click another ivy on the same wall.",
                "Keep going; there are no logs to bank.",
            },
            tips = {
                "You can still get bird's nests from ivy.",
                "Creeping ivy respawns fully grown, so you can click it again as soon as it is back.",
            },
            finish = { "At 68 Woodcutting, move up to choking ivy for better AFK rates." },
        },
        {
            id = "woodcutting_choking_ivy_activity",
            method = "woodcutting_choking_ivy",
            title = "Chopping choking ivy",
            intro = "AFK training on choking ivy. 86,000 base XP per hour at 68, up to 126,000 at 99 with an Imcando hatchet.",
            checklist = {
                levels = { { skill = "Woodcutting", level = 68 } },
                items = {
                    { label = "Any hatchet", contains = { "hatchet", "army axe" }, toolBelt = true },
                },
                other = {
                    "Members only",
                    "Prifddinas (Crwys) needs Plague's End and 75 Woodcutting",
                },
            },
            steps = {
                "Click a choking ivy on the wall and let your character chop.",
                "Each successful chop gives 332.5 XP; ivy gives no logs.",
                "When the ivy becomes a stump, click the next ivy on the wall.",
                "The stump grows back in about 38 seconds.",
            },
            tips = {
                "In the Crwys district, the Voice of Seren gives +20% XP (399 per chop).",
                "In Crwys the ivy is inside the greenhouse where Coeden is.",
                "A strung rabbit foot gives more bird's nests.",
            },
            finish = { "At 94 Woodcutting, crystal trees give better XP." },
        },
        {
            id = "woodcutting_crystal_tree_activity",
            method = "woodcutting_crystal_tree",
            title = "Chopping crystal trees",
            intro = "Chop the crystal shards around the one active crystal tree. Up to 130,000 base XP per hour at 94 with an Imcando hatchet. No products.",
            checklist = {
                levels = { { skill = "Woodcutting", level = 94 } },
                items = {
                    { label = "Best hatchet", contains = { "hatchet" }, toolBelt = true },
                },
                other = {
                    "Members only",
                    "Optional: Max Guild skill portal to reach the active tree",
                },
            },
            steps = {
                "Find the active tree: it has a square of crystal shards around its base.",
                "If you reach an inactive tree, use 'Look at' on it to learn which way the active one is.",
                "Click the crystal shards around the active tree and keep chopping.",
                "The active tree moves every 2 hours; find the new one or hop worlds.",
            },
            tips = {
                "The respawn time is the same on every world but the active location differs, so world-hopping can save a trip.",
                "You may find crystal geodes. A tree-shaking scrimshaw or strung rabbit foot raises the chance.",
                "Nature's sentinel outfit can teleport to the active tree.",
            },
            finish = { "At 100 Woodcutting, eternal magic trees are the next step." },
        },
        {
            id = "woodcutting_eternal_magic_activity",
            method = "woodcutting_eternal_magic",
            title = "Chopping eternal magic trees",
            intro = "Chop eternal magic trees for eternal magic logs. With boosts, upwards of 375,000 XP per hour.",
            checklist = {
                levels = { { skill = "Woodcutting", level = 100 } },
                items = {
                    { label = "Best hatchet", contains = { "hatchet" }, toolBelt = true },
                    { label = "Wood box (optional)", contains = { "wood box" } },
                },
                other = { "Members only" },
            },
            steps = {
                "Click an eternal magic tree and start chopping.",
                "Watch for a ray of light and falling leaves on one side of the tree.",
                "Move and chop from that side to get Lumberjack's Intuition for 30 seconds.",
                "The tree falls after its timer (the green bar) runs out; move to another tree.",
                "Bank or store the logs when your backpack is full.",
            },
            tips = {
                "Perfect Cuts give 5% extra XP and always give a log.",
                "The Refined perk and cadantine incense sticks add 30 seconds to the tree timer, up to five times.",
                "Each successful cut gives 635 base XP at levels 100 to 102.",
            },
            finish = {
                "At 110, you may get a perfect eternal magic branch. Spare ones can go to Heedi for XP.",
            },
        },
    },
}
