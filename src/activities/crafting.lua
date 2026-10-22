--[[
    Crafting activities (data only, no code).
    Sources: RuneScape Wiki, "Pay-to-play Crafting training", "Bowstring", "Sapphire",
    "Green dragonhide shield", "Battlestaff", "Harp", "Urns".
    Licensed CC BY-NC-SA 3.0. Format: docs/activity-format.md
]]

return {
    skill = "Crafting",
    source = "Data: RuneScape Wiki (CC BY-NC-SA 3.0)",

    activities = {
        {
            id = "crafting_flax_bowstrings_activity",
            method = "crafting_flax_bowstrings",
            title = "Spinning flax into bowstrings",
            intro = "Spin flax into bowstrings at a spinning wheel. 15 XP each, cheap, and the bowstrings sell or feed your Fletching.",
            checklist = {
                items = {
                    { label = "Flax", names = { "Flax" }, count = 28 },
                },
            },
            steps = {
                "Withdraw 28 flax from the bank.",
                "Click the spinning wheel and choose bowstring.",
                "Wait about 50 seconds while the whole backpack is spun.",
                "Bank the bowstrings and repeat.",
            },
            tips = {
                "A full backpack gives 420 XP.",
                "Good wheels: Lumbridge Castle (bank one floor up), Seers' Village, the Ranger's Workroom at Fort Forinthry.",
                "With Seers' headband 2 or better, spinning in Seers' Village is 1.5x faster.",
            },
            finish = { "At 20, move on to cutting gems." },
        },
        {
            id = "crafting_cut_sapphire_activity",
            method = "crafting_cut_sapphire",
            title = "Cutting sapphires",
            intro = "Cut uncut sapphires with a chisel. 50 XP each and very AFK; gem cutting is a fast way to train.",
            checklist = {
                levels = { { skill = "Crafting", level = 20 } },
                items = {
                    { label = "Uncut sapphires", names = { "Uncut sapphire" }, count = 27 },
                    { label = "Chisel", contains = { "chisel" }, toolBelt = true },
                },
            },
            steps = {
                "Withdraw a backpack of uncut sapphires (the chisel is on your tool belt).",
                "Click an uncut sapphire and confirm in the make interface.",
                "Wait while the whole backpack is cut.",
                "Bank the cut sapphires and repeat.",
            },
            tips = {
                "A portable crafter gives +10% base XP and a 5% chance to save a gem, until portables are removed on 23 Nov 2026.",
                "Uncut sapphires have a high GE buy limit (10,000 every four hours).",
                "Opal, jade and red topaz can break when cut; sapphire and up are the recommended gems.",
            },
            finish = { "Emeralds at 27, rubies at 34 and diamonds at 43 give more XP." },
        },
        {
            id = "crafting_green_dhide_shield_activity",
            method = "crafting_green_dhide_shield",
            title = "Green dragonhide shields",
            intro = "Sew green dragon leather into shields with a needle and thread. 248 XP each, fast and usually profitable.",
            checklist = {
                levels = { { skill = "Crafting", level = 40 } },
                items = {
                    { label = "Green dragon leather", names = { "Green dragon leather" } },
                    { label = "Thread", names = { "Thread" } },
                    { label = "Needle", names = { "Needle" }, toolBelt = true },
                },
            },
            steps = {
                "Withdraw green dragon leather and thread (the needle works from your tool belt).",
                "Click the leather and choose green dragonhide shield.",
                "Wait while the backpack is used up.",
                "Bank the shields and repeat with a bank preset.",
            },
            tips = {
                "Up to about 1,600 bodies or shields can be made per hour with bank presets.",
                "With 55 Magic you can High Level Alchemy the shields.",
                "Bodies are another option: lower XP per hour but also profitable.",
            },
            finish = { "At 50, switch to blue dragonhide shields." },
        },
        {
            id = "crafting_battlestaves_activity",
            method = "crafting_battlestaves",
            title = "Elemental battlestaves",
            intro = "Attach elemental orbs to battlestaves. 220k (water) to 302.5k (air) base XP per hour, but you need a stockpile of staves.",
            checklist = {
                levels = { { skill = "Crafting", level = 54 } },
                items = {
                    { label = "Battlestaves", names = { "Battlestaff" }, count = 14 },
                    { label = "Elemental orbs", names = { "Air orb", "Water orb", "Earth orb", "Fire orb" }, count = 14 },
                },
                other = { "Levels: water 54, earth 58, fire 62, air 66" },
            },
            steps = {
                "Withdraw 14 battlestaves and 14 matching charged orbs.",
                "Use an orb on a battlestaff and confirm in the make interface.",
                "Wait while all 14 are crafted.",
                "Bank and repeat with a bank preset.",
            },
            tips = {
                "The GE limit is 5,000 battlestaves every four hours.",
                "Naff in Varrock square sells up to 8, more with Varrock armour.",
                "Baba Yaga (Lunar Diplomacy) and Haf in Prifddinas also sell battlestaves.",
            },
            finish = { "Sell or alch the elemental battlestaves." },
        },
        {
            id = "crafting_harps_activity",
            method = "crafting_harps",
            title = "Playing harps in Prifddinas",
            intro = "Play the harmonium harps in the Ithell district for Crafting XP and harmonic dust. Low attention, about 80k XP per hour.",
            checklist = {
                levels = {
                    { skill = "Crafting", level = 75 },
                    { skill = "Construction", level = 75 },
                },
                quests = { "Plague's End" },
            },
            steps = {
                "Go to the building in the south-west of the Ithell district; four harps surround the Ithell statue.",
                "Click a harp to start playing. Each successful note gives 80 XP and 1 harmonic dust.",
                "Watch the chat for how far out of tune the harp is.",
                "Click the harp again to retune it at about 20% out of tune.",
                "Keep playing and retuning.",
            },
            tips = {
                "Retuning gives 50 Construction XP per 10% out of tune.",
                "Voice of Seren in Ithell or an artificer's measure gives +20% XP.",
                "With Voice of Seren or the measure, retune at 10% or 20%.",
            },
            finish = { "Spend harmonic dust on crystal tools and equipment." },
        },
        {
            id = "crafting_exquisite_urns_activity",
            method = "crafting_exquisite_urns",
            title = "Making exquisite urns",
            intro = "Make exquisite urns from soft porcelain clay: form, fire and add a gem. Exquisite mining urns give 318 XP each.",
            checklist = {
                levels = { { skill = "Crafting", level = 102 } },
                items = {
                    { label = "Soft porcelain clay", names = { "Soft porcelain clay" } },
                },
                other = { "The gem for your urn type, e.g. jade for mining urns" },
            },
            steps = {
                "Use soft porcelain clay at a potter's wheel.",
                "Choose the exquisite urn type from the drop-down menu in the top left.",
                "Fire the unfired urns at a pottery oven, or cast Fire Urn.",
                "Add the cut gem to the (no gem) urns.",
                "Bank and repeat. Sell the (no rune) urns or keep them.",
            },
            tips = {
                "Mining urn steps: 78 XP to form, 120 to fire, 120 to add the gem.",
                "Skipping the gem step is faster per urn but gives less XP.",
                "Portable crafters (+10% base XP, wheel and oven in one) are removed on 23 Nov 2026.",
            },
            finish = { "Higher urns follow: cooking at 103, up to farming urns at 110." },
        },
    },
}
