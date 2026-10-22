--[[
    Divination activities (data only, no code).
    Facts from the RuneScape Wiki pages: Divination, Pale wisp,
    Incandescent wisp, Energy rift, Guthixian Cache, The Empty Throne Room,
    Hall of Memories, The Gate of Elidinis and its Strategies page
    (CC BY-NC-SA 3.0). Checked 2026-10-22.
    Guthixian Caches no longer have an hourly or daily limit since the
    DailyScape Overhaul (16 March 2026): a rift opens after 800 memories.
]]

return {
    skill = "Divination",
    source = "Data: RuneScape Wiki (CC BY-NC-SA 3.0)",

    activities = {
        {
            id = "divination_pale_wisps_activity",
            method = "divination_pale_wisps",
            title = "Harvesting pale wisps",
            intro = "Harvest wisps for memories, then convert them at the energy rift. This is the basic Divination loop used at every colony.",
            checklist = {
                items = {
                    { label = "Cracked divination urn (optional)", contains = { "cracked divination urn" } },
                },
                other = { "Space in your backpack for memories" },
            },
            steps = {
                "If you are new, talk to Orla Fairweather in the Divination camp south of the Draynor jail.",
                "Click a pale wisp to harvest it; it turns into a spring you keep harvesting.",
                "Harvest until your backpack is full of pale memories.",
                "Click the energy rift and pick a conversion: energy, XP, or enhanced XP (uses energy too).",
                "Go back to the springs and repeat.",
            },
            tips = {
                "A spring lasts 60 seconds, plus 15 seconds for each other player on it.",
                "Catch chronicle fragments quickly (within 6 seconds) for enhanced fragments; offer them to a rift.",
                "Add a mind rune to a cracked divination urn so it fills while you train.",
            },
            finish = {
                "At 10 Divination move on to flickering wisps.",
                "From 35, rifts at other colonies open a Guthixian Cache after you convert 800 memories.",
            },
        },
        {
            id = "divination_empty_throne_room_activity",
            method = "divination_empty_throne_room",
            title = "Senntisten crystals",
            intro = "Transmute Senntisten crystals in the Empty Throne Room. Using the empowered colour gives ten times the XP, about 65k XP an hour.",
            checklist = {
                levels = { { skill = "Divination", level = 65 } },
                quests = { "The Dig Site" },
            },
            steps = {
                "Take Senntisten crystals from the crystal storage bin at the top of the room, near the entrance.",
                "Transmute them; the interface picks the empowered colour by default.",
                "Deposit the coloured crystals in the crate of the same colour for 19.8 XP each.",
                "The empowered colour changes every 42 seconds, so keep an eye on it.",
            },
            tips = {
                "You can only gain 800,000 XP here in total; Celia Diggory shows your progress.",
                "Divination urns do not fill here.",
                "Crystals are removed from your backpack when you leave.",
            },
            finish = {
                "The wiki recommends this until 75, then the Hall of Memories.",
            },
        },
        {
            id = "divination_hall_of_memories_activity",
            method = "divination_hall_of_memories_mid",
            title = "Hall of Memories",
            intro = "Fill memory jars by harvesting memories, then hand in full jars for 3,400 XP each. Faster than wisps.",
            checklist = {
                levels = { { skill = "Divination", level = 70 } },
                items = {
                    { label = "Memory jar", contains = { "memory jar" } },
                },
            },
            steps = {
                "On your first visit, the Archivist gives you two memory jars and a memory-storage bot.",
                "Get more empty jars from the jar depot to the east.",
                "Harvest the best memories for your level (lustrous at 70, brilliant 80, radiant 85, luminous 90, incandescent 95).",
                "Hand full jars in at the unstable rift in the north for 3,400 XP each.",
                "Catch core memory fragments and place them on the plinths in the north. When six are placed, the core memory opens.",
            },
            tips = {
                "Memories move every 24 seconds, so re-click when yours moves.",
                "Harvest a core memory when it is at or below your level; ignore higher ones.",
                "Fill memory-storage bots and give them to the Archivist for permanent boosts.",
                "Recollection butterflies give a chance at memory shards for 60 seconds.",
            },
        },
        {
            id = "divination_incandescent_wisps_activity",
            method = "divination_incandescent_wisps",
            title = "Incandescent wisps",
            intro = "The top wisp tier at 95. About 82k XP an hour, or 97k when converting with bought energy.",
            checklist = {
                levels = { { skill = "Divination", level = 95 } },
                items = {
                    { label = "Divination outfit (optional)", contains = { "elder divination", "divination energy", "divination chronicle", "divination memory", "diviner's" } },
                },
            },
            steps = {
                "Harvest an incandescent wisp, then keep harvesting the spring.",
                "Enriched memories give double XP when harvested and converted.",
                "When your backpack is full, convert at the energy rift.",
                "For the most XP, pick enhanced XP; each memory then uses 5 energy (10 for enriched).",
            },
            tips = {
                "A light creature familiar can push rates over 110k XP an hour.",
                "After converting 800 memories the rift opens a Guthixian Cache; it stays open until you go in and come out.",
                "The boon for this tier adds 10% XP and energy when converting.",
            },
        },
        {
            id = "divination_gate_of_elidinis_activity",
            method = "divination_gate_of_elidinis",
            title = "Gate of Elidinis",
            intro = "A safe skilling boss: transmute and mine shards, then use them to cleanse the statue. About 285k XP an hour at 99.",
            checklist = {
                quests = { "Ode of the Devourer" },
                items = {
                    { label = "Pickaxe", contains = { "pickaxe" }, toolBelt = true },
                },
                other = { "85+ Mining recommended", "Food; no tank armour (damage scales with max life points)" },
            },
            steps = {
                "Click Icthlarin to start. During the lull, gather 25 to 30 moonstone fragments.",
                "Repair the moonstone barrier at a conduit to about 30%.",
                "When the gate wakes, transmute corrupt shards of Elidinis into cleansed shards, then mine them for cleansed statue shards.",
                "Use the extra action button to start Icthlarin's Aid and jump on the pillars.",
                "Click the statue to use up your shards and cleanse the gate. Repeat until it is fully cleansed.",
            },
            tips = {
                "North of the barrier you get 2 shards per mine but take more damage.",
                "Transmuting gives you corruption stacks that hurt you over time.",
                "If you drop to 0 life points, Icthlarin pulls you out safely.",
                "After a win, wait out the 1 minute timer over Icthlarin to start again.",
            },
        },
    },
}
