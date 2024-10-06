data:extend {
    -- entity
    {
        type = "construction-robot",
        name = "construction-robot-nuclear",
        icon = "__AposNuclearBotsSE__/graphics/icons/construction-robot-nuclear.png",
        icon_size = 32,
        flags = { "placeable-player", "player-creation", "placeable-off-grid", "not-on-map" },
        minable = { hardness = 0.1, mining_time = 0.1, result = "construction-robot-nuclear" },
        resistances = { { type = "fire", percent = 100 }, { type = "acid", percent = 50, decrease = 25 } },
        hide_resistances = false,
        max_health = 500,
        dying_explosion = "massive-explosion",
        collision_box = { { 0, 0 }, { 0, 0 } },
        selection_box = { { -0.5, -1.5 }, { 0.5, -0.5 } },
        max_payload_size = 1,
        speed = 0.06,
        transfer_distance = 0.5,
        max_energy = "1.5MJ",
        energy_per_tick = "0kJ",
        speed_multiplier_when_out_of_energy = 0.2,
        energy_per_move = "0kJ",
        min_to_charge = 0.2,
        max_to_charge = 0.95,
        working_light = { intensity = 0.8, size = 3 },
        idle = {
            filename = "__AposNuclearBotsSE__/graphics/entity/construction-robot/construction-robot-nuclear.png",
            priority = "high",
            line_length = 16,
            width = 32,
            height = 36,
            frame_count = 1,
            shift = { 0, -0.15625 },
            direction_count = 16,
        },
        in_motion = {
            filename = "__AposNuclearBotsSE__/graphics/entity/construction-robot/construction-robot-nuclear.png",
            priority = "high",
            line_length = 16,
            width = 32,
            height = 36,
            frame_count = 1,
            shift = { 0, -0.15625 },
            direction_count = 16,
            y = 36,
        },
        shadow_idle = {
            filename = "__AposNuclearBotsSE__/graphics/entity/construction-robot/construction-robot-nuclear-shadow.png",
            priority = "high",
            line_length = 16,
            width = 50,
            height = 24,
            frame_count = 1,
            shift = { 1.09375, 0.59375 },
            direction_count = 16,
        },
        shadow_in_motion = {
            filename = "__AposNuclearBotsSE__/graphics/entity/construction-robot/construction-robot-nuclear-shadow.png",
            priority = "high",
            line_length = 16,
            width = 50,
            height = 24,
            frame_count = 1,
            shift = { 1.09375, 0.59375 },
            direction_count = 16,
        },
        working = {
            filename = "__AposNuclearBotsSE__/graphics/entity/construction-robot/construction-robot-nuclear-working.png",
            priority = "high",
            line_length = 2,
            width = 28,
            height = 36,
            frame_count = 2,
            shift = { 0, -0.15625 },
            direction_count = 16,
            animation_speed = 0.3,
        },
        shadow_working = {
            stripes = util.multiplystripes(2, {
                {
                    filename = "__AposNuclearBotsSE__/graphics/entity/construction-robot/construction-robot-nuclear-shadow.png",
                    width_in_frames = 16,
                    height_in_frames = 1,
                },
            }),
            priority = "high",
            width = 50,
            height = 24,
            frame_count = 2,
            shift = { 1.09375, 0.59375 },
            direction_count = 16,
        },
        smoke = {
            filename = "__base__/graphics/entity/smoke-construction/smoke-01.png",
            width = 39,
            height = 32,
            frame_count = 19,
            line_length = 19,
            shift = { 0.078125, -0.15625 },
            animation_speed = 0.3,
        },
        sparks = {
            {
                filename = "__base__/graphics/entity/sparks/sparks-01.png",
                width = 39,
                height = 34,
                frame_count = 19,
                line_length = 19,
                shift = { -0.109375, 0.3125 },
                tint = { r = 1.0, g = 0.9, b = 0.0, a = 1.0 },
                animation_speed = 0.3,
            },
            {
                filename = "__base__/graphics/entity/sparks/sparks-02.png",
                width = 36,
                height = 32,
                frame_count = 19,
                line_length = 19,
                shift = { 0.03125, 0.125 },
                tint = { r = 1.0, g = 0.9, b = 0.0, a = 1.0 },
                animation_speed = 0.3,
            },
            {
                filename = "__base__/graphics/entity/sparks/sparks-03.png",
                width = 42,
                height = 29,
                frame_count = 19,
                line_length = 19,
                shift = { -0.0625, 0.203125 },
                tint = { r = 1.0, g = 0.9, b = 0.0, a = 1.0 },
                animation_speed = 0.3,
            },
            {
                filename = "__base__/graphics/entity/sparks/sparks-04.png",
                width = 40,
                height = 35,
                frame_count = 19,
                line_length = 19,
                shift = { -0.0625, 0.234375 },
                tint = { r = 1.0, g = 0.9, b = 0.0, a = 1.0 },
                animation_speed = 0.3,
            },
            {
                filename = "__base__/graphics/entity/sparks/sparks-05.png",
                width = 39,
                height = 29,
                frame_count = 19,
                line_length = 19,
                shift = { -0.109375, 0.171875 },
                tint = { r = 1.0, g = 0.9, b = 0.0, a = 1.0 },
                animation_speed = 0.3,
            },
            {
                filename = "__base__/graphics/entity/sparks/sparks-06.png",
                width = 44,
                height = 36,
                frame_count = 19,
                line_length = 19,
                shift = { 0.03125, 0.3125 },
                tint = { r = 1.0, g = 0.9, b = 0.0, a = 1.0 },
                animation_speed = 0.3,
            },
        },
        working_sound = data.raw["construction-robot"]["construction-robot"].working_sound,
        cargo_centered = { 0.0, 0.2 },
        construction_vector = { 0.30, 0.22 },
    },
    {
        type = "construction-robot",
        name = "construction-robot-nuclear-big",
        icon = "__AposNuclearBotsSE__/graphics/icons/construction-robot-nuclear.png",
        icon_size = 32,
        flags = { "placeable-player", "player-creation", "placeable-off-grid", "not-on-map" },
        minable = { hardness = 0.1, mining_time = 0.1, result = "construction-robot-nuclear" },
        resistances = { { type = "fire", percent = 100 }, { type = "acid", percent = 50, decrease = 25 } },
        hide_resistances = false,
        max_health = 500,
        dying_explosion = "massive-explosion",
        collision_box = { { 0, 0 }, { 0, 0 } },
        selection_box = { { -0.5, -1.5 }, { 0.5, -0.5 } },
        max_payload_size = 97,
        speed = 0.06,
        transfer_distance = 0.5,
        max_energy = "1.5MJ",
        energy_per_tick = "0kJ",
        speed_multiplier_when_out_of_energy = 0.2,
        energy_per_move = "0kJ",
        min_to_charge = 0.2,
        max_to_charge = 0.95,
        working_light = { intensity = 0.8, size = 3 },
        idle = {
            filename = "__AposNuclearBotsSE__/graphics/entity/construction-robot/construction-robot-nuclear.png",
            priority = "high",
            line_length = 16,
            width = 32,
            height = 36,
            frame_count = 1,
            shift = { 0, -0.15625 },
            direction_count = 16,
        },
        in_motion = {
            filename = "__AposNuclearBotsSE__/graphics/entity/construction-robot/construction-robot-nuclear.png",
            priority = "high",
            line_length = 16,
            width = 32,
            height = 36,
            frame_count = 1,
            shift = { 0, -0.15625 },
            direction_count = 16,
            y = 36,
        },
        shadow_idle = {
            filename = "__AposNuclearBotsSE__/graphics/entity/construction-robot/construction-robot-nuclear-shadow.png",
            priority = "high",
            line_length = 16,
            width = 50,
            height = 24,
            frame_count = 1,
            shift = { 1.09375, 0.59375 },
            direction_count = 16,
        },
        shadow_in_motion = {
            filename = "__AposNuclearBotsSE__/graphics/entity/construction-robot/construction-robot-nuclear-shadow.png",
            priority = "high",
            line_length = 16,
            width = 50,
            height = 24,
            frame_count = 1,
            shift = { 1.09375, 0.59375 },
            direction_count = 16,
        },
        working = {
            filename = "__AposNuclearBotsSE__/graphics/entity/construction-robot/construction-robot-nuclear-working.png",
            priority = "high",
            line_length = 2,
            width = 28,
            height = 36,
            frame_count = 2,
            shift = { 0, -0.15625 },
            direction_count = 16,
            animation_speed = 0.3,
        },
        shadow_working = {
            stripes = util.multiplystripes(2, {
                {
                    filename = "__AposNuclearBotsSE__/graphics/entity/construction-robot/construction-robot-nuclear-shadow.png",
                    width_in_frames = 16,
                    height_in_frames = 1,
                },
            }),
            priority = "high",
            width = 50,
            height = 24,
            frame_count = 2,
            shift = { 1.09375, 0.59375 },
            direction_count = 16,
        },
        smoke = {
            filename = "__base__/graphics/entity/smoke-construction/smoke-01.png",
            width = 39,
            height = 32,
            frame_count = 19,
            line_length = 19,
            shift = { 0.078125, -0.15625 },
            animation_speed = 0.3,
        },
        sparks = {
            {
                filename = "__base__/graphics/entity/sparks/sparks-01.png",
                width = 39,
                height = 34,
                frame_count = 19,
                line_length = 19,
                shift = { -0.109375, 0.3125 },
                tint = { r = 1.0, g = 0.9, b = 0.0, a = 1.0 },
                animation_speed = 0.3,
            },
            {
                filename = "__base__/graphics/entity/sparks/sparks-02.png",
                width = 36,
                height = 32,
                frame_count = 19,
                line_length = 19,
                shift = { 0.03125, 0.125 },
                tint = { r = 1.0, g = 0.9, b = 0.0, a = 1.0 },
                animation_speed = 0.3,
            },
            {
                filename = "__base__/graphics/entity/sparks/sparks-03.png",
                width = 42,
                height = 29,
                frame_count = 19,
                line_length = 19,
                shift = { -0.0625, 0.203125 },
                tint = { r = 1.0, g = 0.9, b = 0.0, a = 1.0 },
                animation_speed = 0.3,
            },
            {
                filename = "__base__/graphics/entity/sparks/sparks-04.png",
                width = 40,
                height = 35,
                frame_count = 19,
                line_length = 19,
                shift = { -0.0625, 0.234375 },
                tint = { r = 1.0, g = 0.9, b = 0.0, a = 1.0 },
                animation_speed = 0.3,
            },
            {
                filename = "__base__/graphics/entity/sparks/sparks-05.png",
                width = 39,
                height = 29,
                frame_count = 19,
                line_length = 19,
                shift = { -0.109375, 0.171875 },
                tint = { r = 1.0, g = 0.9, b = 0.0, a = 1.0 },
                animation_speed = 0.3,
            },
            {
                filename = "__base__/graphics/entity/sparks/sparks-06.png",
                width = 44,
                height = 36,
                frame_count = 19,
                line_length = 19,
                shift = { 0.03125, 0.3125 },
                tint = { r = 1.0, g = 0.9, b = 0.0, a = 1.0 },
                animation_speed = 0.3,
            },
        },
        working_sound = data.raw["construction-robot"]["construction-robot"].working_sound,
        cargo_centered = { 0.0, 0.2 },
        construction_vector = { 0.30, 0.22 },
    },
    -- recipe
    {
        type = "recipe",
        name = "construction-robot-nuclear",
        enabled = false,
        ingredients = {
            { "construction-robot", 2 },
            { "se_rtg_equipment", 1 },
            { "se_superconductive_cable", 8 },
            { "se_aeroframe_pole", 4 },
            { "se_aeroframe_scaffold", 2 },
            { "processing_unit", 2 }
        },
        result = "construction-robot-nuclear",
    },
    {
        type = "recipe",
        name = "construction-robot-nuclear-big",
        enabled = false,
        ingredients = {
            { "construction-robot", 8 },
            { "se_rtg_equipment-2", 1 },
            { "se_superconductive_cable", 20 },
            { "se_aeroframe_pole", 10 },
            { "se_aeroframe_scaffold", 4 },
            { "processing_unit", 2 }
        },
        result = "construction-robot-nuclear-big",
    },
    -- item
    {
        type = "item",
        name = "construction-robot-nuclear",
        icon = "__AposNuclearBotsSE__/graphics/icons/construction-robot-nuclear.png",
        icon_size = 32,
        subgroup = "logistic-network",
        order = "a[robot]-c[construction-robot]-c[nuclear]",
        place_result = "construction-robot-nuclear",
        stack_size = 50,
    },
    {
        type = "item",
        name = "construction-robot-nuclear-big",
        icon = "__AposNuclearBotsSE__/graphics/icons/construction-robot-nuclear.png",
        icon_size = 32,
        subgroup = "logistic-network",
        order = "a[robot]-c[construction-robot]-c[nuclear]",
        place_result = "construction-robot-nuclear-big",
        stack_size = 50,
    },
}
