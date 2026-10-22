--[[
    Strength activities (data only, no code).
    Source: RuneScape Wiki pages Pay-to-play Melee training, Hill Giant,
    Flesh Crawler, Abyss, Abyss/Combat training, Shattered Worlds,
    Sophanem Slayer Dungeon and Feather of Ma'at (CC BY-NC-SA 3.0), read 2026-10-22.
]]

return {
    skill = "Strength",
    source = "Data: RuneScape Wiki (CC BY-NC-SA 3.0)",

    activities = {
        {
            id = "strength_hill_giants_activity",
            method = "strength_hill_giants",
            title = "Killing hill giants",
            intro = "Hill giants only use melee and have very low Defence: 225 XP per kill, with a bank and the Grand Exchange close by.",
            checklist = {
                levels = { { skill = "Attack", level = 30 } },
                items = {
                    { label = "Mithril halberd or better", contains = { "halberd" } },
                    { label = "Food", names = { "Lobster", "Swordfish", "Monkfish", "Shark" }, count = 5 },
                },
                other = { "Combat XP set to Strength (Settings, Skills and Experience)" },
            },
            steps = {
                "Open Settings, Skills and Experience, and choose Strength so melee XP goes there.",
                "Equip a mithril halberd or better and your best armour.",
                "Attack a giant; when it dies, move on to the next one.",
                "Use AoE abilities when two or more giants are next to each other.",
                "Eat when your life points drop low.",
            },
            tips = {
                "The wiki recommends these only after 30 Attack and a mithril halberd.",
                "Waterfall Quest, Scorpion Catcher and Haunted Mine give enough XP for 41 Strength.",
            },
            finish = {
                "Bank in Edgeville when you run out of food.",
                "From 40, flesh crawlers are better XP with AoE.",
            },
        },
        {
            id = "strength_flesh_crawlers_activity",
            method = "strength_flesh_crawlers",
            title = "Flesh crawlers with AoE",
            intro = "Several crawlers fight you at once, so AoE abilities give great XP. 180 XP per kill and lots of herb drops.",
            checklist = {
                items = {
                    { label = "Halberd", contains = { "halberd" } },
                    { label = "Food (lobsters or better)", names = { "Lobster", "Swordfish", "Monkfish", "Shark" }, count = 10 },
                    { label = "Herb bag", names = { "Herb bag" } },
                },
                other = {
                    "Mithril armour or better (they rarely hit you then)",
                    "Combat XP set to Strength",
                },
            },
            steps = {
                "Equip your halberd and mithril armour or better.",
                "Attack a crawler and let the others gather around you.",
                "Use Flurry, Hurricane and Meteor Strike to hit the whole group.",
                "Eat when needed: they hit fast if your armour is weak.",
                "Pick up herbs into the herb bag as you go.",
            },
            tips = {
                "Still good training up to about 70.",
                "Herbs and runes they drop sell well.",
            },
            finish = {
                "Leave and bank when your food runs low or the backpack is full.",
            },
        },
        {
            id = "strength_abyss_early_activity",
            method = "strength_abyss_early",
            title = "Abyss creatures",
            intro = "Aggressive abyssal creatures swarm you in the Abyss corners: up to 220k XP/hr with minimal effort.",
            checklist = {
                items = {
                    { label = "Halberd", contains = { "halberd" } },
                    { label = "Super melee potion", contains = { "super melee" } },
                },
                other = {
                    "Enter the Abyss miniquest completed",
                    "Healing: Vampyrism, blood amulet of fury or a bunyip",
                    "Tier 60+ armour (they often miss against it)",
                    "Combat XP set to Strength",
                },
            },
            steps = {
                "Bank first: you pass low-level Wilderness to reach the Mage of Zamorak.",
                "Entering the Abyss drains your prayer points to 0.",
                "Head to the south-western corner, where the most creatures are aggressive.",
                "Use AoE abilities to hit the whole pack at once.",
                "After 10 minutes they stop attacking: run to the opposite corner and back to reset.",
            },
            tips = {
                "Their max hits are under 300, but many can hit you at once.",
                "Use a charming imp to collect the many charm drops.",
            },
            finish = {
                "Teleport out to bank. At 70 Strength the full setup reaches 500k+ XP/hr here.",
            },
        },
        {
            id = "strength_shattered_worlds_activity",
            method = "strength_shattered_worlds",
            title = "Shattered Worlds",
            intro = "A solo minigame with safe death: fight mobs through worlds of rising difficulty and earn shattered anima. Worlds 70 to 80 are best for XP.",
            checklist = {
                other = {
                    "Combat level 40+ recommended",
                    "Talked to Kenton Decarte once",
                    "Combat XP set to Strength",
                },
            },
            steps = {
                "Enter the blue portal. In the setup, take your own gear or a bank preset, or pick 'equip me'.",
                "Pick 'feed me' to fill empty backpack slots with food.",
                "Kill monsters to fill the main objective, then enter the red portal to the next world.",
                "Choose a mutator before each new world. Avoid Feeling Pumped: kills under it give minimal XP.",
                "Every 5 worlds you reach a checkpoint with a bank chest and a reward chest.",
            },
            tips = {
                "Melee AoE abilities (Meteor Strike, Hurricane) are preferred in low worlds.",
                "Never pick Catastrophe or Unstable Rifts.",
                "Monsters have no weakness, so bring your best gear.",
            },
            finish = {
                "Leave at a checkpoint: progress and bonus anima are saved there.",
                "Spend anima at the Abyssal Knight Quartermaster.",
            },
        },
        {
            id = "strength_sophanem_activity",
            method = "strength_sophanem",
            title = "Sophanem Slayer Dungeon (AFK)",
            intro = "Corrupted creatures can be AFKed for a very long time with aggression. About 500k XP/hr with tier 90 gear.",
            checklist = {
                levels = { { skill = "Slayer", level = 88 } },
                items = {
                    { label = "Feathers of Ma'at", names = { "Feather of Ma'at" }, count = 100 },
                    { label = "Scrimshaw of aggression or aggression potions", contains = { "aggression" } },
                },
                other = { "Combat XP set to Strength" },
            },
            steps = {
                "Get Feathers of Ma'at from the Menaphite guard at the dungeon. One is used per kill.",
                "Enter the dungeon; you are warned if you have no feathers.",
                "Use the treasure chest to turn on auto-collecting drops.",
                "Equip the scrimshaw or drink an aggression potion so monsters come to you.",
                "Fight corrupted scorpions (or other corrupted creatures) with AoE abilities.",
            },
            tips = {
                "Kills add corruption stacks: you deal and take 1% more damage per stack, up to 25%.",
                "The wiki discourages cleansing stacks at the Font of Elidinis.",
                "If you die, pay the small fee at the chest to get your collected loot back.",
            },
            finish = {
                "Claim your loot from the chest before you leave.",
            },
        },
    },
}
