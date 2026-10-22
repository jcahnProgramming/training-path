--[[
    Necromancy activities (data only). Format: docs/activity-format.md.
    Sources: RuneScape Wiki, Necromancy training, Rituals, Lesser communion,
    Greater communion, Powerful necroplasm (ritual), Soul Supplies, Basic ritual
    candle, Glyphs, Ghostly troll bruiser, Bloodveld, Ravenous ghoul.
    Licensed CC BY-NC-SA 3.0.
]]

return {
    skill = "Necromancy",
    source = "Data: RuneScape Wiki (CC BY-NC-SA 3.0)",

    activities = {
        {
            id = "necromancy_lesser_communion_activity",
            method = "necromancy_lesser_communion",
            title = "Lesser communion rituals",
            intro = "Turn fragile mementos into souls for the Well of Souls. 50 rituals give 400 souls (tier 3 talents) and about level 26.",
            checklist = {
                levels = { { skill = "Necromancy", level = 5 } },
                quests = { "Necromancy!" },
                items = {
                    { label = "Fragile mementos (noted is fine)", names = { "Fragile memento" }, count = 50 },
                },
                other = { "Basic ghostly ink and basic ritual candles (3 coins each at Soul Supplies)" },
            },
            steps = {
                "Buy basic ghostly ink and basic ritual candles from Lupe's Soul Supplies shop in the City of Um.",
                "At the ritual site, draw 1 Elemental I and 2 Commune I glyphs on glyph spots (11 basic ink in total).",
                "Place 4 basic ritual candles on the light source spots.",
                "At the pedestal, choose Lesser communion with fragile mementos as the focus. Keep the mementos in your backpack.",
                "Interact with the platform to start the ritual. Each one gives 200 XP.",
                "Click any disturbance that appears: a wandering soul to dismiss it, or a sparkling glyph to restore it.",
                "When glyphs or candles run out, use Repair all on the pedestal, then start again.",
            },
            tips = {
                "Tier 1 glyphs and basic candles last 6 rituals.",
                "Leaving the ritual area quits the ritual and the focus is lost.",
                "Lupe gives 4 basic ritual candles for free.",
            },
            finish = {
                "At about 26, do the Kili Row and Rune Mythos quests.",
                "Then do 2 lesser ensoul material rituals to upgrade your death guard and skull lantern to tier 20 (needs 15 Smithing).",
            },
        },
        {
            id = "necromancy_ghostly_trolls_activity",
            method = "necromancy_ghostly_trolls",
            title = "Ghostly trolls in the City of Um",
            intro = "Ghostly troll bruisers and throwers give 90 XP per kill and are weak to undead slayer effects.",
            checklist = {
                items = {
                    { label = "Death guard", contains = { "death guard" } },
                    { label = "Skull lantern", contains = { "skull lantern" } },
                },
                other = { "Optional: salve amulet (e) for extra damage on undead" },
            },
            steps = {
                "Equip your death guard and skull lantern.",
                "Attack a bruiser or thrower; there are seven of each in the cave.",
                "Keep killing and use your Necromancy abilities as they come up.",
            },
            tips = {
                "Combat XP depends on the monster's life points.",
                "Weapon poison, a dwarf multicannon and similar damage give no Necromancy XP.",
            },
            finish = { "At 20, upgrade your gear with Kili (needs Kili Row) before moving on." },
        },
        {
            id = "necromancy_greater_communion_activity",
            method = "necromancy_greater_communion",
            title = "Greater communion rituals",
            intro = "Turn spirit mementos into souls. With two Multiply II glyphs you get 43 souls per ritual: 38 rituals unlock Spectral Scythe (2,000 souls).",
            checklist = {
                levels = { { skill = "Necromancy", level = 60 } },
                items = {
                    { label = "Spirit mementos", names = { "Spirit memento" } },
                },
                other = {
                    "Ghostly ink for the glyphs (Commune II needs greater ghostly ink)",
                    "66 Necromancy for Multiply II (necromancy potions work)",
                    "6 ritual candles",
                },
            },
            steps = {
                "Draw 2 Elemental II, 1 Commune I and 2 Commune II glyphs on glyph spots.",
                "Draw 2 Multiply II glyphs in spare spots for more souls.",
                "Place 6 ritual candles on the light source spots.",
                "At the pedestal, choose Greater communion with spirit mementos as the focus.",
                "Interact with the platform to start. Each ritual gives 1,480 XP.",
                "Click disturbances as they appear. For a shambling horror, click it and then its target in green smoke.",
                "Use Repair all on the pedestal when glyphs or candles run out.",
            },
            tips = {
                "Communion rituals only work at the Um ritual site.",
                "Greater ghostly ink: 20 greater necroplasm, a vial of water and ashes.",
                "Spectral Scythe upgrades need 4,500 souls (level 70) and 8,500 souls (level 80).",
            },
        },
        {
            id = "necromancy_bloodvelds_activity",
            method = "necromancy_bloodvelds",
            title = "AFK bloodvelds",
            intro = "Bloodvelds give 512 XP per kill and do not hit hard. With aggression potions you get at least 200k XP/hr AFK.",
            checklist = {
                levels = { { skill = "Slayer", level = 50 } },
                items = {
                    { label = "Aggression potions", contains = { "aggression" } },
                },
            },
            steps = {
                "Drink an aggression potion so the bloodvelds attack you.",
                "Fight them with your Necromancy gear and abilities.",
                "Drink another aggression potion when it runs out.",
                "Pick up congealed blood: it is used for super necromancy potions.",
            },
            tips = { "They do not hit as hard as bound skeletons." },
        },
        {
            id = "necromancy_powerful_necroplasm_activity",
            method = "necromancy_powerful_necroplasm",
            title = "Powerful necroplasm rituals",
            intro = "Near top ritual XP for less cost. Most of the XP comes from disturbances, so click every one.",
            checklist = {
                levels = { { skill = "Necromancy", level = 90 } },
                items = {
                    { label = "Greater necroplasm", names = { "Greater necroplasm" }, count = 200 },
                    { label = "Alteration necklace (worn)", names = { "Alteration necklace" } },
                },
                other = {
                    "10 ritual candles",
                    "Ink for 2 Elemental II, 4 Elemental III, 2 Reagent III and 3 Attraction III glyphs",
                    "A +17 boost (supreme or elder overload) to draw Attraction III at level 90",
                },
            },
            steps = {
                "Clear all the dust on the ritual site (unlocked at level 90).",
                "Draw 2 Elemental II, 4 Elemental III and 2 Reagent III glyphs.",
                "Boost your level and draw 3 Attraction III glyphs in spare spots (aim for 501%+ soul attraction).",
                "Place 10 ritual candles on the light source spots.",
                "At the pedestal, choose Powerful necroplasm with greater necroplasm as the focus, then start at the platform.",
                "Disturbances come at 70, 58, 46, 34, 22 and 10 on the ritual timer. Click each one.",
                "Use Repair all on the pedestal when components run out.",
            },
            tips = {
                "Defile: click the miasma, and click it once more right after the fizzle sound to stop the reset.",
                "Soul storm: click each of its three stages; only the third gives items.",
                "Corrupt glyphs: click them in order 1, 2, 3 (count the lines).",
                "Turn on game audio; wandering souls and shambling horrors show as yellow minimap dots.",
                "Glyphs drawn together all run out together after 36 rituals.",
            },
        },
        {
            id = "necromancy_ravenous_ghouls_activity",
            method = "necromancy_ravenous_ghouls",
            title = "AFK ravenous ghouls",
            intro = "Ravenous ghouls give 725 XP per kill, up to 850k XP/hr AFK. The loot is bad.",
            checklist = {
                items = {
                    { label = "Blood essence (worn)", contains = { "blood essence" } },
                },
            },
            steps = {
                "Equip a blood essence so all the ghouls in the crypt are aggressive.",
                "Fight them with your Necromancy gear and abilities.",
                "Keep going; they keep attacking while the blood essence is worn.",
            },
            tips = { "They drop bones used for the demon horn necklace." },
        },
    },
}
