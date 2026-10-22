--[[
    Construction activities (data only, no code).
    Sources: RuneScape Wiki pages: Pay-to-play Construction training, Furniture workbench,
    Construction Contracts, Fort Forinthry, Fort Forinthry blueprints, Optimal Construction hotspot.
    Licensed CC BY-NC-SA 3.0. Format: docs/activity-format.md
    Note: the wiki marks parts of the training page as possibly outdated after the
    2026 Construction update.
]]

local hammer = { label = "Hammer", names = { "Hammer" }, toolBelt = true }
local saw = { label = "Saw", names = { "Saw", "Crystal saw" }, toolBelt = true }

return {
    skill = "Construction",
    source = "Data: RuneScape Wiki (CC BY-NC-SA 3.0)",

    activities = {
        {
            id = "construction_wooden_furniture_activity",
            method = "construction_wooden_furniture",
            title = "Wooden furniture at a workbench",
            intro = "Build cheap wooden furniture at a workbench from planks and steel nails. Each new item unlocks better XP per action.",
            checklist = {
                quests = { "There's No Place Like Home..." },
                items = {
                    hammer,
                    saw,
                    { label = "Planks", names = { "Plank" } },
                    { label = "Steel nails", names = { "Steel nails" } },
                },
            },
            steps = {
                "Use the furniture workbench outside the Rimmington house portal, a workbench in your house, or a portable workbench.",
                "Open Construct and pick the best item for your level.",
                "3-6: crude wooden chair (2 planks, 58 XP).",
                "6-14: wooden bookcase (4 planks, 115 XP).",
                "14-16: wooden round table (6 planks); 16-33: wooden long table (8 planks, 228 XP).",
                "Bank for more planks and nails and repeat.",
            },
            tips = {
                "A portable workbench gives +10% XP and a chance to save a plank; world 84 often has them.",
                "A plank box from Construction Contracts cuts down on banking.",
                "A house wooden workbench only builds items up to level 20.",
            },
            finish = {
                "The New Foundations quest gives over 40,000 XP and can skip these levels.",
                "At 33 switch to oak larders.",
            },
        },
        {
            id = "construction_oak_larder_activity",
            method = "construction_oak_larder",
            title = "Oak larders",
            intro = "Build oak larders at a workbench for 480 XP each. The best furniture XP from 33 to 56.",
            checklist = {
                levels = { { skill = "Construction", level = 33 } },
                quests = { "There's No Place Like Home..." },
                items = {
                    hammer,
                    saw,
                    { label = "Oak planks", names = { "Oak plank" }, count = 8 },
                },
            },
            steps = {
                "Go to a workbench next to a bank (a portable workbench is best).",
                "Fill your backpack with oak planks (8 per larder).",
                "Open Construct and build oak larders until you run out of planks.",
                "Bank and repeat.",
            },
            tips = {
                "Oak furniture is built 20% faster from level 50.",
                "Fill a plank box too so you bank less often.",
            },
            finish = {
                "At 56 move on to teak long tables.",
            },
        },
        {
            id = "construction_contracts_low_activity",
            method = "construction_contracts_low",
            title = "Construction Contracts",
            intro = "Repair furniture in NPC homes for an estate agent. Cheaper than workbench training and gives credits for the plank box and master constructor's outfit.",
            checklist = {
                levels = { { skill = "Construction", level = 40 } },
                items = {
                    hammer,
                    saw,
                    { label = "Planks", names = { "Plank", "Oak plank", "Teak plank", "Mahogany plank" } },
                    { label = "Nails", contains = { " nails" } },
                },
                other = { "A teleport back to an estate agent" },
            },
            steps = {
                "Talk to any estate agent to get a contract.",
                "Travel to the home on the contract.",
                "Talk to the NPC there to see what the furniture needs.",
                "Build each empty furniture hotspot (2-10 planks and 2-4 nails each, sometimes cloth, candles or bars).",
                "When everything is repaired, go back to an estate agent for credits and a new contract.",
            },
            tips = {
                "Buy the plank box first (50 credits), then the master constructor's outfit.",
                "Switch to oak planks at 50: double credits and faster builds.",
                "Teak works from 60, mahogany from 70, eternal from 100.",
                "Low-tier nails bend more often and slow you down.",
                "A beast of burden can carry extra planks and bars.",
            },
            finish = {
                "Spend credits at the Estate Agents Shop.",
            },
        },
        {
            id = "construction_fort_buildings_low_activity",
            method = "construction_fort_buildings_low",
            title = "Building Fort Forinthry",
            intro = "Start a blueprint and build it at the hotspots. Very AFK: one project can take 18-25 minutes.",
            checklist = {
                quests = { "New Foundations" },
                other = { "Materials for the blueprint (refined planks, wood frames or stone wall segments)" },
            },
            steps = {
                "Make the materials in the workshop if needed: stonecutter for wall segments, sawmill for refined planks and the bench for frames.",
                "Open the Fort Forinthry blueprints table next to the workshop.",
                "Choose a building to build, upgrade or reinforce for your level.",
                "Click a hotspot at that building and keep building.",
                "For more XP, click the shiny optimal hotspot when it moves (about every 30 seconds).",
            },
            tips = {
                "The optimal hotspot gives up to 60% more XP and 40% more progress.",
                "Keeping your Perfect Build streak at 100% keeps the bonus.",
                "Reinforcing an already-built tier gives XP for the same materials.",
                "Don't spam-click a hotspot: XP comes at the end of each animation.",
                "The finished workshop gives 5/10/15% bonus XP on fort buildings.",
            },
            finish = {
                "20% of the XP is paid on the final tick, so finish the build.",
            },
        },
        {
            id = "construction_potion_cauldron_activity",
            method = "construction_potion_cauldron",
            title = "Basic potion cauldrons",
            intro = "Build basic potion cauldrons for 2,618 XP each. The fastest furniture XP from 80 to 106, but expensive.",
            checklist = {
                levels = { { skill = "Construction", level = 80 } },
                quests = { "There's No Place Like Home..." },
                items = {
                    hammer,
                    saw,
                    { label = "Bane bars", names = { "Bane bar" }, count = 5 },
                    { label = "Blood runes", names = { "Blood rune" }, count = 25 },
                    { label = "Eye of newt", names = { "Eye of newt" } },
                },
            },
            steps = {
                "Go to a workbench next to a bank (a portable workbench is best).",
                "Carry bane bars, blood runes and eyes of newt (5, 25 and 1 per cauldron).",
                "Open Construct and build basic potion cauldrons.",
                "Bank and repeat.",
            },
            tips = {
                "Cheaper option: teak long tables from 80 to 99, then mahogany long tables to 106.",
                "Teak furniture builds 50% faster from 80, mahogany from 99.",
            },
            finish = {
                "At 106 move on to eternal furniture.",
            },
        },
    },
}
