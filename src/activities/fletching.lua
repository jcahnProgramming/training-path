--[[
    Fletching activities (data only, no code).
    Sources: RuneScape Wiki, "Pay-to-play Fletching training", "Headless arrow",
    "Willow longbow", "Broad arrows", "Dream of Iaia",
    "'Accidental' Fletching and Firemaking" (Zygomite Carestyling), "Rune dart".
    Licensed CC BY-NC-SA 3.0. Format: docs/activity-format.md
]]

return {
    skill = "Fletching",
    source = "Data: RuneScape Wiki (CC BY-NC-SA 3.0)",

    activities = {
        {
            id = "fletching_headless_shafts_activity",
            method = "fletching_headless_shafts",
            title = "Making headless shafts",
            intro = "Attach feathers to shafts to make headless shafts. 15 XP per set of 15, fast and usually profitable at low levels.",
            checklist = {
                items = {
                    { label = "Shafts", names = { "Arrow shaft", "Shaft" } },
                    { label = "Feathers", names = { "Feather" } },
                },
            },
            steps = {
                "Buy shafts and feathers, or fletch shafts from logs with a knife.",
                "Use the feathers on the shafts.",
                "Choose how many to make in the make interface (it caps at 60 per action).",
                "Repeat until you run out; both items stack, so no banking is needed.",
            },
            tips = {
                "Each action attaches 15 feathers to 15 shafts.",
                "Keep the headless shafts to make arrows later, or sell them.",
            },
            finish = { "At 25 to 40, move on to stringing willow bows." },
        },
        {
            id = "fletching_willow_longbow_string_activity",
            method = "fletching_willow_longbow_string",
            title = "Stringing willow longbows",
            intro = "String unstrung willow longbows with bowstrings. Stringing a backpack of 14 bows takes about 15 seconds and is profitable.",
            checklist = {
                levels = { { skill = "Fletching", level = 25 } },
                items = {
                    { label = "Willow longbow (unstrung)", names = { "Willow longbow (unstrung)" }, count = 14 },
                    { label = "Bowstrings", names = { "Bowstring" }, count = 14 },
                },
            },
            steps = {
                "Withdraw 14 unstrung willow longbows and 14 bowstrings.",
                "Use a bowstring on a bow and confirm in the make interface.",
                "Wait about 15 seconds while the whole backpack is strung.",
                "Bank the finished bows and repeat.",
            },
            tips = {
                "Fletching the unstrung bow from logs gives the same XP as stringing it.",
                "A portable fletcher can string two bows at once (10% chance).",
                "Bank presets make the bank trips much faster.",
            },
            finish = { "Move up to maple shortbows at 50 and maple longbows at 55." },
        },
        {
            id = "fletching_broad_arrows_activity",
            method = "fletching_broad_arrows",
            title = "Making broad arrows",
            intro = "Attach broad arrowheads to headless shafts. 225 XP per set of 15 and up to 675,000 XP per hour, but costly and untradeable.",
            checklist = {
                levels = { { skill = "Fletching", level = 52 } },
                quests = { "Smoking Kills" },
                items = {
                    { label = "Broad arrowheads", names = { "Broad arrowheads" } },
                    { label = "Headless shafts", names = { "Headless arrow", "Headless shaft" } },
                },
                other = { "Broad arrow fletching unlocked (300 Slayer points)" },
            },
            steps = {
                "Buy broad arrowheads (Slayer masters or the GE) and headless shafts.",
                "Use the arrowheads on the headless shafts.",
                "Arrows are made in sets of 15 (225 XP per set).",
                "Repeat until you run out of either item.",
            },
            tips = {
                "Broad arrows are untradeable: keep them or disassemble them with Invention.",
                "Making one is needed for a hard Desert achievement.",
            },
            finish = { "At 75, rune arrows; at 81, rune darts are faster." },
        },
        {
            id = "fletching_dream_of_iaia_activity",
            method = "fletching_dream_of_iaia",
            title = "Fletcher's hut, Dream of Iaia",
            intro = "AFK Fletching at the Fletcher's hut in the Dream of Iaia. 350,000 base XP per hour from XP stored with base camp wood.",
            checklist = {
                levels = { { skill = "Fletching", level = 75 } },
                quests = { "Extinction" },
                other = {
                    "Talked to Hannibus at the Effigy Incubator after Extinction",
                    "Station built: 50,000 of each base camp resource",
                    "Free backpack space for rewards",
                },
            },
            steps = {
                "Enter the dream through the hibernation pod in the Effigy Incubator laboratory.",
                "Build the Fletcher's hut if needed (75 Fletching, cannot be boosted).",
                "Click the Fletcher's hut to start training; it uses the stored XP.",
                "You get up to 175 XP every three ticks until the stored XP runs out.",
            },
            tips = {
                "A station stores up to 350,000 XP.",
                "Recharge it with wood: right-click the Ilujankan worker; two wood per XP.",
                "Urns fill while training here.",
                "With a full backpack you get no rewards.",
            },
            finish = { "Assign base camp workers to wood with Giles to recharge faster." },
        },
        {
            id = "fletching_zygomite_carestyling_activity",
            method = "fletching_zygomite_carestyling",
            title = "Zygomite Carestyling",
            intro = "Style scruffy zygomites' cuticles for Fletching XP and tempered fungal shafts. Semi-AFK and profitable.",
            checklist = {
                levels = { { skill = "Fletching", level = 82 } },
                quests = { "Extinction" },
                items = {
                    { label = "Crystal knife (optional)", contains = { "crystal knife" } },
                },
            },
            steps = {
                "Talk to Ben to start the activity.",
                "Right-click a zygomite and use Configure to choose 'cut' for Fletching XP only.",
                "Style the scruffy zygomites as they sit in the barber chairs.",
                "Each action gives 196.1 Fletching XP and 12 to 15 tempered fungal shafts.",
            },
            tips = {
                "A crystal knife gives a 5% chance of double shafts and XP and does not degrade here.",
                "You may find unchecked zygomites while carestyling.",
                "'Cut and dry' splits XP between Fletching and Firemaking.",
            },
            finish = { "Sell the tempered fungal shafts or keep them for dinarrows (95 Fletching)." },
        },
        {
            id = "fletching_rune_darts_activity",
            method = "fletching_rune_darts",
            title = "Making rune darts",
            intro = "Add feathers to rune dart tips. 188 XP per set of 10 and about 1,034,000 base XP per hour. Fast but expensive.",
            checklist = {
                levels = { { skill = "Fletching", level = 81 } },
                items = {
                    { label = "Rune dart tips", names = { "Rune dart tip" } },
                    { label = "Feathers", names = { "Feather" } },
                },
            },
            steps = {
                "Buy rune dart tips and feathers.",
                "Use the feathers on the dart tips.",
                "Darts are made in sets of 10 (18.8 XP each).",
                "Both items stack, so you can keep going without banking.",
            },
            tips = {
                "General stores buy rune darts for 105 coins each, which can beat the GE price.",
                "Darts are made twice as fast as arrows and bolts.",
            },
            finish = { "At 95, dragon darts are even faster but cost far more." },
        },
    },
}
