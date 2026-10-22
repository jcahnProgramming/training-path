--[[
    Runecrafting activities (data only, no code).
    Sources: RuneScape Wiki pages: Runespan, Necromantic Rune Temple, Impure essence,
    Rune Mythos, The Abyss, Soul altar, Runic attuner, Pay-to-play Runecrafting training.
    Licensed CC BY-NC-SA 3.0. Format: docs/activity-format.md
]]

return {
    skill = "Runecrafting",
    source = "Data: RuneScape Wiki (CC BY-NC-SA 3.0)",

    activities = {
        {
            id = "runecrafting_runespan_low_activity",
            method = "runecrafting_runespan_low",
            title = "Siphoning in the Runespan",
            intro = "Siphon creatures and nodes in the Runespan for steady XP. You need to bring nothing in.",
            checklist = {
                other = {
                    "Empty-handed is fine: no items needed",
                    "Optional: master runecrafter robes or an ethereal outfit for bonus XP",
                },
            },
            steps = {
                "Enter the low-level portal at the top of the Wizards' Tower.",
                "Collect 25 rune essence from the floating essence on your island.",
                "If you have Runespan points, buy 10 of each rune you can siphon from Wizard Finix so you can use platforms.",
                "Siphon low-level creatures (esslings) to build up essence; each drained creature gives 50 essence.",
                "Siphon nodes a bit below your level when they appear; they give faster XP than creatures.",
                "Move island with the platforms when a better node appears nearby, then come back.",
            },
            tips = {
                "Without an ethereal outfit, stay on one island to avoid spending runes on platforms.",
                "Help the yellow wizard when the chat message appears for extra XP.",
                "Buy the Focused Siphoning upgrade from Wizard Rinsit for +7.5% siphoning.",
                "Keep about 20 of each rune for travel and the yellow wizard.",
            },
            finish = {
                "Leave by asking any wizard for a teleport. Runes and essence turn into points.",
                "Spend points with Wizard Finix, e.g. the massive pouch at 90.",
            },
        },
        {
            id = "runecrafting_necrotic_spirit_activity",
            method = "runecrafting_necrotic_spirit",
            title = "Spirit runes at the Necromantic Rune Temple",
            intro = "Craft spirit runes from impure essence in the City of Um. Fast XP from level 1 and the runes sell well.",
            checklist = {
                levels = { { skill = "Necromancy", level = 24 } },
                items = {
                    { label = "Impure essence", names = { "Impure essence" } },
                    { label = "Passing bracelet (optional)", contains = { "passing bracelet" } },
                },
                other = { "Rune Mythos quest done far enough to open the temple" },
            },
            steps = {
                "Bank, then fill your pouches and backpack with impure essence.",
                "Use Haunt on the Hill on the passing bracelet (or take the ferry) to reach the dark portal.",
                "Enter the dark portal in the north-east of the City of Um.",
                "Craft runes at the spirit altar on the north side of the temple.",
                "Empty your pouches, craft again, then go back to the bank and repeat.",
            },
            tips = {
                "Make impure essence yourself with the lesser essence ritual (200 pure essence makes 40), or buy it.",
                "Bone altar at 20, flesh at 40 and miasma at 60 are in the same temple.",
                "The Abyss bonus does not work at these altars.",
            },
            finish = {
                "At 20 Runecrafting switch to bone runes at the west altar.",
            },
        },
        {
            id = "runecrafting_abyss_astral_nature_law_activity",
            method = "runecrafting_abyss_astral_nature_law",
            title = "Nature or law runes through the Abyss",
            intro = "Run pure essence through the Abyss to the nature or law altar. Very profitable, but you pass through the low Wilderness.",
            checklist = {
                levels = { { skill = "Runecrafting", level = 44 } },
                items = {
                    { label = "Pure essence", names = { "Pure essence" } },
                    { label = "Runecrafting pouches", names = { "Small pouch", "Medium pouch", "Large pouch", "Giant pouch", "Massive pouch", "Expansive pouch" } },
                    { label = "Wilderness sword (Edgeville teleport)", contains = { "wilderness sword" } },
                },
                other = {
                    "Enter the Abyss miniquest",
                    "Astral rift needs Lunar Diplomacy",
                    "Dangerous area: bring only what you can lose",
                },
            },
            steps = {
                "Bank, fill your pouches and backpack with pure essence.",
                "Teleport to Edgeville and run north to the Mage of Zamorak in the Wilderness.",
                "Teleport with the Mage of Zamorak into the outer ring of the Abyss.",
                "Get through to the inner ring with a passage or a skill obstacle (level 30 in that skill).",
                "Enter the nature or law rift and craft runes, then empty pouches and craft again.",
                "Teleport back to a bank and repeat.",
            },
            tips = {
                "Use Configure on the Mage of Zamorak once so he teleports you with a left-click.",
                "Your prayer points are drained to 0 when you enter.",
                "The dark mage in the centre repairs degraded pouches for free.",
                "Weapons and armour can't leave the law altar portal (it leads to Entrana).",
                "Wilderness sword 3 or 4 can drop you straight into the inner ring.",
            },
            finish = {
                "Death runes open at 65 (Mourning's End Part II) and blood runes at 77.",
            },
        },
        {
            id = "runecrafting_soul_altar_activity",
            method = "runecrafting_soul_altar",
            title = "Charging the soul altar",
            intro = "Load pure essence into the soul altar's charger and let it charge. Very AFK; one full altar gives 22,000 XP when crafted.",
            checklist = {
                levels = { { skill = "Runecrafting", level = 90 } },
                quests = { "'Phite Club" },
                items = {
                    { label = "Pure essence", names = { "Pure essence" } },
                },
                other = { "Fountain drained once with a soul talisman, tiara or similar" },
            },
            steps = {
                "Enter the soul ruins under the fountain in the west of the Menaphos Imperial district.",
                "Deposit pure essence into the charger east of the altar (it holds 100 essence).",
                "Choose Charge altar on the charger. Each charge uses 4 essence and gives 10 XP.",
                "Bring more essence and keep charging until the altar has 100 charges (400 essence).",
                "Craft runes at the altar to use the charges: 220 XP per charge.",
            },
            tips = {
                "Fairy ring CKQ lands near the fountain.",
                "An extreme runecrafting potion lets you use the altar from 79 (boost before crafting).",
                "At 105 a full altar can give 66,000 XP when you bind it to at least 240 soul runes.",
                "Some charges can fail to make runes but still give the XP.",
            },
            finish = {
                "At 105 with a runic attuner, save a full altar for every 50th attunement.",
            },
        },
        {
            id = "runecrafting_runic_attuner_activity",
            method = "runecrafting_runic_attuner",
            title = "Runic attuner cycles",
            intro = "Wear a runic attuner and craft at whatever altar it is attuned to. Every 50th attunement gives a 2,200% XP bonus; finish it on a full soul altar.",
            checklist = {
                levels = { { skill = "Runecrafting", level = 105 } },
                quests = { "'Phite Club" },
                items = {
                    { label = "Runic attuner (worn)", names = { "Runic attuner" } },
                    { label = "Pure essence", names = { "Pure essence" } },
                    { label = "Wilderness sword", contains = { "wilderness sword" } },
                },
                other = { "Enter the Abyss miniquest", "Soul altar fully charged before trip 50" },
            },
            steps = {
                "Check the Runic Attunement buff to see the attuned altar and energy count (counts 0 to 49).",
                "Run to that altar, mostly through the Abyss, and craft runes there. The attuner then picks a new altar.",
                "If it attunes to the soul altar early, charge and craft just one rune's worth of essence.",
                "Use the free-choice attunement (every 7 energy) and teleport charges (every 10) to save time.",
                "Before trip 50: fully charge the soul altar, re-enter via the Abyss, take off the crystal binding rod, leave 3-4 free slots.",
                "Craft the full soul altar as the 50th attunement for the huge bonus, then start the next cycle.",
            },
            tips = {
                "Use a powerburst of sorcery and catalytic anima stones on the 50th trip.",
                "Drop one essence before crafting at energy 6, 13, 20 and so on, then pick it up and craft again at the same altar.",
                "Every 25 energy also gives 1-4 magical thread.",
            },
        },
    },
}
