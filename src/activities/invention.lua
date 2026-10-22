--[[
    Invention activities (data only, no code).
    Facts from the RuneScape Wiki pages: Invention training, Invention
    Tutorial, Augmentor, Equipment siphon, Equipment level, Divine charge
    (CC BY-NC-SA 3.0). Checked 2026-10-22.
    Note: the wiki's gizmo section recommends ancient WEAPON gizmo shells,
    because ancient armour shells cannot take timeworn components.
]]

return {
    skill = "Invention",
    source = "Data: RuneScape Wiki (CC BY-NC-SA 3.0)",

    activities = {
        {
            id = "invention_tutorial_activity",
            method = "invention_tutorial",
            title = "Invention tutorial",
            intro = "Doc's tutorial unlocks Invention. Get Perfect optimisation on the discoveries and it takes you to level 4.",
            checklist = {
                levels = {
                    { skill = "Crafting", level = 80 },
                    { skill = "Divination", level = 80 },
                    { skill = "Smithing", level = 80 },
                },
            },
            steps = {
                "Talk to Doc in the Invention Guild, then use his inventor's workbench.",
                "Choose Discover and click the charge pack blueprint.",
                "Pick 5 of the 10 modules and use Prototype; crossed-out modules are wrong. Swap until all 5 are right.",
                "Reorder the modules until the rating is Perfect, for the most XP.",
                "Disassemble Doc's rotten timber and old clothes from the parts bin, then follow Doc to manufacture.",
            },
            tips = {
                "Ratings: Poor 0 in place, Satisfactory 1, Good 2, Excellent 3, Perfect 5.",
                "If you end short of level 4, disassemble items such as a yew longbow (12 XP).",
            },
            finish = {
                "At level 4, research the item level 5 cap straight away.",
            },
        },
        {
            id = "invention_black_salamanders_activity",
            method = "invention_black_salamanders",
            title = "Augmented black salamanders",
            intro = "Augment two black salamanders, level them to item level 5 in combat, then disassemble them. A cheap way from 4 to 27.",
            checklist = {
                items = {
                    { label = "Black salamander (x2)", contains = { "black salamander" }, count = 2 },
                    { label = "Augmentor (x2)", names = { "Augmentor" }, count = 2 },
                    { label = "Harralander tar", names = { "Harralander tar" } },
                },
                other = { "Item level 5 research done", "Divine charges in your charge pack" },
            },
            steps = {
                "Use an augmentor on each black salamander (50 XP each).",
                "Wield one with harralander tar as ammo and fight monsters that give fast combat XP.",
                "Keep going until the salamander reaches item level 5, then do the same with the second.",
                "Disassemble both at level 5; the salamander and augmentor are used up.",
            },
            tips = {
                "Item XP comes from combat XP, so faster combat means faster Invention.",
                "Use the Check option on the item to see its level.",
            },
            finish = {
                "At 27, discover the item level 10 research and the equipment siphon.",
            },
        },
        {
            id = "invention_magic_logs_activity",
            method = "invention_magic_logs",
            title = "Magic logs into divine charges",
            intro = "Disassemble magic logs into simple parts, then make divine charges. Slow but cheap, and the charges sell for a small profit.",
            checklist = {
                items = {
                    { label = "Magic logs", names = { "Magic logs" } },
                    { label = "Divine energy", contains = { "incandescent energy", "luminous energy", "radiant energy", "brilliant energy", "elder energy" } },
                },
            },
            steps = {
                "Disassemble magic logs; they almost always give simple parts and 2 XP each.",
                "Make divine charges from 20 simple parts and divine energy (for example 225 incandescent energy).",
                "Each charge gives 220 Invention and 80 Divination XP.",
                "Divine charges can be made anywhere; no workbench is needed.",
            },
            tips = {
                "Level 5 to 22 takes about 6,972 magic logs and 74,700 incandescent energy, around 2 to 3 hours.",
            },
            finish = {
                "Sell spare divine charges, or keep them for your charge pack.",
            },
        },
        {
            id = "invention_combat_augmented_activity",
            method = "invention_combat_augmented",
            title = "Augmented gear and siphons",
            intro = "Train combat in augmented gear and siphon the item XP into Invention. The fastest repeatable method.",
            checklist = {
                levels = { { skill = "Invention", level = 27 } },
                items = {
                    { label = "Equipment siphon", names = { "Equipment siphon" } },
                    { label = "XP Capacitor 5000 (optional)", contains = { "xp capacitor 5000" } },
                },
                other = { "Augmented weapon, off-hand, body and legs (legs need the level 45 research)", "Divine charges in your charge pack" },
            },
            steps = {
                "Wear a full set of augmented gear, the highest tier you can.",
                "Fight groups of monsters; area damage gives far more item XP.",
                "When an item reaches level 9 (faster XP) or 12 (cheaper), use an equipment siphon on it.",
                "Repeat; siphoning keeps the item and its augmentor.",
            },
            tips = {
                "An activated XP Capacitor 5000 in your backpack doubles item XP. With it, siphon at level 9.",
                "At 77 Invention, a mechanised siphon siphons items for you at a level you choose.",
                "The Enlightened perk adds 3% item XP per rank.",
            },
            finish = {
                "Slayer or bossing in augmented gear works too.",
            },
        },
        {
            id = "invention_skilling_augmented_activity",
            method = "invention_skilling_augmented",
            title = "Augmented tools",
            intro = "Train a gathering skill with an augmented tool and siphon it. Slower than combat, but it trains alongside other skills.",
            checklist = {
                levels = { { skill = "Invention", level = 22 } },
                items = {
                    { label = "Equipment siphon", names = { "Equipment siphon" } },
                },
                other = { "An augmented hatchet, pickaxe, mattock or fishing rod-o-matic" },
            },
            steps = {
                "Research augmenting tools at level 22, then augment your tool.",
                "Use it at a fast XP method for that skill; tool XP follows your skill XP.",
                "Siphon the tool at level 9 or 12.",
            },
            tips = {
                "An augmented crystal fishing rod at Fishing Frenzy (Deep Sea Fishing hub) gets over 26,300 item XP an hour at 99 Fishing.",
                "Siphon expensive tools; only disassemble cheap ones like the rod-o-matic.",
            },
        },
        {
            id = "invention_ancient_gizmos_activity",
            method = "invention_ancient_gizmos",
            title = "Ancient gizmos with timeworn components",
            intro = "Make ancient gizmos filled with timeworn components. By far the fastest Invention XP, and very expensive.",
            checklist = {
                levels = { { skill = "Invention", level = 86 } },
                other = {
                    "Ancient gizmos blueprint researched",
                    "Timeworn components discovered (drink an extreme invention potion to reach 103)",
                    "Lots of coins for shells and timeworn crates",
                },
            },
            steps = {
                "Make ancient weapon gizmo shells; the wiki says armour shells cannot take timeworn components.",
                "Buy timeworn crates on the Grand Exchange for timeworn components.",
                "Fill each shell with timeworn components and create the gizmo.",
                "Use the repeat button to make and disassemble gizmos quickly.",
            },
            tips = {
                "Torstol incense sticks boost this method.",
                "Gizmo XP is the sum of the XP of each material used.",
            },
        },
    },
}
