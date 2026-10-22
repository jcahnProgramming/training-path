--[[
    Defence activities (data only, no code).
    Source: RuneScape Wiki pages Pay-to-play Melee training, Rock crab, Grotworm,
    Grotworm Lair, Abyss, Abyss/Combat training, Sophanem Slayer Dungeon,
    Corrupted scorpion and Vyrewatch/Strategies (CC BY-NC-SA 3.0), read 2026-10-22.
]]

return {
    skill = "Defence",
    source = "Data: RuneScape Wiki (CC BY-NC-SA 3.0)",

    activities = {
        {
            id = "defence_rock_crabs_activity",
            method = "defence_rock_crabs",
            title = "Killing rock crabs",
            intro = "Rock crabs hit low and have lots of life points: 420 XP per kill. A safe, fast grind from the mid-20s.",
            checklist = {
                items = {
                    { label = "Halberd", contains = { "halberd" } },
                },
                other = {
                    "Combat XP set to Defence (Settings, Skills and Experience)",
                    "Best armour your Defence level allows",
                },
            },
            steps = {
                "Open Settings, Skills and Experience, and choose Defence so melee XP goes there.",
                "Rock crabs look like rocks until you walk within one tile of them.",
                "Walk up to a cluster so they wake up and attack you.",
                "Use AoE abilities (Flurry, Hurricane) to hit several crabs at once.",
                "When the crabs are dead, wake the next cluster.",
            },
            tips = {
                "Armour only needs a Defence level, so upgrade it as you level here.",
                "Holy Grail gives enough Defence XP for 31 Defence.",
            },
            finish = {
                "Move on to hill giants, flesh crawlers or moss giants from the 30s and 40s.",
            },
        },
        {
            id = "defence_grotworms_activity",
            method = "defence_grotworms",
            title = "Killing grotworms",
            intro = "Level 63 grotworms on the middle level of the Grotworm Lair give 372.5 XP per kill.",
            checklist = {
                items = {
                    { label = "Food", names = { "Lobster", "Swordfish", "Monkfish", "Shark" }, count = 5 },
                },
                other = {
                    "Members only (the middle level is pay-to-play)",
                    "Combat XP set to Defence",
                },
            },
            steps = {
                "Go down to the middle level, where the level 63 grotworms are.",
                "Fight them in melee range: they switch to magic when you are out of melee range.",
                "Move straight on to the next worm after each kill.",
                "Eat when needed; they hit fairly accurately for their level.",
            },
            tips = {
                "Cannons cannot be set up in the lair.",
                "If you die here, your gravestone appears outside the lair.",
            },
            finish = {
                "The Port Sarim lodestone is a few steps away when you need to bank.",
            },
        },
        {
            id = "defence_abyss_activity",
            method = "defence_abyss",
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
                    "Tier 70 power armour (God Wars Dungeon)",
                    "Healing: Vampyrism, blood amulet of fury or a bunyip",
                    "Combat XP set to Defence",
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
            },
            finish = {
                "Teleport out to bank or when your potion runs out.",
            },
        },
        {
            id = "defence_corrupted_scorpions_activity",
            method = "defence_corrupted_scorpions",
            title = "Corrupted scorpions",
            intro = "450 XP per kill in the Sophanem Slayer Dungeon. The dungeon chest can collect the drops for you.",
            checklist = {
                levels = { { skill = "Slayer", level = 88 } },
                items = {
                    { label = "Feathers of Ma'at", names = { "Feather of Ma'at" }, count = 100 },
                },
                other = { "Combat XP set to Defence" },
            },
            steps = {
                "Get Feathers of Ma'at from the Menaphite guard at the dungeon. One is used per kill.",
                "Enter the dungeon; you are warned if you have no feathers.",
                "Use the treasure chest to turn on auto-collecting drops.",
                "Fight the corrupted scorpions; use AoE when several are close.",
            },
            tips = {
                "Each scorpion kill adds 1% corruption: you deal and take 1% more damage per stack, up to 25%.",
                "Aggression potions or a scrimshaw of aggression let you AFK for a long time.",
                "If you die, pay the small fee at the chest to get your collected loot back.",
            },
            finish = {
                "Claim your loot from the chest before you leave.",
            },
        },
        {
            id = "defence_vyrewatch_high_activity",
            method = "defence_vyrewatch_high",
            title = "Vyrewatch with Soul Split",
            intro = "Semi-AFK vyre killing in Darkmeyer: 490k to 655k combat XP/hr plus Prayer, Firemaking and good money.",
            checklist = {
                levels = {
                    { skill = "Attack", level = 75 },
                    { skill = "Prayer", level = 92 },
                },
                quests = { "River of Blood" },
                items = {
                    { label = "Sunspear", contains = { "sunspear" } },
                    { label = "Morytania legs 4", names = { "Morytania legs 4" } },
                    { label = "Amulet of souls or blood fury", contains = { "amulet of souls", "blood amulet of fury", "essence of finality" } },
                },
                other = {
                    "Elite Morytania achievements for the best rates",
                    "Combat XP set to Defence",
                },
            },
            steps = {
                "Equip the Sunspear: vyres are immune to most weapons, and it cremates them for you.",
                "Bank your Drakan's medallion for space; overloads add little for melee and can be skipped.",
                "Turn on Soul Split, plus Vampyrism or Penance.",
                "Let the vyres come to you and hit them with AoE abilities.",
                "Loot every one to two minutes to keep the profit.",
            },
            tips = {
                "If a vyre attacks from out of melee range, switch the Sunspear to ranged, kill it, then switch back.",
                "Prayer renewals help keep Soul Split up if the Sunspear is not upgraded.",
                "Burning 500 vyre corpses unlocks the Sunspear's full prayer-restoring upgrades.",
            },
            finish = {
                "Bank at Darkmeyer when your backpack is full of loot.",
            },
        },
    },
}
