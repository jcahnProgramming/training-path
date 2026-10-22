--[[
    Cooking activities (data only, no code).
    Sources: RuneScape Wiki pages "Pay-to-play Cooking training", "Portable range",
    "Kitchen (Fort Forinthry)", "2026 microtransaction items changes",
    "Jug of wine", "Sweetcorn" and "Cooking gauntlets". CC BY-NC-SA 3.0.
    Format: docs/activity-format.md
]]

return {
    skill = "Cooking",
    source = "Data: RuneScape Wiki (CC BY-NC-SA 3.0)",

    activities = {
        {
            id = "cooking_shrimp_anchovy_chicken_activity",
            method = "cooking_shrimp_anchovy_chicken",
            title = "Cooking shrimps, anchovies or chicken",
            intro = "Cook about 125 cheap raw shrimps, anchovies or chicken to reach level 15. Expect to burn around 40%.",
            checklist = {
                items = {
                    { label = "Raw shrimps, anchovies or chicken", names = { "Raw shrimps", "Raw anchovies", "Raw chicken" }, count = 28 },
                    { label = "Dwarven army axe (optional, +3 XP each)", names = { "Dwarven army axe" } },
                },
            },
            steps = {
                "Withdraw a backpack of raw food.",
                "Use the raw food on a range or bonfire and cook the whole backpack.",
                "Bank the cooked (and burnt) food and withdraw more.",
                "Repeat until level 15.",
            },
            tips = {
                "Burnt food gives no XP, so buy a few extra.",
                "You stop burning shrimps at 33, anchovies and chicken at 34.",
                "Bonfires give 10% more XP, except in Prifddinas, Yeti Town and Menaphos.",
            },
            finish = { "At 15, cook trout; at 28, sweetcorn." },
        },
        {
            id = "cooking_sweetcorn_activity",
            method = "cooking_sweetcorn",
            title = "Cooking sweetcorn",
            intro = "Cook about 1,000 sweetcorn from 28 to 52 for 104 XP each, on a range right next to a bank.",
            checklist = {
                levels = { { skill = "Cooking", level = 28 } },
                items = {
                    { label = "Sweetcorn", names = { "Sweetcorn" }, count = 28 },
                    { label = "Dwarven army axe (optional, +3 XP each)", names = { "Dwarven army axe" } },
                },
            },
            steps = {
                "Use the range in the Fort Forinthry kitchen, next to its bank chest, or another range near a bank.",
                "Withdraw a backpack of sweetcorn.",
                "Use the sweetcorn on the range and cook the whole backpack.",
                "Bank and repeat.",
            },
            tips = {
                "Each sweetcorn gives 104 XP. You stop burning it at 53.",
                "The kitchen gives 3% fewer burns at tier 2 and +5% base XP at tier 3 (85 Construction).",
                "Portable ranges (+21% XP) are removed from the game on 23 Nov 2026.",
            },
            finish = { "At 52, move on to desert sole." },
        },
        {
            id = "cooking_wine_activity",
            method = "cooking_wine",
            title = "Making jugs of wine",
            intro = "Use grapes on jugs of water. It is very fast XP (upwards of 700,000 an hour) but loses money on every jug.",
            checklist = {
                levels = { { skill = "Cooking", level = 35 } },
                items = {
                    { label = "14 grapes", names = { "Grapes" }, count = 14 },
                    { label = "14 jugs of water", names = { "Jug of water" }, count = 14 },
                },
            },
            steps = {
                "Withdraw 14 grapes and 14 jugs of water.",
                "Use the grapes on the jugs of water to make 14 unfermented wines.",
                "Bank them straight away and withdraw the next 14 and 14. The wine ferments in the bank.",
                "Repeat. Each jug that ferments into wine gives 200 XP.",
            },
            tips = {
                "A bank preset for 14 grapes and 14 jugs makes this much faster.",
                "Below 68 Cooking some jugs turn into bad wine, which gives no fermenting XP.",
                "Cooking urns do not fill from wine.",
            },
        },
        {
            id = "cooking_desert_sole_activity",
            method = "cooking_desert_sole",
            title = "Cooking desert sole",
            intro = "Cook desert sole from 52 for 142.5 XP each, about 200k base XP an hour.",
            checklist = {
                levels = { { skill = "Cooking", level = 52 } },
                items = {
                    { label = "Raw desert sole", names = { "Raw desert sole" }, count = 28 },
                    { label = "Cooking gauntlets (fewer burns)", names = { "Cooking gauntlets" } },
                },
                other = { "Cooking gauntlets come from the Family Crest quest" },
            },
            steps = {
                "Use the Fort Forinthry kitchen range (next to its bank chest), or another range near a bank.",
                "Withdraw a backpack of raw desert sole.",
                "Use the sole on the range and cook the whole backpack.",
                "Bank and repeat.",
            },
            tips = {
                "With cooking gauntlets you stop burning desert sole at 81.",
                "You can fish the sole yourself in the Menaphos Port district for Fishing XP.",
                "The Dwarven army axe adds 3 XP to each cook on a range or bonfire.",
            },
            finish = { "From 66, ghostly sole is a bit faster. At 80, try beltfish with gauntlets." },
        },
        {
            id = "cooking_shark_activity",
            method = "cooking_shark",
            title = "Cooking sharks",
            intro = "Cook sharks from 90 for 210 XP each. Cheap XP, and cooking gauntlets keep burns low.",
            checklist = {
                levels = { { skill = "Cooking", level = 90 } },
                items = {
                    { label = "Raw shark", names = { "Raw shark" }, count = 28 },
                    { label = "Cooking gauntlets (fewer burns)", names = { "Cooking gauntlets" } },
                },
                other = { "Cooking gauntlets come from the Family Crest quest" },
            },
            steps = {
                "Wear cooking gauntlets.",
                "Use the Fort Forinthry kitchen range, or another range next to a bank.",
                "Withdraw a backpack of raw sharks, use them on the range and cook them all.",
                "Bank and repeat.",
            },
            tips = {
                "At 93 with gauntlets you burn about 1% of sharks; you stop burning them at 94.",
                "This is about 294k base XP an hour.",
            },
            finish = { "At 95, blue blubber jellyfish; at 99, sailfish." },
        },
    },
}
