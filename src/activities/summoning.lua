--[[
    Summoning activities (data only, no code).
    Sources: RuneScape Wiki pages: Pay-to-play Summoning training (Pouches, How to make pouches,
    Methods using Beasts of Burden, Shrine of Inanna) and Summoning pouch (recipes).
    Licensed CC BY-NC-SA 3.0. Format: docs/activity-format.md
]]

return {
    skill = "Summoning",
    source = "Data: RuneScape Wiki (CC BY-NC-SA 3.0)",

    activities = {
        {
            id = "summoning_dreadfowl_activity",
            method = "summoning_dreadfowl",
            title = "Dreadfowl pouches",
            intro = "Infuse dreadfowl pouches at an obelisk with gold charms and raw chicken. 9.3 XP each and cheap.",
            checklist = {
                levels = { { skill = "Summoning", level = 4 } },
                items = {
                    { label = "Gold charms", names = { "Gold charm" } },
                    { label = "Spirit shards (8 per pouch)", names = { "Spirit shards" }, count = 8 },
                    { label = "Empty pouches", names = { "Pouch" } },
                    { label = "Raw chicken", names = { "Raw chicken" } },
                },
            },
            steps = {
                "Buy empty pouches (1 gp) and spirit shards (25 gp) from Pikkupstix in Taverley if you need them.",
                "Load a bank preset: charms, pouches and shards in the last three slots, the rest raw chicken.",
                "Go to the obelisk and click it to infuse all the pouches at once.",
                "Bank, reload the preset and repeat.",
            },
            tips = {
                "Wolf Whistle gives 275 gold charms, enough to reach about level 16.",
                "Save your green, crimson and blue charms for better pouches later.",
                "Swap finished pouches with Bogrog for 70% of the shards back, or sell or alch them.",
            },
            finish = {
                "At 16 switch to granite crab pouches (iron ore).",
            },
        },
        {
            id = "summoning_spirit_terrorbird_activity",
            method = "summoning_spirit_terrorbird",
            title = "Spirit terrorbird pouches",
            intro = "Use gold charms on spirit terrorbird pouches (raw bird meat, 12 shards, 68.4 XP each). The best use of gold charms from 52 to 66.",
            checklist = {
                levels = { { skill = "Summoning", level = 52 } },
                items = {
                    { label = "Gold charms", names = { "Gold charm" } },
                    { label = "Spirit shards (12 per pouch)", names = { "Spirit shards" }, count = 12 },
                    { label = "Empty pouches", names = { "Pouch" } },
                    { label = "Raw bird meat", names = { "Raw bird meat" } },
                },
            },
            steps = {
                "Load a bank preset: charms, pouches and shards in the last three slots, the rest raw bird meat.",
                "Optional: summon a beast of burden and fill it with more raw bird meat.",
                "Go to an obelisk near a bank (Menaphos Merchant district, Prifddinas Amlodd district or Taverley).",
                "Click the obelisk to make the pouches.",
                "With a beast of burden: drop the meat you can't use yet, take the rest out of the familiar, make the pouches, store them in the familiar, pick the meat back up and make a second batch.",
                "Bank and repeat.",
            },
            tips = {
                "Keep charms, pouches and shards as the LAST three items or the beast of burden trick won't work.",
                "Bank presets make each trip one click.",
                "In Prifddinas, Voice of Seren in Amlodd gives +20% base XP.",
            },
            finish = {
                "At 66 use gold charms on barker toads instead.",
            },
        },
        {
            id = "summoning_ibis_activity",
            method = "summoning_ibis",
            title = "Ibis pouches",
            intro = "Use green charms on ibis pouches (harpoon, 109 shards, 98.8 XP each).",
            checklist = {
                levels = { { skill = "Summoning", level = 56 } },
                items = {
                    { label = "Green charms", names = { "Green charm" } },
                    { label = "Spirit shards (109 per pouch)", names = { "Spirit shards" }, count = 109 },
                    { label = "Empty pouches", names = { "Pouch" } },
                    { label = "Harpoons", names = { "Harpoon" } },
                },
            },
            steps = {
                "Load a bank preset: charms, pouches and shards in the last three slots, the rest harpoons.",
                "Go to an obelisk near a bank.",
                "Click the obelisk to make the pouches.",
                "Bank and repeat. A beast of burden full of harpoons lets you make a second batch per trip.",
            },
            tips = {
                "Shards are the main cost; swapping pouches with Bogrog or Lord Amlodd returns 70%.",
                "With the hard Tirannwn achievements Lord Amlodd returns 77%.",
            },
            finish = {
                "At 69 switch green charms to fruit bat or bunyip pouches.",
            },
        },
        {
            id = "summoning_geyser_titan_activity",
            method = "summoning_geyser_titan",
            title = "Geyser titan pouches",
            intro = "Use blue charms on geyser titan pouches (water talisman, 222 shards, 783.2 XP each). The best use of blue charms from 89.",
            checklist = {
                levels = { { skill = "Summoning", level = 89 } },
                items = {
                    { label = "Blue charms", names = { "Blue charm" } },
                    { label = "Spirit shards (222 per pouch)", names = { "Spirit shards" }, count = 222 },
                    { label = "Empty pouches", names = { "Pouch" } },
                    { label = "Water talismans", names = { "Water talisman" } },
                },
            },
            steps = {
                "Load a bank preset: charms, pouches and shards in the last three slots, the rest water talismans.",
                "Teleport to the obelisk (Taverley, or Amlodd in Prifddinas with a crystal teleport seed).",
                "Click the obelisk to make the pouches.",
                "Teleport to a bank and repeat.",
            },
            tips = {
                "The beast of burden drop trick doesn't work well here: a talisman's action bar option is Locate, not Drop.",
                "Spirit gems and the modified shaman's headdress can save blue charms.",
                "Shrine of Inanna obelisks make pouches one by one but build a buff that adds XP; build it with cheap pouches first.",
            },
        },
    },
}
