--[[
    Hunter activities (data only, no code).
    Sources: RuneScape Wiki, "Pay-to-play Hunter training", "Crimson swift",
    "Bird snare", "Tropical wagtail", "Feldip Hunter area", "Net trapping",
    "Ourania Hunter area", "Carnivorous chinchompa", "Box trap",
    "Scarab catching", "Het's Oasis", "Hasty whirligig" and
    "2026 early-game rebalance".
    Licensed CC BY-NC-SA 3.0. Format: docs/activity-format.md
]]

return {
    skill = "Hunter",
    source = "Data: RuneScape Wiki (CC BY-NC-SA 3.0)",

    activities = {
        {
            id = "hunter_crimson_swift_activity",
            method = "hunter_crimson_swift",
            title = "Snaring crimson swifts",
            intro = "Catch crimson swifts with bird snares for 22 XP each, plus bones, raw bird meat and red feathers.",
            checklist = {
                items = {
                    { label = "Bird snare", names = { "Bird snare" } },
                },
            },
            steps = {
                "Buy bird snares from Ayleth Beaststalker if you have none.",
                "Watch where the swifts fly and lay a snare on open ground near their path.",
                "Step off the tiles next to the snare: birds will not land where you stand.",
                "When a bird is caught, check the snare for the loot and XP.",
                "If the snare is sprung but empty, dismantle and reset it.",
            },
            tips = {
                "Put the bird snare on your action bar to lay it quickly.",
                "Do not leave a caught bird too long: the snare falls over and the loot is lost.",
                "You need 4 free backpack spaces to take the loot. Drop or bury the bones.",
            },
            finish = { "At 11 move to cerulean twitches, then tropical wagtails at 19." },
        },
        {
            id = "hunter_tropical_wagtail_activity",
            method = "hunter_tropical_wagtail",
            title = "Snaring tropical wagtails",
            intro = "Catch tropical wagtails with bird snares for 100 XP each, plus bones, raw bird meat and stripy feathers. You can lay 3 snares from level 30.",
            checklist = {
                levels = { { skill = "Hunter", level = 19 } },
                items = {
                    { label = "Bird snares", names = { "Bird snare" }, count = 2 },
                },
            },
            steps = {
                "Go to the spots just north of the Monastery of Ascension.",
                "Lay your snares close to the wagtails' spawn points, in open tiles they can reach from several sides.",
                "Move off the tiles next to the snares so birds can land.",
                "Check caught snares quickly and reset sprung ones.",
                "Drop or bury the bones and raw bird meat to keep space free.",
            },
            tips = {
                "Jungle camo top and legs raise your success rate here.",
                "Each catch needs free backpack spaces for bones, meat and feathers.",
            },
            finish = { "At 30 you can lay a third snare, or switch to gliding whirligigs at Het's Oasis." },
        },
        {
            id = "hunter_red_salamander_activity",
            method = "hunter_red_salamander",
            title = "Net trapping red salamanders",
            intro = "Set net traps on young trees in the Ourania Hunter area. About 55,000 to 72,000 XP an hour with 3 traps, 65,000 to 80,000 with 4 at level 60.",
            checklist = {
                levels = { { skill = "Hunter", level = 59 } },
                items = {
                    { label = "Small fishing nets (one per trap, not the tool belt)", names = { "Small fishing net" }, count = 3 },
                    { label = "Rope (one per trap)", names = { "Rope" }, count = 3 },
                },
            },
            steps = {
                "Use the spot south of the altar, or the one east of the path that leads to the altar.",
                "Click a young tree with a net and rope in your backpack to set a trap.",
                "Set your other traps on nearby young trees.",
                "When the net has a salamander, Check it for the XP.",
                "If a trap fails, pick up the net and rope from the ground and set it again.",
                "Release the salamanders from your backpack (Release all) when it fills up.",
            },
            tips = {
                "The tool belt net does not count: carry a real net for every trap.",
                "Tarromin tar as bait and a lit torch on the trap raise the catch chance slightly.",
                "The Ourania Cave bank costs 20 runes of any type per use.",
            },
            finish = { "At 63 carnivorous chinchompas, or black salamanders in the Wilderness from 67." },
        },
        {
            id = "hunter_carnivorous_chinchompa_activity",
            method = "hunter_carnivorous_chinchompa",
            title = "Box trapping carnivorous chinchompas",
            intro = "Catch carnivorous chinchompas with box traps for 230.5 XP each. They become stackable red chinchompas, a Ranged weapon you can sell.",
            checklist = {
                levels = { { skill = "Hunter", level = 63 } },
                items = {
                    { label = "Box traps", names = { "Box trap" }, count = 4 },
                },
                other = { "Set NPC attack option to Right Click or Hidden, or wield a ranged/magic weapon with no ammo" },
            },
            steps = {
                "Lay a box trap near the chinchompas, then lay the rest close together.",
                "When a trap becomes a shaking box, check it for the XP and the chinchompa.",
                "Lay fallen or empty traps again from where they stand (right-click Lay).",
                "Keep cycling between your traps.",
            },
            tips = {
                "Do not click the chinchompas: you attack them and they explode for 17 damage.",
                "You can lay 4 box traps at 60 and 5 at 80.",
                "Bring a few spare box traps in case one is lost.",
                "Spicy minced meat bait or smoking the traps raises the success rate a little.",
                "A trap can catch 1 to 6 chinchompas at once; always at least 2 from 77 Agility.",
            },
            finish = { "At 70 hasty whirligigs are faster; at 75 Hunter and 55 Slayer try Big Game Hunter." },
        },
        {
            id = "hunter_hasty_whirligig_activity",
            method = "hunter_hasty_whirligig",
            title = "Catching hasty whirligigs",
            intro = "Send the crocodiles at Het's Oasis after hasty whirligigs for 300 XP each. Very click-intensive.",
            checklist = {
                levels = { { skill = "Hunter", level = 70 } },
                items = {
                    { label = "Hydrangeas (bait)", names = { "Hydrangeas" }, count = 32 },
                },
                other = { "Flower baskets built at the pond (5 teak planks and 10 steel nails each)" },
            },
            steps = {
                "On your first visit, talk to Chito or Frito to learn scarab catching.",
                "Build both flower baskets at a pond if you have not yet.",
                "Put hydrangeas in the baskets: each 8 flowers turns one plain whirligig into a hasty one.",
                "Click a hasty whirligig to send a crocodile after it.",
                "While the crocodile is out, keep clicking more whirligigs to stack catches (up to 3). Stacked catches give 25% of the XP.",
                "Pick up the shells the crocodile brings back, and refill the baskets as flowers run out.",
            },
            tips = {
                "Each basket holds 32 flowers. You use about 100 to 200 an hour.",
                "Pieces of Het repair Het's statue for +10% whirligig XP.",
                "Dundee's Crocodile Upgrades: auto-loot at 2,500 catches, stacks of 5 at 3,000, and +5% XP.",
                "Grind 15 shells into a powder of pulverising.",
            },
            finish = { "At 90 switch to speedy whirligigs with hollyhocks." },
        },
    },
}
