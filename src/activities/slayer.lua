--[[
    Slayer activities (data only, no code).
    Facts from the RuneScape Wiki pages: Slayer task, Jacquelyn, Vannaka,
    The Raptor, Kuradal, Abyssal demon, Gemstone dragon, Gemstone cavern,
    Sunken Pyramid, Enchanted gem (CC BY-NC-SA 3.0). Checked 2026-10-22.
]]

return {
    skill = "Slayer",
    source = "Data: RuneScape Wiki (CC BY-NC-SA 3.0)",

    activities = {
        {
            id = "slayer_jacquelyn_vannaka_activity",
            method = "slayer_jacquelyn_vannaka",
            title = "First Slayer tasks",
            intro = "Get a task from a low-level Slayer master and kill the assigned monsters. You only get Slayer XP for monsters you are assigned.",
            checklist = {
                items = {
                    { label = "Enchanted gem", names = { "Enchanted gem" } },
                },
                other = {
                    "Vannaka needs 30 combat",
                    "Food and a weapon for your combat style",
                },
            },
            steps = {
                "Talk to Jacquelyn or Vannaka and ask for an assignment.",
                "Buy an enchanted gem from the master's shop if you have none; it costs one coin.",
                "Go to the assigned monsters and kill them until the task is done.",
                "Right-click the enchanted gem to see how many kills are left.",
                "Return to a Slayer master in person for your next task. The gem cannot give new tasks.",
            },
            tips = {
                "You can turn on the Slayer counter in Gameplay, Interfaces, Information Windows.",
                "Points depend on your task streak and on Smoking Kills; without it you get fewer points.",
                "Turael or Spria can swap a task for an easier one, but this resets your task streak.",
            },
            finish = {
                "At 35 combat you can use The Raptor after Unwelcome Guests; at 90 combat and 35 Slayer, Sumona.",
            },
        },
        {
            id = "slayer_raptor_activity",
            method = "slayer_raptor_mid",
            title = "Tasks from The Raptor",
            intro = "The Raptor at Fort Forinthry gives tasks from 35 combat. His points scale with your Slayer level, so he gets better as you level.",
            checklist = {
                quests = { "Unwelcome Guests" },
                items = {
                    { label = "Enchanted gem", names = { "Enchanted gem" } },
                    { label = "Slayer helmet (optional)", contains = { "slayer helmet" } },
                },
                other = { "35 combat" },
            },
            steps = {
                "Talk to The Raptor at Fort Forinthry and ask for an assignment.",
                "Some of his tasks are cluster tasks covering a group of monster types; any of them count.",
                "Kill the assigned monsters until the task is done.",
                "Return to The Raptor for the next task.",
            },
            tips = {
                "His tasks are about as hard as Sumona's, so low-level players should be careful.",
                "He sometimes offers a challenge: kill 120 to 149 undead around the fort. You can decline it without penalty.",
                "Without Smoking Kills his points are halved.",
            },
            finish = {
                "At 75 Slayer and 110 combat, move to Kuradal.",
            },
        },
        {
            id = "slayer_kuradal_activity",
            method = "slayer_kuradal",
            title = "Tasks from Kuradal",
            intro = "Kuradal gives high-level tasks, and many of her monsters are kept in Kuradal's Dungeon right next to her.",
            checklist = {
                levels = { { skill = "Slayer", level = 75 } },
                items = {
                    { label = "Enchanted gem", names = { "Enchanted gem" } },
                    { label = "Slayer helmet", contains = { "slayer helmet" } },
                    { label = "Ferocious ring (optional)", contains = { "ferocious ring" } },
                },
                other = { "110 combat", "Partial Barbarian Training (to reach the Ancient Cavern)" },
            },
            steps = {
                "Talk to Kuradal in the Ancient Cavern and ask for an assignment.",
                "Check whether the monster is in Kuradal's Dungeon; it can only be used while on a task from Kuradal, Morvran or Laniakea.",
                "Kill the assigned monsters until the task is done.",
                "Teleport back with a ferocious ring and get a new task.",
            },
            tips = {
                "Ferocious rings teleport straight to Kuradal and drop from monsters in her dungeon.",
                "Slayer points: cancel a task for 30, block one for 100.",
                "Her special challenge is the TzHaar Fight Cave in place of a TzHaar task; accept it straight away or it is gone.",
            },
            finish = {
                "At 85 Slayer and 120 combat, Morvran in Prifddinas gives more points per task.",
            },
        },
        {
            id = "slayer_abyssal_demons_activity",
            method = "slayer_abyssal_demons",
            title = "Abyssal demon tasks",
            intro = "Abyssal demons need 85 Slayer and are a very fast task. They are also good combat and Invention XP.",
            checklist = {
                levels = { { skill = "Slayer", level = 85 } },
                items = {
                    { label = "Slayer helmet", contains = { "slayer helmet" } },
                },
                other = { "An abyssal demon task" },
            },
            steps = {
                "Choose where to kill them: Kuradal's Dungeon (task from Kuradal, Morvran or Laniakea), the top floor and roof of the Slayer Tower, or the Slayer Tower resource dungeon (100 Dungeoneering).",
                "Kill the demons; they sometimes teleport a short distance.",
                "Pick up valuable drops, such as abyssal whips, wands and orbs.",
                "Return to your Slayer master when the task is done.",
            },
            tips = {
                "On task an elite abyssal demon is guaranteed to spawn at some point.",
                "Abyssal beasts and lords also count, as 2 and 5 kills, but need higher Slayer.",
                "In Kuradal's Dungeon, bank runs are slow; infernal urns help save space.",
            },
        },
        {
            id = "slayer_gemstone_dragons_activity",
            method = "slayer_gemstone_dragons_high",
            title = "Hydrix dragons",
            intro = "Gemstone dragons are weak to Ranged, especially arrows. Hydrix dragons need 101 Slayer and give very fast XP.",
            checklist = {
                levels = { { skill = "Slayer", level = 101 } },
                items = {
                    { label = "Karamja gloves 3 or 4", names = { "Karamja gloves 3", "Karamja gloves 4" } },
                    { label = "Antifire potion", contains = { "antifire" } },
                },
                other = { "A gemstone dragons task (otherwise Kelhar charges gems)", "Ranged gear and arrows" },
            },
            steps = {
                "Talk to Kelhar in the Shilo Village underground mine to enter the gemstone cavern.",
                "With 94 Agility, use the crevice shortcut at the entrance to reach the hydrix dragons.",
                "Kill hydrix dragons with Ranged until the task is done.",
                "With 99 Slayer you can instead place a hydrix dragon in your Sunken Pyramid and fight it there.",
            },
            tips = {
                "Hydrix dragons send spikes that drain your adrenaline and halve adrenaline gain for 15 seconds; move out of the spikes.",
                "They do not use their special attack while you are in melee distance.",
                "Sunken Pyramid: fill an ushabti from Faiza, then use it on a magical barrier in building mode. Large monsters only fit in the two northern rooms.",
            },
            finish = {
                "Off task you can still fight them if you pay Kelhar with incomplete hydrix.",
            },
        },
    },
}
