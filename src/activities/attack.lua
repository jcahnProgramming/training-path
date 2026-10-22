--[[
    Attack activities (data only, no code).
    Source: RuneScape Wiki pages Pay-to-play Melee training, Chicken, Rock crab,
    Abyss, Abyss/Combat training, Vyrewatch/Strategies and Arch-Glacor
    (CC BY-NC-SA 3.0), read 2026-10-22.
]]

return {
    skill = "Attack",
    source = "Data: RuneScape Wiki (CC BY-NC-SA 3.0)",

    activities = {
        {
            id = "attack_chickens_activity",
            method = "attack_chickens",
            title = "Killing chickens",
            intro = "Chickens have very low Defence and deal hardly any damage, so they are a safe first target. 12.5 XP per kill.",
            checklist = {
                items = {
                    { label = "Halberd (best you can wield)", contains = { "halberd" } },
                },
                other = {
                    "Combat XP set to Attack (Settings, Skills and Experience)",
                },
            },
            steps = {
                "Open Settings, Skills and Experience, and choose Attack so melee XP goes there.",
                "Equip the best halberd you can wield and the best armour you can wear.",
                "Attack a chicken; turn on Revolution so abilities fire from your action bar.",
                "Keep attacking the next chicken as each one dies.",
                "Cook the raw chicken they drop if you need to heal.",
            },
            tips = {
                "A halberd attacks from further away and widens AoE abilities.",
                "Waterfall Quest, Tree Gnome Village and Fight Arena give enough XP for 39 Attack.",
            },
            finish = {
                "Upgrade your halberd every 10 Attack levels (iron at 10, steel at 20, mithril at 30).",
                "Move on to rock crabs in the mid-20s.",
            },
        },
        {
            id = "attack_rock_crabs_activity",
            method = "attack_rock_crabs",
            title = "Killing rock crabs",
            intro = "Rock crabs hit low and have lots of life points: 420 XP per kill. A safe, fast grind from the mid-20s.",
            checklist = {
                items = {
                    { label = "Halberd", contains = { "halberd" } },
                },
                other = {
                    "Combat XP set to Attack",
                    "A few pieces of food, just in case",
                },
            },
            steps = {
                "Rock crabs look like rocks until you walk within one tile of them.",
                "Walk up to a cluster so they wake up and attack you.",
                "Use AoE abilities (Flurry, Hurricane) to hit several crabs at once.",
                "When the crabs are dead, walk next to the next cluster to wake it.",
            },
            tips = {
                "Crabs in a cluster wake each other up when they respawn.",
                "The Fremennik Province lodestone is nearby for a quick return.",
            },
            finish = {
                "Around 30 Attack switch to a mithril halberd and move on to hill giants or flesh crawlers.",
            },
        },
        {
            id = "attack_abyss_activity",
            method = "attack_abyss",
            title = "Abyss creatures (AFK)",
            intro = "Packs of 15+ aggressive abyssal creatures attack you on respawn. With a full setup this gives 500k to 600k XP/hr.",
            checklist = {
                levels = {
                    { skill = "Attack", level = 70 },
                    { skill = "Strength", level = 70 },
                    { skill = "Defence", level = 70 },
                },
                items = {
                    { label = "Halberd or Dragon Rider lance", contains = { "halberd", "dragon rider lance", "noxious scythe", "tumeken's light" } },
                    { label = "Super melee potion", contains = { "super melee" } },
                },
                other = {
                    "Enter the Abyss miniquest completed",
                    "Healing: Vampyrism, blood amulet of fury or a bunyip",
                    "Combat XP set to Attack",
                },
            },
            steps = {
                "Bank first: you pass low-level Wilderness to reach the Mage of Zamorak.",
                "Entering the Abyss drains your prayer points to 0.",
                "Go to the south-west or south-east corner; the creatures there attack on spawn.",
                "Use AoE abilities (Meteor Strike, Quake, Hurricane) to hit the whole pack.",
                "After 10 minutes they stop being aggressive: run to the opposite corner and back to reset.",
            },
            tips = {
                "A scrimshaw of aggression or aggression potions also reset aggression.",
                "Use a charming imp for the many charm drops, and gear with the Scavenging perk.",
                "Inside the Abyss you are no longer in the Wilderness and other players cannot attack you.",
            },
            finish = {
                "Teleport out to bank or when your potion runs out.",
                "From 80 Attack, Vyrewatch in Darkmeyer are a strong semi-AFK option.",
            },
        },
        {
            id = "attack_vyrewatch_activity",
            method = "attack_vyrewatch",
            title = "Vyrewatch with the Sunspear",
            intro = "Semi-AFK vyre killing in Darkmeyer: 490k to 655k combat XP/hr plus Prayer, Firemaking and good money.",
            checklist = {
                levels = { { skill = "Attack", level = 75 } },
                quests = { "River of Blood" },
                items = {
                    { label = "Sunspear", contains = { "sunspear" } },
                    { label = "Morytania legs 4", names = { "Morytania legs 4" } },
                },
                other = {
                    "92 Prayer for Soul Split, or 75 for Eclipsed Soul (recommended)",
                    "Combat XP set to Attack",
                },
            },
            steps = {
                "Equip the Sunspear: vyres are immune to most weapons, and it cremates them for you.",
                "Bank your Drakan's medallion for space; overloads add little for melee and can be skipped.",
                "Turn on Soul Split (or Eclipsed Soul) and Vampyrism or Penance.",
                "Let the vyres come to you and hit them with AoE abilities.",
                "Without either prayer, use Protect from Magic, Devotion and food or a bunyip.",
                "Loot every one to two minutes to keep the profit.",
            },
            tips = {
                "If a vyre attacks from out of melee range, switch the Sunspear to ranged, kill it, then switch back.",
                "Burning 500 vyre corpses unlocks the Sunspear's full prayer-restoring upgrades.",
                "Prayer renewals help keep Soul Split up if the Sunspear is not upgraded.",
            },
            finish = {
                "Bank at Darkmeyer when your backpack is full of loot.",
            },
        },
        {
            id = "attack_arch_glacor_activity",
            method = "attack_arch_glacor",
            title = "Arch-Glacor (normal mode)",
            intro = "A boss with a customisable fight: 3,250 XP per kill. With 0 mechanics it dies fastest; with all 5 it drops more loot.",
            checklist = {
                levels = { { skill = "Attack", level = 90 } },
                other = {
                    "Food or another way to heal",
                    "Combat XP set to Attack",
                },
            },
            steps = {
                "Enter the Aqueduct Portal to start an instance.",
                "Toggle the mechanics in the interface (or talk to each mage): turn them all off for XP.",
                "Attack the boss; Creeping Ice is always on, so move when ice shards close in.",
                "If you enable Frost Cannon, use prayers or defensive abilities to survive it.",
                "If you enable Glacyte Minions, kill them first and click their cores to damage the boss.",
            },
            tips = {
                "Death in normal mode is safe: you keep your items.",
                "Solo kills give you all three drops.",
                "Killing it solo with all 5 mechanics unlocks hard mode.",
            },
            finish = {
                "Restart the fight from the instance, or leave to bank and restock food.",
            },
        },
    },
}
