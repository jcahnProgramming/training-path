--[[
    Smithing training guide (data only, no code).

    Source: RuneScape Wiki, "Pay-to-play Smithing training"
    https://runescape.wiki/w/Pay-to-play_Smithing_training
    Licensed CC BY-NC-SA 3.0. Numbers are copied from that page as of
    2026-10-21; anything the wiki didn't state has been left out rather
    than guessed.

    Format (the same for every skill guide):
      skill   = skill name, matching src/skills.lua
      source  = credit line shown at the bottom of the guide
      bands   = level ranges, lowest first. Each band:
          from, to = level range (from <= your level < to)
          methods  = ways to train in this range. Each method:
              name       = what you do
              intensity  = "high"   click-intensive / needs attention
                           "medium" a click every so often
                           "low"    AFK
              xpPerHour  = number, or nil if the wiki doesn't give one
              location, items, requirements, money, notes = short text (optional)
              activity   = id of an activity in src/activities/ (optional);
                           adds an "Open activity" button
      boosts  = list of short text lines about XP boosts for this skill
]]

return {
    skill = "Smithing",
    source = "Data: RuneScape Wiki, Pay-to-play Smithing training (CC BY-NC-SA 3.0)",

    bands = {
        {
            from = 1, to = 29,
            methods = {
                {
                    name = "The Knight's Sword (quest)",
                    intensity = "high",
                    notes = "Gives 12,725 XP: level 1 straight to 29. About 30 minutes.",
                },
                {
                    name = "Smelting bars (bronze, then iron, then steel)",
                    intensity = "low",
                    xpPerHour = 2000,
                    location = "Any furnace",
                    items = "Ores (and coal for steel)",
                    money = "Profitable",
                    notes = "Very slow but AFK. Bronze 2k XP/hr, iron 4k, steel 6k.",
                },
            },
        },
        {
            from = 29, to = 40,
            methods = {
                {
                    name = "Forging from bars",
                    intensity = "medium",
                    xpPerHour = 16667,
                    location = "Forge and anvil",
                    items = "Metal bars",
                    money = "Generally profitable",
                    notes = "Steel full helm +1 is about 16.7k XP/hr. AFK with a smithing autoheater.",
                },
                {
                    name = "Smelting bars (mithril)",
                    intensity = "low",
                    xpPerHour = 10000,
                    location = "Any furnace",
                    items = "Mithril ore and coal",
                    money = "Profitable",
                },
            },
        },
        {
            from = 40, to = 89,
            methods = {
                {
                    name = "Forging burial armour",
                    intensity = "medium",
                    xpPerHour = 85680,
                    location = "Burial forge and anvil, Artisans' Workshop",
                    items = "Highest-tier armour you can smith, bought from the GE",
                    money = "Very expensive",
                    notes = "Fastest method. Adamant 85.7k XP/hr, rune 168k, orikalkum 210k.",
                },
                {
                    name = "Orikalkum with strong smithing urns",
                    intensity = "medium",
                    location = "Fort Forinthry",
                    requirements = "Smithing 60; Crafting 49 to add fire runes to urns",
                    items = "Orikalkum bars in your metal bank, strong smithing urns",
                    notes = "Each full urn gives 1,450.8 bonus Smithing XP when teleported.",
                    activity = "urn_smithing",
                },
                {
                    name = "Forging from bars",
                    intensity = "medium",
                    xpPerHour = 48000,
                    location = "Forge and anvil",
                    items = "Metal bars",
                    money = "Generally profitable",
                    notes = "Rune full helm +3 is about 48k XP/hr, orikalkum +3 about 60k.",
                },
                {
                    name = "Smelting bars",
                    intensity = "low",
                    xpPerHour = 20000,
                    location = "Any furnace",
                    items = "Ores",
                    money = "Profitable",
                    notes = "Adamant 13.7k XP/hr, rune 20k, orikalkum 25.4k, necronium 34k.",
                },
            },
        },
        {
            from = 89, to = 99,
            methods = {
                {
                    name = "Forging burial armour",
                    intensity = "medium",
                    xpPerHour = 560000,
                    location = "Burial forge and anvil, Artisans' Workshop",
                    items = "Highest-tier armour you can smith, bought from the GE",
                    money = "Very expensive",
                    notes = "Bane 560k XP/hr, elder rune 1.26M.",
                },
                {
                    name = "Forging from bars",
                    intensity = "medium",
                    xpPerHour = 138272,
                    location = "Forge and anvil",
                    items = "Metal bars",
                    money = "Generally profitable",
                    notes = "Bane full helm +4 is about 138k XP/hr.",
                },
                {
                    name = "Corrupted ore",
                    intensity = "low",
                    xpPerHour = 400000,
                    location = "Prifddinas",
                    requirements = "Prifddinas access",
                    items = "Corrupted ore (mined, untradeable)",
                    notes = "160 XP per ore (192 with Voice of Seren). About 400k XP/hr with Voice of Seren and the full blacksmith's outfit.",
                },
            },
        },
        {
            from = 99, to = 111,
            methods = {
                {
                    name = "Forging burial armour",
                    intensity = "medium",
                    xpPerHour = 1260000,
                    location = "Burial forge and anvil, Artisans' Workshop",
                    items = "Highest-tier armour you can smith, bought from the GE",
                    money = "Very expensive",
                    notes = "Elder rune 1.26M XP/hr, primal 1.6M.",
                },
                {
                    name = "Smelting bars (primal)",
                    intensity = "low",
                    xpPerHour = 93000,
                    location = "Any furnace",
                    money = "Unprofitable",
                },
            },
        },
    },

    boosts = {
        "Blacksmith's outfit: +6% XP for the full set",
        "Smithing urns: +20% XP (exquisite +25%)",
        "Brawling gloves (Smithing): +50% XP",
        "Perfect juju smithing potion: +5% double progress",
        "Scroll of efficiency: 2% chance per bar to keep the bar",
    },
}
