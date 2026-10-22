--[[
    Herblore activities (data only, no code).
    Sources: RuneScape Wiki, "Pay-to-play Herblore training", "Druidic Ritual",
    "Attack potion", "Prayer potion", "Harralander tar", "Primal extract",
    "Overload" and "Portable well". Licensed CC BY-NC-SA 3.0.
    Format: docs/activity-format.md
]]

return {
    skill = "Herblore",
    source = "Data: RuneScape Wiki (CC BY-NC-SA 3.0)",

    activities = {
        {
            id = "herblore_attack_potion_activity",
            method = "herblore_attack_potion",
            title = "Mixing attack potions",
            intro = "Add eye of newt to guam potions (unfinished) for 25 XP each. About 25 potions take you to level 12.",
            checklist = {
                quests = { "Druidic Ritual" },
                items = {
                    { label = "Guam potion (unfinished)", names = { "Guam potion (unfinished)" }, count = 14 },
                    { label = "Eye of newt", names = { "Eye of newt" }, count = 14 },
                },
                other = { "A portable well within 4 tiles of a bank (world 84: Fort Forinthry, Lumbridge bank or the GE)" },
            },
            steps = {
                "Save a bank preset of 14 guam potions (unfinished) and 14 eye of newt.",
                "Use an eye of newt on a guam potion (unfinished) and choose to make them all.",
                "Wait for the batch to finish next to the well for its +10% XP and extra potion chance.",
                "Bank the attack potions, load the preset again and repeat.",
            },
            tips = {
                "A portable well within 4 tiles of a bank works without clicking the well.",
                "Unfinished potions skip the herb and vial step, which is the fastest way.",
                "Check the price per dose before selling a big stack of potions.",
            },
            finish = { "At level 12 move on to strength potions (tarromin potion (unfinished) and limpwurt root)." },
        },
        {
            id = "herblore_prayer_potion_activity",
            method = "herblore_prayer_potion",
            title = "Mixing prayer potions",
            intro = "Add snape grass to ranarr potions (unfinished) for 87.5 XP each. The wiki estimates about 2,200 potions and 192,500 XP an hour.",
            checklist = {
                levels = { { skill = "Herblore", level = 38 } },
                items = {
                    { label = "Ranarr potion (unfinished)", names = { "Ranarr potion (unfinished)" }, count = 14 },
                    { label = "Snape grass", names = { "Snape grass" }, count = 14 },
                },
                other = { "A portable well within 4 tiles of a bank" },
            },
            steps = {
                "Save a bank preset of 14 ranarr potions (unfinished) and 14 snape grass.",
                "Use snape grass on a ranarr potion (unfinished) and choose to make them all.",
                "When the batch ends, bank the potions and load the preset again.",
                "Repeat until you have made the potions you need, 1,557 from 38 to 55.",
            },
            tips = {
                "Prayer potions are often a small profit, so this pays for itself.",
                "A botanist's amulet gives a chance of 4-dose potions.",
                "Harralander tar from level 44 is a faster option if you can buy swamp tar.",
            },
            finish = { "At 55 move on to super strength potions (kwuarm potion (unfinished) and limpwurt root)." },
        },
        {
            id = "herblore_harralander_tar_activity",
            method = "herblore_harralander_tar",
            title = "Making harralander tar",
            intro = "Grind clean harralander with 15 swamp tar for 72.5 XP per herb. Swamp tar stacks, so one backpack lasts a while. About 140,000 XP an hour.",
            checklist = {
                levels = { { skill = "Herblore", level = 44 } },
                items = {
                    { label = "Pestle and mortar", names = { "Pestle and mortar" }, toolBelt = true },
                    { label = "Clean harralander", names = { "Clean harralander" }, count = 27 },
                    { label = "Swamp tar (15 per herb)", names = { "Swamp tar" }, count = 405 },
                },
            },
            steps = {
                "Withdraw 27 clean harralander and 405 swamp tar (15 per herb).",
                "Use a clean harralander on the swamp tar to make 15 harralander tar.",
                "Choose to make them all and wait for the backpack to finish.",
                "Bank the tar, withdraw more herbs and repeat.",
            },
            tips = {
                "The Grand Exchange limit on swamp tar is 20,000 per 4 hours, so buy ahead.",
                "Clean tarromin gives 25% less XP but has been a small profit.",
                "With 85 Magic, Telekinetic Grind does a whole backpack at once for much faster XP.",
            },
            finish = { "Sell the tar or keep it as net trap bait for black salamanders (Hunter)." },
        },
        {
            id = "herblore_primal_extract_activity",
            method = "herblore_primal_extract",
            title = "Making primal extracts",
            intro = "Combine primal fruit pulp with empty vials. Fast, profitable XP from level 90, and you get more extract per pulp at 102 and 112.",
            checklist = {
                levels = { { skill = "Herblore", level = 90 } },
                items = {
                    { label = "Primal fruit pulp", names = { "Primal fruit pulp" } },
                    { label = "Vial (empty)", names = { "Vial" } },
                },
                other = { "Vials per pulp: 1 at level 90, 2 at 102, 3 at 112" },
            },
            steps = {
                "Save a bank preset of pulp and empty vials in the right ratio for your level.",
                "Use a primal fruit pulp on a vial and choose to make them all.",
                "Bank the primal extract, load the preset and repeat.",
            },
            tips = {
                "The wiki gives 1,800 to 2,450 pulp an hour depending on level.",
                "Making it on a portable well gives an extra 10% XP.",
                "Temporary boosts do not raise the number of extracts per pulp.",
            },
            finish = { "Sell the extract, or use it later for bombs and powerbursts at 99+." },
        },
        {
            id = "herblore_overload_activity",
            method = "herblore_overload",
            title = "Making overloads",
            intro = "Mix the six 3-dose extreme combat potions with clean torstol for 1,000 XP each, 1,100 on a portable well. 3,000 overloads take you from 96 to 99 with bonus XP.",
            checklist = {
                levels = { { skill = "Herblore", level = 96 } },
                items = {
                    { label = "Extreme attack (3)", names = { "Extreme attack (3)" }, count = 4 },
                    { label = "Extreme strength (3)", names = { "Extreme strength (3)" }, count = 4 },
                    { label = "Extreme defence (3)", names = { "Extreme defence (3)" }, count = 4 },
                    { label = "Extreme magic (3)", names = { "Extreme magic (3)" }, count = 4 },
                    { label = "Extreme ranging (3)", names = { "Extreme ranging (3)" }, count = 4 },
                    { label = "Extreme necromancy (3)", names = { "Extreme necromancy (3)" }, count = 4 },
                    { label = "Clean torstol", names = { "Clean torstol" }, count = 4 },
                },
                other = { "A portable well within 4 tiles of a bank" },
            },
            steps = {
                "Save a bank preset of 4 of each extreme potion (3) and 4 clean torstol.",
                "Use a clean torstol on an extreme potion and choose to make them all.",
                "Bank the overloads, load the preset and repeat.",
            },
            tips = {
                "This is expensive. Overload ingredient sets on the GE hold one of everything.",
                "Overloads are untradeable, so make them for your own PvM use.",
                "The Herblore master cape makes overloads 5 at a time from the ingredients of 4.",
            },
            finish = { "At 99 primal extracts are the profitable way on toward 120." },
        },
    },
}
