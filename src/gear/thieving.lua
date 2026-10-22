--[[
    Thieving gear (data only, no code).
    Sources: RuneScape Wiki, "Pay-to-play Thieving training" (Useful equipment), "Safecracking",
    "Black ibis outfit", "Trahaearn exoskeleton set", "Tool belt" and the item pages linked below.
    Licensed CC BY-NC-SA 3.0. Format: docs/gear-format.md
]]

local feather = {
    slot = "Neck",
    label = "Featherfingered necklace",
    contains = { "featherfingered necklace" },
    tradeable = true,
    obtain = "Grand Exchange, or enchant an opal necklace with Lvl-1 Enchant.",
    notes = "10% chance to avoid damage and the stun when caught pickpocketing. 10 charges.",
    wiki = "https://runescape.wiki/w/Featherfingered_necklace",
}

local vitur = {
    slot = "Ring",
    label = "Ring of Vitur",
    names = { "Ring of Vitur" },
    tradeable = true,
    obtain = "Grand Exchange, or from the Darkmeyer magic stall, Darkmeyer chests and vyrelord/vyrelady consumers.",
    notes = "+5% pickpocket success. Also stops vyrewatch aggression.",
    wiki = "https://runescape.wiki/w/Ring_of_Vitur",
}

local ibis = {
    slot = "Outfit",
    label = "Black ibis outfit",
    contains = { "black ibis mask", "black ibis body", "black ibis legs", "black ibis boots" },
    levels = { { skill = "Thieving", level = 21 } },
    tradeable = false,
    obtain = "Rare reward from looting urns in the Pyramid Plunder minigame in Sophanem.",
    notes = "+1% XP per piece, +5% for the full set.",
    wiki = "https://runescape.wiki/w/Black_ibis_outfit",
}

local gloves = {
    slot = "Hands",
    label = "Gloves of silence",
    names = { "Gloves of silence" },
    levels = { { skill = "Hunter", level = 54 } },
    tradeable = true,
    obtain = "Grand Exchange, or bring 2 dark kebbit furs and 600 coins to the fancy-dress shop owner in Varrock.",
    notes = "+5% pickpocket success. Degrades on failed pickpockets.",
    wiki = "https://runescape.wiki/w/Gloves_of_silence",
}

local magpie = {
    slot = "Familiar",
    label = "Magpie pouch",
    names = { "Magpie pouch" },
    levels = { { skill = "Summoning", level = 47 } },
    tradeable = true,
    obtain = "Grand Exchange, or make at a Summoning obelisk (green charm, gold ring, 88 spirit shards).",
    notes = "Its special move gives +2 temporary Thieving levels.",
    wiki = "https://runescape.wiki/w/Magpie_pouch",
}

local lurker = {
    slot = "Familiar",
    label = "Abyssal lurker pouch",
    names = { "Abyssal lurker pouch" },
    levels = { { skill = "Summoning", level = 62 } },
    tradeable = true,
    obtain = "Grand Exchange, or make at a Summoning obelisk (green charm, abyssal charm, 119 spirit shards).",
    notes = "Its special move gives +4 temporary Thieving levels.",
    wiki = "https://runescape.wiki/w/Abyssal_lurker_pouch",
}

local excalibur = {
    slot = "Off-hand",
    label = "Enhanced Excalibur",
    contains = { "enhanced excalibur" },
    tradeable = false,
    obtain = "From the Lady of the Lake after the hard Seers' Village achievements (needs Seer's headband 3).",
    notes = "Heals 20% of your life points over 20 seconds. Useful on targets that hit hard.",
    wiki = "https://runescape.wiki/w/Enhanced_Excalibur",
}

local stethoscope = {
    slot = "Tool",
    label = "Stethoscope",
    names = { "Stethoscope" },
    tradeable = false,
    obtain = "Free from the safe-cracking trainer in the Thieves' Guild.",
    notes = "Cuts safe attempts from 3 ticks to 1 tick.",
    wiki = "https://runescape.wiki/w/Stethoscope",
}

local masterStethoscope = {
    slot = "Tool",
    label = "Master thief's stethoscope",
    names = { "Master thief's stethoscope" },
    toolBelt = true,
    tradeable = false,
    obtain = "Dodgy Derek's Dirty Deals in the Thieves' Guild for 2,500 pilfer points.",
    notes = "Same as a stethoscope but fits on the tool belt.",
    wiki = "https://runescape.wiki/w/Master_thief%27s_stethoscope",
}

local smallBag = {
    slot = "Other",
    label = "Small loot bag",
    names = { "Small loot bag" },
    tradeable = false,
    obtain = "Free from the safe-cracking trainer in the Thieves' Guild after the Thieves' Guild capers.",
    notes = "Holds safe loot. Fence it with Chief Thief Robin for XP and pilfer points.",
    wiki = "https://runescape.wiki/w/Small_loot_bag",
}

local mediumBag = {
    slot = "Other",
    label = "Medium loot bag",
    names = { "Medium loot bag" },
    tradeable = false,
    obtain = "Upgrade the small loot bag for 500 pilfer points at Dodgy Derek's Dirty Deals.",
    notes = "Holds more loot, so fewer trips to the Thieves' Guild.",
    wiki = "https://runescape.wiki/w/Medium_loot_bag",
}

local largeBag = {
    slot = "Other",
    label = "Large loot bag",
    names = { "Large loot bag" },
    tradeable = false,
    obtain = "Upgrade the medium loot bag for 2,000 pilfer points at Dodgy Derek's Dirty Deals.",
    wiki = "https://runescape.wiki/w/Large_loot_bag",
}

local bag = {
    slot = "Weapon",
    label = "Pickpocketing bag",
    names = { "Pickpocketing bag" },
    levels = { { skill = "Thieving", level = 71 }, { skill = "Invention", level = 22 } },
    tradeable = false,
    obtain = "Make with Invention after researching it (22 Invention).",
    notes = "No bonus by itself; holds two tool gizmos for Thieving perks.",
    wiki = "https://runescape.wiki/w/Pickpocketing_bag",
}

local mushroomBag = {
    slot = "Weapon",
    label = "Mushroomy pickpocketing bag",
    names = { "Mushroomy pickpocketing bag" },
    levels = { { skill = "Thieving", level = 81 }, { skill = "Invention", level = 82 } },
    tradeable = false,
    obtain = "Make with 82 Invention after discovering its blueprint.",
    notes = "5% chance of a faster pickpocket, plus two tool gizmo slots.",
    wiki = "https://runescape.wiki/w/Mushroomy_pickpocketing_bag",
}

local exo = {
    slot = "Outfit",
    label = "Trahaearn exoskeleton set",
    contains = { "exoskeleton headband", "exoskeleton torso", "exoskeleton legs", "exoskeleton bracers" },
    tradeable = false,
    obtain = "Reward from the quest Plague's End (needs 75 in many skills). Reclaim from Arianwyn.",
    notes = "Full set: chance to avoid stuns. Bracers act as gloves of silence. Keeps the black ibis XP bonus if owned.",
    wiki = "https://runescape.wiki/w/Trahaearn_exoskeleton_set",
}

local camo = {
    slot = "Outfit",
    label = "Camouflage outfit",
    contains = { "camouflage head", "camouflage body", "camouflage legs", "camouflage hands", "camouflage feet" },
    levels = { { skill = "Thieving", level = 80 }, { skill = "Invention", level = 20 } },
    tradeable = false,
    obtain = "Elite outfit: combine 3,600 camouflage fragments per piece at 80 Thieving and 20 Invention.",
    notes = "After Plague's End it works like the exoskeleton set and uses the black ibis XP bonus.",
    wiki = "https://runescape.wiki/w/Desert_camouflage_outfit",
}

local cape = {
    slot = "Cape",
    label = "Thieving cape",
    contains = { "thieving cape" },
    levels = { { skill = "Thieving", level = 99 } },
    tradeable = false,
    obtain = "Buy from Martin Thwait in the Rogues' Den for 99,000 coins at level 99.",
    notes = "Notes almost all pickpocket loot, so you bank far less.",
    wiki = "https://runescape.wiki/w/Thieving_cape",
}

return {
    skill = "Thieving",
    source = "Data: RuneScape Wiki, Pay-to-play Thieving training (CC BY-NC-SA 3.0)",

    bands = {
        { from = 1, to = 15, items = { feather, vitur } },
        { from = 15, to = 38, items = { ibis, feather, vitur } },
        { from = 38, to = 55, items = { ibis, vitur, gloves, feather, magpie } },
        { from = 55, to = 62, items = { ibis, vitur, gloves, feather, magpie, excalibur } },
        { from = 62, to = 76, items = { stethoscope, smallBag, ibis, gloves, vitur, bag } },
        { from = 76, to = 83, items = { exo, ibis, mediumBag, masterStethoscope, bag, lurker } },
        { from = 83, to = 90, items = { exo, camo, mushroomBag, vitur, mediumBag, lurker } },
        { from = 90, to = 95, items = { exo, camo, mushroomBag, vitur, masterStethoscope, largeBag } },
        { from = 95, to = 108, items = { cape, exo, camo, mushroomBag, vitur, masterStethoscope } },
        { from = 108, to = 121, items = { cape, exo, camo, mushroomBag, vitur, masterStethoscope } },
    },

    inventories = {
        thieving_safecracking_misthalin = {
            notes = "Hop between safes instead of waiting for them to reset. Click again when the safe flashes blue.",
            carry = {
                { label = "Stethoscope", contains = { "stethoscope" }, toolBelt = true },
                { label = "Loot bag", contains = { "loot bag" } },
            },
        },
        thieving_safecracking_asgarnia = {
            notes = "Hop between safes instead of waiting for them to reset.",
            carry = {
                { label = "Stethoscope", contains = { "stethoscope" }, toolBelt = true },
                { label = "Loot bag", contains = { "loot bag" } },
            },
        },
        thieving_safecracking_kandarin = {
            notes = "Thieves' Guild teleport tablets let you empty the loot bag quickly.",
            carry = {
                { label = "Stethoscope", contains = { "stethoscope" }, toolBelt = true },
                { label = "Loot bag", contains = { "loot bag" } },
            },
        },
        thieving_hidden_safes = {
            notes = "Thieves' Guild teleport tablets let you empty the loot bag quickly.",
            carry = {
                { label = "Stethoscope", contains = { "stethoscope" }, toolBelt = true },
                { label = "Loot bag", contains = { "loot bag" } },
            },
        },
        thieving_pp_vyrewatch_tither = {
            notes = "The Ring of Vitur stops vyrewatch aggression and boosts success.",
            wear = {
                { label = "Ring of Vitur", names = { "Ring of Vitur" } },
            },
            carry = {},
        },
    },
}
