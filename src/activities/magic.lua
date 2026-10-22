--[[
    Magic activities (data only). Format: docs/activity-format.md.
    Sources: RuneScape Wiki, Pay-to-play Magic training, Lvl-1 Enchant,
    Camelot Teleport, High Level Alchemy, Plank Make, Sift Soil, Lunar spells, Abyss.
    Licensed CC BY-NC-SA 3.0.
]]

return {
    skill = "Magic",
    source = "Data: RuneScape Wiki (CC BY-NC-SA 3.0)",

    activities = {
        {
            id = "magic_lvl1_enchant_activity",
            method = "magic_lvl1_enchant",
            title = "Enchanting sapphire necklaces",
            intro = "Turn sapphire necklaces into games necklaces with Lvl-1 Enchant: 17.5 XP per cast, about 48k XP/hr.",
            checklist = {
                levels = { { skill = "Magic", level = 7 } },
                items = {
                    { label = "Sapphire necklaces", names = { "Sapphire necklace" } },
                    { label = "Cosmic runes", names = { "Cosmic rune" } },
                    { label = "Water staff (or water runes)", contains = { "staff of water", "water battlestaff", "mystic water staff", "water rune" } },
                },
            },
            steps = {
                "Stand near a bank. Equip a water staff (or carry water runes) and carry the cosmic runes.",
                "Fill the rest of your backpack with sapphire necklaces.",
                "Cast Lvl-1 Enchant on the necklaces. A backpack takes about 35 seconds.",
                "Bank the games necklaces, withdraw more sapphire necklaces and repeat.",
            },
            tips = { "Profit or loss depends on necklace and cosmic rune prices; check before buying in bulk." },
            finish = { "At 21 Magic, Low Level Alchemy is faster until about level 40." },
        },
        {
            id = "magic_camelot_teleport_activity",
            method = "magic_camelot_teleport",
            title = "Casting Camelot Teleport",
            intro = "Cast Camelot Teleport over and over for 55.5 XP per cast. With a staff of air it only costs one law rune per cast.",
            checklist = {
                levels = { { skill = "Magic", level = 45 } },
                items = {
                    { label = "Law runes", names = { "Law rune" } },
                    { label = "Air staff (worn)", contains = { "staff of air", "air battlestaff", "mystic air staff" } },
                },
                other = { "Standard spellbook" },
            },
            steps = {
                "Equip the air staff and carry your law runes.",
                "Cast Camelot Teleport.",
                "As soon as you land, cast it again. The fastest is one cast every 1.8 seconds.",
            },
            tips = {
                "Put the spell on your action bar to cast it with one key.",
                "Making Camelot teleport tablets at a lectern gives a good profit but is 25-33% slower.",
            },
            finish = { "At 55 Magic, switch to High Level Alchemy; at 58, Watchtower Teleport gives more XP." },
        },
        {
            id = "magic_high_alchemy_activity",
            method = "magic_high_alchemy",
            title = "High Level Alchemy",
            intro = "Turn items into coins for 65 XP per cast. Up to 1,200 casts an hour (78k XP/hr). Many players alch all the way to 99.",
            checklist = {
                levels = { { skill = "Magic", level = 55 } },
                items = {
                    { label = "Nature runes", names = { "Nature rune" } },
                    { label = "Fire staff (worn)", contains = { "staff of fire", "fire battlestaff", "mystic fire staff" } },
                },
                other = { "Items to alch, noted is fine (check the profit first)" },
            },
            steps = {
                "Equip a fire staff so each cast only uses a nature rune.",
                "Put your spellbook (or skilling spells tab) in the same window as your backpack.",
                "Move the item stack right next to the High Level Alchemy icon.",
                "Click the spell, then the item. Repeat; each cast takes 5 ticks.",
            },
            tips = {
                "Noted items work, so you can alch almost anywhere.",
                "You can also drag an item onto your money pouch to alch it.",
                "Casting it 6+ ticks apart does not interrupt combat or gathering.",
                "Untradeable quest items, Treasure Hunter prizes and most Invention items cannot be alched.",
            },
        },
        {
            id = "magic_plank_make_activity",
            method = "magic_plank_make",
            title = "Plank Make on mahogany logs",
            intro = "Turn mahogany logs into planks with the Lunar spell Plank Make: 90 XP per cast, about 150k-162k XP/hr.",
            checklist = {
                levels = { { skill = "Magic", level = 86 } },
                quests = { "Dream Mentor" },
                items = {
                    { label = "Mahogany logs", names = { "Mahogany logs" } },
                    { label = "Astral runes (2 per cast)", names = { "Astral rune" } },
                    { label = "Nature runes", names = { "Nature rune" } },
                    { label = "Earth staff", contains = { "staff of earth", "earth battlestaff", "mystic earth staff", "mud battlestaff", "mystic mud staff" } },
                },
                other = { "Lunar spellbook", "1,050 coins per mahogany plank" },
            },
            steps = {
                "Stand near a bank with the Lunar spellbook active and an earth staff equipped.",
                "Carry the astral and nature runes and fill the backpack with mahogany logs.",
                "Cast Plank Make on a log. You can cast once every 3 ticks.",
                "Keep casting until the logs are gone, then bank the planks and repeat.",
            },
            tips = { "Faster XP than High Level Alchemy, but you need to stay near a bank." },
            finish = { "At 91 Magic, Sift Soil is cheaper and much faster." },
        },
        {
            id = "magic_sift_soil_activity",
            method = "magic_sift_soil",
            title = "Sift Soil",
            intro = "The Lunar spell Sift Soil screens up to 100 soil per cast for 93 Magic XP each. Over 500k XP/hr with the master archaeologist's outfit.",
            checklist = {
                levels = { { skill = "Magic", level = 91 } },
                quests = { "Lunar Diplomacy" },
                items = {
                    { label = "Astral runes", names = { "Astral rune" } },
                    { label = "Mud battlestaff", contains = { "mud battlestaff", "mud staff" } },
                },
                other = {
                    "Lunar spellbook",
                    "Soil from Archaeology in your backpack or archaeological soil box",
                },
            },
            steps = {
                "Equip the mud battlestaff so each cast only uses one astral rune.",
                "Fill your backpack and soil box with soil.",
                "Cast Sift Soil on the soil. It screens up to 100 soil, one at a time, without recasting.",
                "When the soil runs out, get more and cast again.",
            },
            tips = {
                "The master archaeologist's outfit cuts each soil to one tick.",
                "Signs of the porter send the materials to your bank.",
                "A waterfiend familiar finds extra materials, and grace of the elves can spawn Seren spirits.",
                "A high Archaeology level makes it more profitable.",
            },
        },
        {
            id = "magic_abyss_activity",
            method = "magic_abyss",
            title = "Abyssal monsters with air spells",
            intro = "15+ aggressive creatures spawn in the Abyss corners. With area abilities you get about 550k XP/hr AFK.",
            checklist = {
                items = {
                    { label = "Blood amulet of fury", names = { "Blood amulet of fury" } },
                },
                other = {
                    "Enter the Abyss miniquest (the Mage of Zamorak teleports you in)",
                    "Recommended: power armour, grand magic potion, Armadyl battlestaff (Air Surge without runes)",
                },
            },
            steps = {
                "Drink your magic potion and set your best air spell. The wiki rate uses Air Surge or Blood Barrage.",
                "Set up a Revolution bar: Corruption Blast, Tsunami, Dragon Breath, Chain, Sonic Wave.",
                "Let the creatures come to you and fight them.",
                "After 10 minutes they stop being aggressive. Run away and come back to reset them.",
            },
            tips = {
                "Corruption Blast adds about 28% XP per hour.",
                "Blood Barrage gives 5.6% more XP but costs far more than Air Surge.",
                "A blood amulet of fury or a bunyip is enough healing.",
                "Bring a charming imp: the creatures drop a lot of charms.",
            },
        },
    },
}
