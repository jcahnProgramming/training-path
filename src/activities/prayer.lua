--[[
    Prayer activities (data only). Format: docs/activity-format.md.
    Sources: RuneScape Wiki, Pay-to-play Prayer training, Gilded altar,
    Ectofuntus, Blessed sand, Chaos altar (Wilderness), Chapel (Fort Forinthry),
    Cleansing crystal, Corrupted Seren Stone.
    Licensed CC BY-NC-SA 3.0.
]]

return {
    skill = "Prayer",
    source = "Data: RuneScape Wiki (CC BY-NC-SA 3.0)",

    activities = {
        {
            id = "prayer_gilded_altar_activity",
            method = "prayer_gilded_altar",
            title = "Offering bones at a gilded altar",
            intro = "A gilded altar with both incense burners lit gives 350% XP per bone. Use your own house or an open altar on world 31.",
            checklist = {
                items = {
                    { label = "Bones or ashes", contains = { "bones", "ashes" } },
                    { label = "Clean marrentill (for 2 burners)", names = { "Clean marrentill" }, count = 2 },
                },
                other = {
                    "A fast bank teleport and a way back to the house",
                    "Optional: pack yak or war tortoise to carry more bones",
                },
            },
            steps = {
                "Light both incense burners with clean marrentill (not needed if you wear a Prayer cape).",
                "Use a bone on the altar. All bones of that type in your backpack are offered one at a time.",
                "Take out bones from your beast of burden and offer them too.",
                "Teleport to a bank (War's Retreat or a ring of duelling, for example) and restock.",
                "Teleport back to the house, relight the burners if they went out, and repeat.",
            },
            tips = {
                "Burners stay lit for at least 2 minutes 10 seconds.",
                "Each First age outfit piece adds 1% XP; a perfect juju prayer potion raises it to 367.5%.",
                "Double XP does not boost altar offerings.",
            },
        },
        {
            id = "prayer_ectofuntus_activity",
            method = "prayer_ectofuntus",
            title = "Worshipping the Ectofuntus with ashes",
            intro = "The Ectofuntus gives 4x XP per offering. Demonic ashes skip the bone grinder, so they are faster than bones.",
            checklist = {
                quests = { "Ghosts Ahoy" },
                items = {
                    { label = "Ectophial", names = { "Ectophial" } },
                    { label = "Demonic ashes", contains = { "ashes" }, count = 13 },
                },
                other = {
                    "A fast bank teleport",
                    "Optional: 58 Agility for the slime shortcut",
                },
            },
            steps = {
                "First trip: go down the trapdoor near the Ectofuntus and use the Pool of Slime to fill your backpack with buckets of slime.",
                "Teleport back with the ectophial and Worship the Ectofuntus until your ashes are gone.",
                "Go down the trapdoor again and collect buckets of slime.",
                "Teleport to a bank and withdraw 13 more ashes.",
                "Teleport to the Ectofuntus with the ectophial and repeat from worship.",
            },
            tips = {
                "No empty buckets are needed; the slime pool gives them.",
                "Morytania legs 2, 3 and 4 give daily teleports straight to the slime pool.",
                "Wear a ghostspeak amulet to collect ecto-tokens from the ghost disciples.",
                "Infernal ashes give 3,250 XP per trip of 13.",
            },
        },
        {
            id = "prayer_bless_sand_activity",
            method = "prayer_bless_sand",
            title = "Blessing extra fine sand",
            intro = "Bless extra fine sand at a Saradomin altar for 7 XP each. Slow, but very AFK and often profitable.",
            checklist = {
                levels = { { skill = "Prayer", level = 20 } },
                items = {
                    { label = "Extra fine sand", names = { "Extra fine sand" } },
                },
            },
            steps = {
                "Stand next to the altar.",
                "Use the Bless option on the sand, or use the sand on the altar.",
                "Up to 60 sand is blessed per click, taking about 72 seconds.",
                "Click again when it stops. Both kinds of sand stack, so no banking is needed.",
            },
            tips = {
                "Other Saradomin altars work too: Entrana, Citharede Abbey, Everlight statues and Saradominist house chapels.",
                "Blessed sand often sells for more than extra fine sand.",
            },
        },
        {
            id = "prayer_chaos_altar_activity",
            method = "prayer_chaos_altar",
            title = "Offering at the Wilderness chaos altar",
            intro = "The chaos altar gives 150% XP, plus 50% for each Wilderness task set done: 350% with all of them. Bank next door with Simon.",
            checklist = {
                items = {
                    { label = "Bones or ashes", contains = { "bones", "ashes" } },
                },
                other = {
                    "Not opted into PvP",
                    "Elite Wilderness achievements for the full 350%",
                },
            },
            steps = {
                "Use your bones or ashes on the chaos altar.",
                "When you run out, bank with Simon on the other side of the temple wall.",
                "Withdraw more bones and offer them again.",
            },
            tips = {
                "With the hard Wilderness tasks done, Harrison nearby un-notes bones, raising you from about 1,600 to 1,900 bones an hour.",
                "Do not wear Prayer brawling gloves here; they cancel the altar bonus.",
                "Double XP does not work at this altar.",
            },
        },
        {
            id = "prayer_fort_forinthry_chapel_activity",
            method = "prayer_fort_forinthry_chapel",
            title = "Fort Forinthry chapel",
            intro = "The upgraded chapel gives up to 3x XP for bones and ashes, and Prayer brawling gloves stack with it. A bank chest is just to the west.",
            checklist = {
                levels = { { skill = "Construction", level = 90 } },
                items = {
                    { label = "Bones or ashes", contains = { "bones", "ashes" } },
                },
                other = { "Chapel upgraded in Fort Forinthry" },
            },
            steps = {
                "Offer your bones or ashes at the chapel altar.",
                "When you run out, restock at the bank chest to the west.",
                "Optionally add clean herbs (noted is fine) to the chapel burners for a chance to save offerings.",
                "Repeat; about 1,900-2,000 bones an hour without a beast of burden.",
            },
            tips = {
                "Burner time is shared by everyone on the world, so world 84 is a good choice.",
                "Prayer brawling gloves work here, for up to 525% XP.",
            },
        },
        {
            id = "prayer_cleansing_crystals_activity",
            method = "prayer_cleansing_crystals",
            title = "Cleansing the Corrupted Seren Stone",
            intro = "Each cleansing crystal gives 9,800 XP over 2 minutes with no banking. About 294k XP/hr, and it works with Double XP.",
            checklist = {
                levels = { { skill = "Prayer", level = 75 } },
                quests = { "Plague's End" },
                items = {
                    { label = "Cleansing crystals", names = { "Cleansing crystal" } },
                },
                other = { "110,000 coins per crystal from the Hefin monks" },
            },
            steps = {
                "Buy cleansing crystals from a Hefin monk in the cathedral (they hold up to 30 and restock about 1 every 10 seconds).",
                "Use a crystal on the Corrupted Seren Stone to start cleansing.",
                "Do not click anything that would interrupt you; the crystal is lost if you do. Chat and camera are fine.",
                "When the crystal is used up, start the next one.",
            },
            tips = {
                "Clicking the crystal while cleansing ends it.",
                "Drink a perfect juju prayer potion from the action bar (+5%) so it does not interrupt.",
                "Tirannwn quiver 3 or 4 starts the next crystal for you.",
                "When the Voice of Seren is in Hefin you get 20% more XP.",
            },
        },
    },
}
