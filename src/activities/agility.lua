--[[
    Agility activities (data only, no code).
    Sources: RuneScape Wiki pages for each course: Gnome Stronghold Agility Course,
    Barbarian Outpost Agility Course, Wilderness Agility Course, The Empty Throne Room,
    Manual Auto-cycle, Hefin Agility Course, Anachronia Agility Course.
    Licensed CC BY-NC-SA 3.0. Format: docs/activity-format.md
]]

return {
    skill = "Agility",
    source = "Data: RuneScape Wiki (CC BY-NC-SA 3.0)",

    activities = {
        {
            id = "agility_gnome_stronghold_activity",
            method = "agility_gnome_stronghold",
            title = "Gnome Stronghold laps",
            intro = "Run laps of the basic Gnome Stronghold course. You can't take damage here, so no food or energy potions are needed.",
            checklist = {
                other = { "Members world" },
            },
            steps = {
                "Walk across the log balance.",
                "Climb over the obstacle net.",
                "Climb the tree branch up to the platform.",
                "Walk on the balancing rope.",
                "Climb down the tree branch.",
                "Climb over the second obstacle net.",
                "Squeeze through the obstacle pipe to finish the lap (130 XP), then run back to the log.",
            },
            tips = {
                "Run energy comes back faster than you use it on this course.",
                "Do the obstacles in order to get the 65 XP lap bonus.",
            },
            finish = {
                "At 35 Agility move on to the Barbarian Outpost course.",
                "At 85 Agility the advanced route up the tree gives about 1,800 XP per lap.",
            },
        },
        {
            id = "agility_barbarian_outpost_activity",
            method = "agility_barbarian_outpost",
            title = "Barbarian Outpost laps",
            intro = "Run laps of the basic Barbarian Outpost course for 350 XP each. Most obstacles can fail and hurt you.",
            checklist = {
                levels = { { skill = "Agility", level = 35 } },
                items = {
                    { label = "Food", contains = { "shark", "lobster", "swordfish", "monkfish", "trout", "salmon", "tuna" } },
                },
                other = { "Bar Crawl miniquest (to pass the barbarian guard)" },
            },
            steps = {
                "Squeeze through the obstacle pipe to reach the course.",
                "Swing on the ropeswing over the spike pit.",
                "Walk across the log balance.",
                "Climb over the obstacle net.",
                "Walk across the balancing ledge, then climb down the ladder.",
                "Climb over the three crumbling walls to finish the lap, then run back to the ropeswing.",
            },
            tips = {
                "If you fall from the ropeswing, climb the ladder out of the pit and try again.",
                "If you fall off the ledge, redo the obstacle net first.",
                "Only one player can use each ropeswing at a time; a quiet world helps.",
            },
            finish = {
                "You stop failing laps at 93 Agility. Move on when a better course opens up.",
            },
        },
        {
            id = "agility_wilderness_course_activity",
            method = "agility_wilderness_course",
            title = "Wilderness course laps",
            intro = "Run laps of the Wilderness Agility Course for 571.4 XP each. Fails are common and you are in the Wilderness, so bring only what you can lose.",
            checklist = {
                levels = { { skill = "Agility", level = 52 } },
                items = {
                    { label = "Wilderness sword 2 or better (optional, +5% lap bonus)", contains = { "wilderness sword" } },
                    { label = "Food", contains = { "shark", "lobster", "swordfish", "monkfish", "tuna" } },
                },
                other = { "Dangerous area: don't bring items you can't afford to lose" },
            },
            steps = {
                "Squeeze through the obstacle pipe.",
                "Swing on the ropeswing.",
                "Cross the stepping stones.",
                "Walk across the log balance.",
                "Climb the cliffside to finish the lap and get the bonus.",
                "Head back to the obstacle pipe and repeat.",
            },
            tips = {
                "Failing the ropeswing or log drops you into a pit of aggressive skeletons; climb the ladder out.",
                "Redo any failed obstacle or the cliffside gives no lap bonus.",
                "Fall damage scales with your current life points, so lower health means smaller hits.",
                "A full lap can give an obelisk shard, portable obelisk or dark onyx core.",
            },
            finish = {
                "Teleport out when done. Bandos's Throne Room or Werewolf course opens at 60.",
            },
        },
        {
            id = "agility_empty_throne_room_activity",
            method = "agility_empty_throne_room",
            title = "Empty Throne Room auto-cycles",
            intro = "Pedal a manual auto-cycle for AFK Agility XP. The empowered cycle gives ten times the XP.",
            checklist = {
                levels = { { skill = "Agility", level = 65 } },
                other = { "65 Agility can't be boosted here", "Cap of 800,000 XP from cycling" },
            },
            steps = {
                "Go down into the throne room to the six auto-cycles in the centre.",
                "Look for the empowered cycle (purple glow underneath).",
                "Click Pedal on it. You get 38.2 XP every 1.8 seconds on an empowered cycle, 3.8 on a normal one.",
                "The empowered cycle moves every 42 seconds. Switch to the new one to keep the high rate.",
            },
            tips = {
                "Staying on one cycle is very AFK but much slower.",
                "Dismounting takes about 5.4 seconds, so start moving just before the switch.",
                "Talk to Celia Diggory outside to check how much of the 800,000 XP cap is left.",
            },
            finish = {
                "The wiki suggests using it until about 75 Agility.",
            },
        },
        {
            id = "agility_hefin_course_activity",
            method = "agility_hefin_course",
            title = "Hefin course laps",
            intro = "Run laps of the Hefin Agility Course in Prifddinas. You can never fail, and XP per lap rises every 5 levels.",
            checklist = {
                levels = { { skill = "Agility", level = 77 } },
                quests = { "Plague's End" },
                other = { "77 Agility can't be boosted here" },
            },
            steps = {
                "Leap across the walkway.",
                "Traverse the cliff.",
                "Scale the cathedral.",
                "Vault the roof.",
                "Slide down the zip-line.",
                "Merge with the light creature to finish the lap, then head back to the walkway.",
            },
            tips = {
                "Turn on the Velocity bar: when it fills, the next obstacle is done for you.",
                "Use the window or light creature shortcuts when they appear.",
                "Voice of Seren in Hefin adds Agility XP and gives Prayer XP.",
                "You can click the next obstacle ahead on most obstacles, except the vault roof.",
            },
            finish = {
                "You can't teleport out mid-lap; finish it first.",
                "At 85 the full Anachronia lap is much faster XP.",
            },
        },
        {
            id = "agility_anachronia_full_activity",
            method = "agility_anachronia_full",
            title = "Anachronia full laps",
            intro = "Run all seven sections around Anachronia for 28,000 XP per lap. Fails only cost 5% of current health and still give XP.",
            checklist = {
                levels = { { skill = "Agility", level = 85 } },
                items = {
                    { label = "Summer pie (to boost 80-84)", contains = { "summer pie" } },
                },
                other = { "Anachronia lodestone unlocked", "Surge and Dive on your action bar" },
            },
            steps = {
                "Start at either beginner section next to the base camp.",
                "Follow the white markings and mud path through each section in a row: beginner, novice, advanced, eastern, advanced, novice, beginner.",
                "Use Surge and Dive between obstacles to save time.",
                "Finish the last section to get the 21,736 XP lap bonus.",
                "Turn around and run the course in the other direction.",
            },
            tips = {
                "You must do every obstacle in a row for the lap bonus.",
                "A lap under 8 min 30 s gives about 141k XP/hr; under 6 min 30 s about 185k.",
                "The base camp spa (+5 to 10%) and Roar of Osseous (+25%) stack on top.",
                "Each full lap gives 10 codex pages.",
                "The guards at the entrances can show your laps or reset lap progress.",
            },
        },
    },
}
