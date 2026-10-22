--[[
    Ranged activities (data only). Format: docs/activity-format.md.
    Sources: RuneScape Wiki, Pay-to-play Ranged training, Cow, Beefy Bill,
    Chaos druid, Mighty Banshee, Pollnivneach Slayer Dungeon, Abyss, Waterfiend.
    Licensed CC BY-NC-SA 3.0.
]]

return {
    skill = "Ranged",
    source = "Data: RuneScape Wiki (CC BY-NC-SA 3.0)",

    activities = {
        {
            id = "ranged_cows_activity",
            method = "ranged_cows",
            title = "Shooting cows",
            intro = "Kill cows for 25.5 XP each. Less crowded than chickens, and the hides sell or train Crafting.",
            checklist = {
                other = { "A bow and arrows (or another ranged weapon) equipped" },
            },
            steps = {
                "Attack a cow and keep attacking the next one as soon as it dies.",
                "Pick up cowhides if you want to sell them or use them for Crafting.",
                "When your backpack is full, Beefy Bill can send cowhides and raw beef to your bank for a 10% fee.",
                "Pick up more ammo or restock before you run out.",
            },
            tips = {
                "Cow calves give a little less XP (24.5).",
                "XP per kill is low, so it needs constant attention.",
            },
            finish = { "At 20 Ranged, move on to chaos druids, giant bats or hill giants in Taverley Dungeon." },
        },
        {
            id = "ranged_chaos_druids_activity",
            method = "ranged_chaos_druids",
            title = "Chaos druids with arrows",
            intro = "Chaos druids are weak to arrows, aggressive and hit low, so you can train with little effort. They drop herbs often.",
            checklist = {
                items = {
                    { label = "Arrows (druids are weak to arrows)", contains = { " arrow" } },
                },
                other = { "A bow equipped" },
            },
            steps = {
                "Equip your bow and arrows.",
                "Attack a druid. Others are aggressive and will come to you.",
                "Keep killing; each kill gives 66 XP or more.",
                "Pick up the herbs they drop, and bank when your backpack is full.",
            },
            tips = {
                "The area may be crowded. Try another world if it is.",
            },
            finish = { "At 40 Ranged, move on to infernal mages, pyrefiends or green dragons." },
        },
        {
            id = "ranged_mighty_banshees_activity",
            method = "ranged_mighty_banshees",
            title = "Mighty banshees",
            intro = "Mighty banshees are weak to arrows and have low health. 307.5 XP per kill, with herb and alchable drops.",
            checklist = {
                items = {
                    { label = "Masked earmuffs or slayer helmet (worn)", contains = { "masked earmuffs", "slayer helmet", "mask of mourning", "helm of keening" } },
                    { label = "Arrows (weak to arrows)", contains = { " arrow" } },
                },
                other = { "Smoking Kills: the full dungeon opens after the quest" },
            },
            steps = {
                "Put on masked earmuffs or a slayer helmet before you go near them, or your stats get drained.",
                "Equip your bow and arrows.",
                "Attack a banshee. They are aggressive, so more will come to you.",
                "Pick up herbs and alchables, and bank or alch when you are full.",
            },
            tips = {
                "They cast strong fire spells. Protect from Magic helps at lower levels.",
                "Charm drops are rare here.",
            },
            finish = { "At 70 Ranged, try mature grotworms, aviansies or red dragons." },
        },
        {
            id = "ranged_afk_waterfiends_activity",
            method = "ranged_afk_waterfiends",
            title = "AFK waterfiends at Ghorrock",
            intro = "With Soul Split and good gear you can AFK waterfiends for about 350k XP/hr (450k if you pay attention), plus 100+ crimson charms.",
            checklist = {
                levels = { { skill = "Prayer", level = 92 } },
                quests = { "The Temple at Senntisten" },
                items = {
                    { label = "Prayer potions", contains = { "prayer potion" }, count = 20 },
                    { label = "Overloads", contains = { "overload" }, count = 4 },
                    { label = "Sharks (emergency)", names = { "Shark" }, count = 2 },
                },
                other = {
                    "At least tier 70 armour and tier 80 weapons",
                    "Optional: 2 geyser titan pouches, or a beast of burden full of prayer potions",
                },
            },
            steps = {
                "Drink an overload and turn on Soul Split.",
                "Pick a room that suits your gear: the first room has 4 waterfiends, the second has 6.",
                "Attack the waterfiends; they are weak to bolts.",
                "Drink prayer potions as needed and re-drink overloads when they run out.",
                "After 10 minutes they stop being aggressive. Run to the next room, or climb the ladder in the first room up and back down, to reset them.",
            },
            tips = {
                "Soul Split should be all the healing you need; the sharks are only for emergencies.",
            },
        },
        {
            id = "ranged_abyss_chinchompas_activity",
            method = "ranged_abyss_chinchompas",
            title = "Red chinchompas in the Abyss",
            intro = "15+ aggressive abyssal creatures spawn in the south-west and south-east corners. Red chinchompas hit up to 9 at once for about 700k XP/hr AFK.",
            checklist = {
                levels = { { skill = "Ranged", level = 55 } },
                items = {
                    { label = "Red chinchompas", names = { "Red chinchompa" } },
                    { label = "Blood amulet of fury", names = { "Blood amulet of fury" } },
                },
                other = {
                    "Enter the Abyss miniquest (the Mage of Zamorak teleports you in)",
                    "Recommended: power armour, off-hand Armadyl crossbow, grand ranging potion",
                },
            },
            steps = {
                "Drink your ranging potion and equip the chinchompas.",
                "Set up a Revolution bar: Corruption Shot, Death's Swiftness, Bombardment, Deadshot, Fragmentation Shot, Needle Strike, Snipe, Binding Shot.",
                "Let the creatures come to you and attack so the chinchompas hit as many as possible.",
                "After 10 minutes they stop being aggressive. Run away and come back to reset them.",
            },
            tips = {
                "Corruption Shot is critical: about 28% more XP per hour.",
                "Ricochet does not work well with chinchompas.",
                "A blood amulet of fury or a bunyip is enough healing.",
                "Bring a charming imp: the creatures drop a lot of charms.",
            },
        },
    },
}
