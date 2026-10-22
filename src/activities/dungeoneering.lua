--[[
    Dungeoneering activities (data only, no code).
    Facts from the RuneScape Wiki pages: Pay-to-play Dungeoneering training,
    Sinkhole, Elite Dungeons, Daemonheim Dig Site, Dragonkin V,
    Large dungeoneering token box, Daily challenge, Resource dungeon
    (CC BY-NC-SA 3.0). Checked 2026-10-22.
]]

return {
    skill = "Dungeoneering",
    source = "Data: RuneScape Wiki (CC BY-NC-SA 3.0)",

    activities = {
        {
            id = "dungeoneering_solo_small_activity",
            method = "dungeoneering_solo_small",
            title = "Solo small floors",
            intro = "Run small dungeons on your own at high complexity. Each early level comes fast, and you only need to reach and kill the boss.",
            checklist = {
                items = {
                    { label = "Ring of kinship", names = { "Ring of kinship" } },
                },
                other = { "Empty backpack and no worn items except the ring (you get gear inside)" },
            },
            steps = {
                "If you have no ring of kinship, talk to the Dungeoneering tutor by the Daemonheim entrance.",
                "Right-click the ring, choose Open Party Interface, then Form Party.",
                "Enter a dungeon from the entrances on the left or right inside the castle. Pick small size and high complexity once unlocked.",
                "Bind your best two-handed weapon (or dual-wield set) so you keep it each floor.",
                "Open the rooms you can, kill guardian door monsters, then find and kill the boss.",
                "Complete floors in order; when all floors you can reach are done, reset your progress.",
            },
            tips = {
                "Your first floor finishes at low complexity, then complexity goes up; the bonus XP brings you to the next level.",
                "Each new resource dungeon you can enter gives one-time XP: 1,100 XP at level 10 (Edgeville Dungeon), 1,500 at 15 (Dwarven Mine).",
                "Finishing You Are It lets you find up to 5 necklace trinkets worth 10,000 XP each.",
            },
            finish = {
                "From about 20, try medium floors or large Furnished floors in a group.",
            },
        },
        {
            id = "dungeoneering_large_floors_activity",
            method = "dungeoneering_large_floors",
            title = "Large floors in a party",
            intro = "Large, high complexity floors at maximum difficulty in a party of 5 give the best floor XP and tokens.",
            checklist = {
                items = {
                    { label = "Ring of kinship", names = { "Ring of kinship" } },
                },
                other = { "A party, ideally of 5 players near your level" },
            },
            steps = {
                "Form or join a party through the ring of kinship.",
                "Set large size, high complexity and maximum difficulty.",
                "Inspect each room before entering, and only open doors you know you can get through.",
                "Pick up keys so the whole party can use them, and join in on guardian doors.",
                "Gather food and prayer before the boss, then fight it together; avoid soloing bosses.",
                "Complete floors of a theme to earn floor buffs, including a large floor XP boost.",
            },
            tips = {
                "Floor buffs reset once your progress count equals the floors you can reach.",
                "Skip dead-end rooms unless the party agreed to clear everything.",
                "Share food dropped by monsters with whoever is low.",
                "Upgrade your ring of kinship; Berserker or Tactician, Desperado, Blazer and Gatherer or Medic are worth it.",
            },
        },
        {
            id = "dungeoneering_sinkholes_activity",
            method = "dungeoneering_sinkholes",
            title = "Sinkholes",
            intro = "A short raid for 2 to 5 players outside Daemonheim. It gives an XP lamp and Dungeoneering tokens, twice a day.",
            checklist = {
                items = {
                    { label = "Ring of kinship", names = { "Ring of kinship" } },
                },
                other = { "Other players ready on the same world (2 to 5)", "Members only" },
            },
            steps = {
                "Talk to Talsar in the Daemonheim camp to see where the next sinkhole appears; he can teleport you there 5 minutes before.",
                "Sinkholes appear 30 minutes past each hour and collapse 15 minutes later.",
                "Bank everything except your ring of kinship in the grouping room, then tell the Gorajo you are ready.",
                "In the starting room, pick Melee, Magic or Ranged from the tables to get gear.",
                "Gather resources, kill monsters for combat totems and pick up exploratory totems, then deposit them in the chutes.",
                "Collect cards on the way; they decide your reward in the treasure room.",
            },
            tips = {
                "Deposits are worth 10 points per resource, 20 per exploratory totem and 30 per combat totem.",
                "A round ends when every quota is met or after seven minutes.",
                "Public groups are rare now, so arrange a group first.",
            },
            finish = {
                "Use the lamp on Dungeoneering; its XP depends on lamp size, your level and objectives met.",
            },
            repeats = "daily",
            repeatNote = "Two completed rounds per day, resetting at 00:00 game time. A D&D token (sinkholes) or daily D&D reset token can reset the limit once per day.",
        },
        {
            id = "dungeoneering_elite_dungeons_activity",
            method = "dungeoneering_elite_dungeons",
            title = "Elite Dungeons",
            intro = "Kill monsters in an Elite Dungeon for Dungeoneering XP and tokens along with combat XP. A team of three can get over 130k Dungeoneering XP an hour.",
            checklist = {
                other = {
                    "80+ combat stats",
                    "Quest access to the dungeon (Temple of Aminishi needs Impressing the Locals)",
                },
            },
            steps = {
                "Go to the dungeon and use the Grouping System to start solo or as a group.",
                "Pick normal mode; story mode cuts Dungeoneering tokens by 90%.",
                "Kill the mobs and mini-bosses; XP scales with the damage you did to each monster.",
                "Loot goes to the chest, which also works as a checkpoint.",
            },
            tips = {
                "If one monster spots you, nearby monsters join in, even around corners.",
                "Area-of-effect damage helps a lot against the groups of mobs.",
                "Elite sirenic, elite tectonic and trimmed masterwork gear do not degrade here.",
            },
            finish = {
                "This is also a good way to collect fragments for the elite skilling outfit.",
            },
        },
        {
            id = "dungeoneering_daemonheim_dig_activity",
            method = "dungeoneering_daemonheim_dig",
            title = "Dragonkin V for token boxes",
            intro = "Excavate at the Daemonheim Dig Site and hand in the Dragonkin V collection for 2 large Dungeoneering token boxes each time. No combat needed.",
            checklist = {
                levels = { { skill = "Archaeology", level = 77 } },
                items = {
                    { label = "Mattock", contains = { "mattock" }, toolBelt = true },
                    { label = "Archaeological soil box", names = { "Archaeological soil box" } },
                },
            },
            steps = {
                "Excavate castle hall rubble (73 Archaeology) for a castle gatestone and an engraved ring of kinship.",
                "Excavate the tunnelling equipment repository (77) for an exploratory totem and an excavator portal mine.",
                "Restore the four artefacts at an archaeologist's workbench.",
                "Hand them to Sharrigan, outside the Town Hall at the Anachronia base camp, to complete Dragonkin V.",
                "Open the large token boxes and spend the tokens on Dungeoneering XP at the Daemonheim Rewards shop, 1 token per XP.",
            },
            tips = {
                "Each box gives more tokens at higher Dungeoneering levels, so open only enough to reach your next level.",
                "At 87 Archaeology, Dragonkin VI also gives 2 large token boxes.",
                "Artefacts handed to collectors must be unnoted.",
            },
        },
        {
            id = "dungeoneering_daily_challenges_activity",
            method = "dungeoneering_daily_challenges",
            title = "Dungeoneering daily challenges",
            intro = "Block daily challenges for your maxed skills so Dungeoneering ones come up more often. Each one gives the XP of a large lamp.",
            checklist = {
                other = { "Several skills at their max level, so they can be blocked" },
            },
            steps = {
                "Talk to Challenge Mistress Fara, Rashida or Heriau and block challenges for skills you have mastered.",
                "Each day, check the Challenges tab of the Adventures interface.",
                "For a Daily Dungeoneering challenge, complete a Daemonheim floor, a Shifting Tomb or an Elite Dungeon.",
                "Open the Challenges tab and click Claim Rewards.",
            },
            tips = {
                "A small, low complexity floor is the quickest way to finish the challenge.",
                "Story mode Elite Dungeons do not count.",
                "The XP is set by your level when the challenge was given, not when you finish it.",
            },
            repeats = "daily",
            repeatNote = "Three new challenges each day after the 00:00 UTC reset; unfinished ones expire.",
        },
    },
}
