--[[
    Constitution activities (data only, no code).
    Source: RuneScape Wiki pages Pay-to-play Melee training, Soul Wars, Zeal,
    Pest Control, Void knight commendations, Rock crab, Abyss,
    Abyss/Combat training and Vyrewatch/Strategies (CC BY-NC-SA 3.0), read 2026-10-22.
]]

return {
    skill = "Constitution",
    source = "Data: RuneScape Wiki (CC BY-NC-SA 3.0)",

    activities = {
        {
            id = "constitution_soul_wars_activity",
            method = "constitution_soul_wars",
            title = "Soul Wars for zeal",
            intro = "A 20-minute team minigame. Each game gives zeal (3 win, 2 draw, 1 loss) that you can trade for Constitution XP.",
            checklist = {
                other = {
                    "Members only",
                    "43 Prayer for Protect from Melee is a good idea",
                    "No cape worn (you get a team cape)",
                },
            },
            steps = {
                "Enter the Soul Wars portal to reach Nomad's camp, and bank anything you will not need.",
                "Take off your cape, then enter the blue or red barrier, or the green one to balance teams.",
                "Wait in the room; every minute raises your priority to get into the next game.",
                "In the game, fight enemy players, kill jellies and pyrefiends for soul fragments, or bury bones.",
                "Stay active: if your activity bar empties you are removed with no zeal.",
                "After the game, spend zeal with Nomad on Constitution XP.",
            },
            tips = {
                "Food, capes and non-combat items cannot be taken into the game.",
                "Bandages from the supply area heal you and your team.",
                "Joining a Soul Wars friends chat and following its calls helps you win.",
            },
            finish = {
                "Leaving early gives no zeal, so finish each game.",
            },
        },
        {
            id = "constitution_pest_control_activity",
            method = "constitution_pest_control",
            title = "Pest Control",
            intro = "Defend the Void Knight and destroy the portals. Wins give commendations you can spend on Constitution XP.",
            checklist = {
                other = {
                    "Combat level 35 (novice lander)",
                    "Your best weapon and armour",
                },
            },
            steps = {
                "Board the lander for your combat level: 35 novice, 70 intermediate, 100 veteran.",
                "Once ashore, attack portals when their shields drop. Kill spinners first: they heal portals.",
                "Help defend the Void Knight if its health drops below half.",
                "Deal at least 5,000 points of damage, or repair barricades and gates (500 points each).",
                "Spend commendations on Constitution XP at the Commendation Rewards shop.",
            },
            tips = {
                "Combat XP inside the game is halved; the commendation XP makes up for it.",
                "Trade in 100 points at once for 10% extra XP.",
                "Death is safe here; potion boosts do not carry between games.",
            },
            finish = {
                "You can hold at most 1,000 commendations, so spend them before you hit the cap.",
            },
        },
        {
            id = "constitution_rock_crabs_activity",
            method = "constitution_rock_crabs",
            title = "Killing rock crabs",
            intro = "Rock crabs hit low and have lots of life points: 138.6 Constitution XP per kill on top of your combat XP.",
            checklist = {
                items = {
                    { label = "Halberd", contains = { "halberd" } },
                },
            },
            steps = {
                "Any combat style trains Constitution, so pick the skill you also want in Settings.",
                "Rock crabs look like rocks until you walk within one tile of them.",
                "Walk up to a cluster so they wake up and attack you.",
                "Use AoE abilities to hit several crabs at once.",
                "When the crabs are dead, wake the next cluster.",
            },
            tips = {
                "Witch's House gives enough XP for 23 Constitution.",
                "The Fremennik Province lodestone is nearby for a quick return.",
            },
            finish = {
                "Move on to flesh crawlers or moss giants in the 40s.",
            },
        },
        {
            id = "constitution_abyss_early_activity",
            method = "constitution_abyss_early",
            title = "Abyss creatures",
            intro = "Aggressive abyssal creatures swarm you in the Abyss corners, giving 42.9 to 47 Constitution XP per kill with little effort.",
            checklist = {
                items = {
                    { label = "Halberd", contains = { "halberd" } },
                    { label = "Super melee potion", contains = { "super melee" } },
                },
                other = {
                    "Enter the Abyss miniquest completed",
                    "Healing: Vampyrism, blood amulet of fury or a bunyip",
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
                "Teleport out to bank or when your potion runs out.",
            },
        },
        {
            id = "constitution_vyrewatch_activity",
            method = "constitution_vyrewatch",
            title = "Vyrewatch with the Sunspear",
            intro = "Semi-AFK vyre killing in Darkmeyer: 160k to 215k Constitution XP/hr plus combat, Prayer and Firemaking XP.",
            checklist = {
                levels = { { skill = "Attack", level = 75 } },
                quests = { "River of Blood" },
                items = {
                    { label = "Sunspear", contains = { "sunspear" } },
                    { label = "Morytania legs 4", names = { "Morytania legs 4" } },
                },
                other = { "92 Prayer for Soul Split, or 75 for Eclipsed Soul (recommended)" },
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
                "Prayer renewals help keep Soul Split up if the Sunspear is not upgraded.",
            },
            finish = {
                "Bank at Darkmeyer when your backpack is full of loot.",
            },
        },
    },
}
