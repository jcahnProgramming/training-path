--[[
    Archaeology activities (data only, no code).
    Facts from the RuneScape Wiki pages: Archaeology training, Archaeology
    tutorial, Venator remains, Green Gobbo Goodies I, Hellfire forge,
    Dragonkin II (CC BY-NC-SA 3.0). Checked 2026-10-22.
    Note: the wiki lists 83 Archaeology for Green Gobbo Goodies I (goblin
    dorm debris needs the Out of the Crucible mystery at 83).
]]

return {
    skill = "Archaeology",
    source = "Data: RuneScape Wiki (CC BY-NC-SA 3.0)",

    activities = {
        {
            id = "archaeology_tutorial_activity",
            method = "archaeology_tutorial",
            title = "Archaeology tutorial",
            intro = "A short tutorial that unlocks the skill and takes you to level 5. You learn to excavate, screen soil and restore artefacts.",
            checklist = {
                other = { "17 free backpack spaces" },
            },
            steps = {
                "Talk to Acting Guildmaster Reiniger to get your first tools, then excavate the nearby centurion remains.",
                "Screen your soil at the screening station.",
                "Restore the damaged centurion's dress sword at the archaeologist's workbench.",
                "Show the restored sword to the collector near the Archaeology Guild.",
                "Interact with the monolith and activate your first relic.",
                "Get a free archaeological soil box from Ezreal, then talk to Reiniger again.",
            },
            finish = {
                "Reiniger offers to take you to the Kharid-et Dig Site; start on the venator remains.",
            },
        },
        {
            id = "archaeology_venator_remains_activity",
            method = "archaeology_venator_remains",
            title = "Venator remains",
            intro = "Your first real hotspot. Excavate for materials and damaged venator crossbows and daggers, then restore them for XP.",
            checklist = {
                levels = { { skill = "Archaeology", level = 5 } },
                items = {
                    { label = "Mattock", contains = { "mattock" }, toolBelt = true },
                    { label = "Archaeological soil box", names = { "Archaeological soil box" } },
                },
            },
            steps = {
                "Talk to Dr Nabanik and watch the cutscene.",
                "Walk down the slope and uncover the venator remains (35 XP once).",
                "Excavate them. Click the time sprite's spot when it moves for faster progress.",
                "Put materials in the materials cart and soil in your soil box.",
                "Restore damaged artefacts at an archaeologist's workbench.",
            },
            tips = {
                "Keep two restored light crossbows and two daggers for Soran and Velucia's collections.",
                "Screen spare soil at a screening station for extra materials.",
            },
            finish = {
                "At 12, move on to the next Kharid-et hotspots.",
            },
        },
        {
            id = "archaeology_green_gobbo_goodies_activity",
            method = "archaeology_green_gobbo_goodies",
            title = "Green Gobbo Goodies I",
            intro = "Collect five goblin artefacts at the Warforge and hand them to General Wartface again and again. 34,533.5 XP per completion.",
            checklist = {
                levels = { { skill = "Archaeology", level = 83 } },
                items = {
                    { label = "Mattock", contains = { "mattock" }, toolBelt = true },
                    { label = "Archaeological soil box", names = { "Archaeological soil box" } },
                },
                other = { "Out of the Crucible mystery (for goblin dorm debris)" },
            },
            steps = {
                "Talk to Zanik at the Warforge to see the intro cutscene if you have not yet.",
                "Excavate gladiatorial goblin remains and goblin dorm debris.",
                "Restore the five artefacts: Ekeleshuun blinder mask, Narogoshuun 'Hob-da-Gob' ball, Rekeshuun war tether, Thorobshuun battle standard and Yurkolgokh stink grenade.",
                "Hand the set to General Wartface to complete the collection.",
                "Repeat with the next set.",
            },
            tips = {
                "Each completion also gives a tetracompass piece and 3,252 chronotes.",
                "Build and solve tetracompasses for complete tomes worth at least 22,857.6 XP at 83.",
            },
            finish = {
                "At 97, Green Gobbo Goodies II gives 60,666.6 XP per completion.",
            },
        },
        {
            id = "archaeology_dragonkin_ii_activity",
            method = "archaeology_dragonkin_ii",
            title = "Dragonkin II collection",
            intro = "Four artefacts from the Orthen observation outpost, handed to Sharrigan. 81,666.6 XP plus 75 rex skeleton fragments each time.",
            checklist = {
                levels = { { skill = "Archaeology", level = 102 } },
                items = {
                    { label = "Mattock", contains = { "mattock" }, toolBelt = true },
                    { label = "Archaeological soil box", names = { "Archaeological soil box" } },
                },
            },
            steps = {
                "Excavate autopsy tables and experiment workbenches at the Orthen observation outpost.",
                "Restore a dragon scalpel, protective goggles, dragon burner and orthenglass flask.",
                "Hand them to Sharrigan, outside the Town Hall at the Anachronia base camp.",
                "Repeat for more completions.",
            },
            tips = {
                "Turn in rex skeleton fragments 100 or more at a time for 20% more XP per fragment.",
                "The wiki says repeating this is effective up to about level 110.",
            },
        },
        {
            id = "archaeology_hellfire_forge_activity",
            method = "archaeology_hellfire_forge",
            title = "Hellfire forges",
            intro = "AFK excavation at the Infernal Source, about 210k XP an hour with bonuses at level 104.",
            checklist = {
                levels = { { skill = "Archaeology", level = 104 } },
                items = {
                    { label = "Best mattock", contains = { "mattock" }, toolBelt = true },
                    { label = "Archaeological soil box", names = { "Archaeological soil box" } },
                },
            },
            steps = {
                "Uncover the fiery brimstone at a hellfire forge (544.5 XP once).",
                "Excavate the forge; follow the time sprite for faster progress.",
                "Bank or store materials, and keep soil in your soil box.",
                "Restore the artefacts and complete the Zamorakian III and Museum - Zamorakian III collections the first time.",
            },
            tips = {
                "The wiki recommends this over the Warforge scrap piles at this level.",
                "Signs of the porter bank materials so you can stay longer, but not damaged artefacts.",
            },
        },
    },
}
