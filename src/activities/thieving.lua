--[[
    Thieving activities (data only, no code).
    Sources: RuneScape Wiki, "Pay-to-play Thieving training", "Thieving"
    (pickpocketing mechanics), "Man", "Cave goblin (Dorgesh-Kaan)",
    "Dorgesh-Kaan", "Knight of Ardougne", "Safecracking", "Thieves' Guild" and
    "Balthazar Beauregard's Big Top Bonanza". Licensed CC BY-NC-SA 3.0.
    Format: docs/activity-format.md
]]

return {
    skill = "Thieving",
    source = "Data: RuneScape Wiki (CC BY-NC-SA 3.0)",

    activities = {
        {
            id = "thieving_pp_man_activity",
            method = "thieving_pp_man",
            title = "Pickpocketing men and women",
            intro = "Pickpocket men and women for 8 XP each, about 16,000 XP an hour. The easiest start, available in almost every town.",
            checklist = {
                other = { "Members only (Thieving is a members skill)" },
            },
            steps = {
                "Right-click a man or woman and choose Pickpocket.",
                "Your character keeps pickpocketing on its own until caught or the backpack is full.",
                "When caught you are stunned for a moment and take a little damage. Pickpocket again after the stun.",
                "Eat food if your life points get low.",
            },
            tips = {
                "Set NPC attack option to Right Click or Hidden so a left-click pickpockets.",
                "Changing target resets your success chain.",
                "After the Lost Her Marbles caper each pickpocket gives 20 coins.",
            },
            finish = { "At 10 pickpocket farmers for about 29,000 XP an hour." },
        },
        {
            id = "thieving_pp_cave_goblin_activity",
            method = "thieving_pp_cave_goblin",
            title = "Pickpocketing cave goblins",
            intro = "Pickpocket the cave goblins of Dorgesh-Kaan for 40 XP each, about 80,000 XP an hour. They cannot be attacked, so a left-click pickpockets.",
            checklist = {
                levels = { { skill = "Thieving", level = 36 } },
                quests = { "Death to the Dorgeshuun" },
                other = { "Some food" },
            },
            steps = {
                "Click a cave goblin and choose Pickpocket.",
                "Keep going: you repeat the action on your own until caught.",
                "If caught, a cave goblin guard comes after you. Wait out the stun, eat if needed, and pickpocket again.",
                "Bank or drop loot when the backpack fills.",
            },
            tips = {
                "Goblins that stop to chat often stay in one spot, which makes them easy targets.",
                "Gloves of silence and other success boosts mean fewer stuns.",
            },
            finish = { "From 42 to 55, druids, brigands or trainee archaeologists are faster." },
        },
        {
            id = "thieving_pp_knight_ardougne_activity",
            method = "thieving_pp_knight_ardougne",
            title = "Pickpocketing Knights of Ardougne",
            intro = "Pickpocket Knights of Ardougne for 84.3 XP and 50 coins each, about 168,600 XP an hour. The coins stack, so you rarely need to bank.",
            checklist = {
                levels = { { skill = "Thieving", level = 55 } },
                other = { "Medium Ardougne achievements (success boost in Ardougne)", "Some food" },
            },
            steps = {
                "Find a knight in the Ardougne market or Ardougne Castle.",
                "Right-click the knight and choose Pickpocket.",
                "Keep going until you are caught, then pickpocket again after the stun.",
                "Eat when your life points get low.",
            },
            tips = {
                "Set NPC attack option to Right Click or Hidden so you never attack a knight.",
                "Hard and elite Ardougne achievements give the boost everywhere.",
                "Crystal Mask adds 15% success and resets the chain; Light Form doubles it.",
            },
            finish = { "At 62, with the Thieves' Guild capers done, start safecracking." },
        },
        {
            id = "thieving_safecracking_misthalin_activity",
            method = "thieving_safecracking_misthalin",
            title = "Safecracking in Misthalin",
            intro = "Crack safes around Misthalin: 405 XP for each of the first two dials and 1,600 for the safe, 2,410 per safe. About 300,000 XP an hour, 400,000 when you click on the blue flash.",
            checklist = {
                levels = { { skill = "Thieving", level = 62 } },
                quests = { "Buyers and Cellars" },
                items = {
                    { label = "Stethoscope", contains = { "stethoscope" }, toolBelt = true },
                    { label = "Loot bag", contains = { "loot bag" } },
                },
                other = { "All Thieves' Guild capers done (A Guild of Our Own needed to use the stethoscope and bag)" },
            },
            steps = {
                "Get a stethoscope and small loot bag from the safe-cracking trainer in the Thieves' Guild.",
                "Route (62 to 65): Lumbridge, upstairs in Roddeck's house; upstairs in Bob's Brilliant Axes.",
                "Then the Wizards' Tower: the safes in the small north-east and south-west rooms of the upper floor.",
                "Then Draynor: the two safes in the west room of Draynor Manor.",
                "At a safe, turn the dial. When the safe flashes blue or you hear the cue, click it again to open a lock.",
                "After cracking it, fill your loot bag and move on to the next safe.",
            },
            tips = {
                "Safes take 5 minutes to reset, and hopping worlds does not reset them.",
                "From 65 add the Varrock Palace treasury (needs a lockpick); from 69 Pollnivneach and Al Kharid.",
                "Fence your loot with Chief Thief Robin for XP and pilfer points.",
            },
            finish = {
                "Spend pilfer points on bigger loot bags and the master thief's stethoscope.",
                "At 76 move to the Asgarnia safes.",
            },
        },
        {
            id = "thieving_big_top_bonanza_activity",
            method = "thieving_big_top_bonanza",
            title = "Circus magic tricks (weekly)",
            intro = "Once a week, perform up to 5 magic tricks at Balthazar Beauregard's Big Top Bonanza. Up to 14,260 XP in about 45 seconds at level 90.",
            checklist = {
                quests = { "Some Like It Cold" },
                other = { "Find this week's circus with the D and D icon on the world map, or the Adventures minigames tab" },
            },
            steps = {
                "Get a circus ticket from the ticket vendor to enter the circus.",
                "Stand on the star next to Teddy to start the Thieving performance.",
                "Do the highest trick at or below your level first, then work down to tricks at half your level.",
                "Then try tricks above your level, and last the ones below half your level.",
                "Each trick gives XP only the first time you succeed. You get 5 attempts.",
            },
            tips = {
                "Tricks: Pretend Levitate 50, Card Trick 60, Flowers from Sleeves 70, Rabbit from Hat 80, Water Tank 90.",
                "Back to the Freezer gives 1.5 times the XP.",
                "The same circus also has Magic, Ranged, Agility and Firemaking acts.",
            },
            finish = { "Leave by tearing the ticket or teleporting. Come back next week." },
            repeats = "weekly",
            repeatNote = "Resets every Wednesday at 00:00 UTC, when the circus moves to another city.",
        },
    },
}
