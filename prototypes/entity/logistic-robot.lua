data:extend {
    -- entity
    {
        type = "logistic-robot",
        name = "logistic-robot-nuclear",
        icon = "__AposNuclearBotsSE__/graphics/icons/logistic-robot-nuclear-colorboost.png",
        icon_size = 32,
        flags = { "placeable-player", "player-creation", "placeable-off-grid", "not-on-map" },
        minable = { hardness = 0.1, mining_time = 0.1, result = "logistic-robot-nuclear" },
        resistances = { { type = "fire", percent = 85 } },
        max_health = 500,
        dying_explosion = "massive-explosion",
        collision_box = { { 0, 0 }, { 0, 0 } },
        selection_box = { { -0.5, -1.5 }, { 0.5, -0.5 } },
        max_payload_size = 7,
        speed = 0.045,
        transfer_distance = 0.5,
        max_energy = "1.5MJ",
        energy_per_tick = "0kJ",
        speed_multiplier_when_out_of_energy = 0.2,
        energy_per_move = "0kJ",
        min_to_charge = 0.2,
        max_to_charge = 0.95,
        idle = {
            filename = "__AposNuclearBotsSE__/graphics/entity/logistic-robot/logistic-robot-nuclear.png",
            priority = "high",
            line_length = 16,
            width = 41,
            height = 42,
            frame_count = 1,
            shift = { 0.015625, -0.09375 },
            direction_count = 16,
            y = 42,
        },
        idle_with_cargo = {
            filename = "__AposNuclearBotsSE__/graphics/entity/logistic-robot/logistic-robot-nuclear.png",
            priority = "high",
            line_length = 16,
            width = 41,
            height = 42,
            frame_count = 1,
            shift = { 0.015625, -0.09375 },
            direction_count = 16,
        },
        in_motion = {
            filename = "__AposNuclearBotsSE__/graphics/entity/logistic-robot/logistic-robot-nuclear.png",
            priority = "high",
            line_length = 16,
            width = 41,
            height = 42,
            frame_count = 1,
            shift = { 0.015625, -0.09375 },
            direction_count = 16,
            y = 126,
        },
        in_motion_with_cargo = {
            filename = "__AposNuclearBotsSE__/graphics/entity/logistic-robot/logistic-robot-nuclear.png",
            priority = "high",
            line_length = 16,
            width = 41,
            height = 42,
            frame_count = 1,
            shift = { 0.015625, -0.09375 },
            direction_count = 16,
            y = 84,
        },
        shadow_idle = {
            filename = "__AposNuclearBotsSE__/graphics/entity/logistic-robot/logistic-robot-nuclear-shadow.png",
            priority = "high",
            line_length = 16,
            width = 59,
            height = 23,
            frame_count = 1,
            shift = { 0.96875, 0.609375 },
            direction_count = 16,
            y = 23,
        },
        shadow_idle_with_cargo = {
            filename = "__AposNuclearBotsSE__/graphics/entity/logistic-robot/logistic-robot-nuclear-shadow.png",
            priority = "high",
            line_length = 16,
            width = 59,
            height = 23,
            frame_count = 1,
            shift = { 0.96875, 0.609375 },
            direction_count = 16,
        },
        shadow_in_motion = {
            filename = "__AposNuclearBotsSE__/graphics/entity/logistic-robot/logistic-robot-nuclear-shadow.png",
            priority = "high",
            line_length = 16,
            width = 59,
            height = 23,
            frame_count = 1,
            shift = { 0.96875, 0.609375 },
            direction_count = 16,
            y = 23,
        },
        shadow_in_motion_with_cargo = {
            filename = "__AposNuclearBotsSE__/graphics/entity/logistic-robot/logistic-robot-nuclear-shadow.png",
            priority = "high",
            line_length = 16,
            width = 59,
            height = 23,
            frame_count = 1,
            shift = { 0.96875, 0.609375 },
            direction_count = 16,
        },
        working_sound = data.raw["logistic-robot"]["logistic-robot"].working_sound,
        cargo_centered = { 0.0, 0.2 },
    },
    {
        type = "logistic-robot",
        name = "logistic-robot-nuclear-big",
        icon = "__AposNuclearBotsSE__/graphics/icons/logistic-robot-nuclear-colorboost-large.png",
        icon_size = 32,
        flags = { "placeable-player", "player-creation", "placeable-off-grid", "not-on-map" },
        minable = { hardness = 0.1, mining_time = 0.1, result = "logistic-robot-nuclear-big" },
        resistances = { { type = "fire", percent = 85 } },
        max_health = 500,
        dying_explosion = "massive-explosion",
        collision_box = { { 0, 0 }, { 0, 0 } },
        selection_box = { { -0.5, -1.5 }, { 0.5, -0.5 } },
        max_payload_size = 97,
        speed = 0.03,
        transfer_distance = 0.5,
        max_energy = "1.5MJ",
        energy_per_tick = "0kJ",
        speed_multiplier_when_out_of_energy = 0.2,
        energy_per_move = "0kJ",
        min_to_charge = 0.2,
        max_to_charge = 0.95,
        idle = {
            filename = "__AposNuclearBotsSE__/graphics/entity/logistic-robot/logistic-robot-nuclear-big.png",
            priority = "high",
            line_length = 16,
            width = 82,
            height = 84,
            frame_count = 1,
            shift = { 0.031250, -0.18750 },
            direction_count = 16,
            y = 84,
        },
        idle_with_cargo = {
            filename = "__AposNuclearBotsSE__/graphics/entity/logistic-robot/logistic-robot-nuclear-big.png",
            priority = "high",
            line_length = 16,
            width = 82,
            height = 84,
            frame_count = 1,
            shift = { 0.031250, -0.18750 },
            direction_count = 16,
        },
        in_motion = {
            filename = "__AposNuclearBotsSE__/graphics/entity/logistic-robot/logistic-robot-nuclear-big.png",
            priority = "high",
            line_length = 16,
            width = 82,
            height = 84,
            frame_count = 1,
            shift = { 0.031250, -0.18750 },
            direction_count = 16,
            y = 252,
        },
        in_motion_with_cargo = {
            filename = "__AposNuclearBotsSE__/graphics/entity/logistic-robot/logistic-robot-nuclear-big.png",
            priority = "high",
            line_length = 16,
            width = 82,
            height = 84,
            frame_count = 1,
            shift = { 0.031250, -0.18750 },
            direction_count = 16,
            y = 168,
        },
        shadow_idle = {
            filename = "__AposNuclearBotsSE__/graphics/entity/logistic-robot/logistic-robot-nuclear-shadow-big.png",
            priority = "high",
            line_length = 16,
            width = 118,
            height = 46,
            frame_count = 1,
            shift = { 1.93750, 1.218750 },
            direction_count = 16,
            y = 46,
        },
        shadow_idle_with_cargo = {
            filename = "__AposNuclearBotsSE__/graphics/entity/logistic-robot/logistic-robot-nuclear-shadow-big.png",
            priority = "high",
            line_length = 16,
            width = 118,
            height = 46,
            frame_count = 1,
            shift = { 1.93750, 1.218750 },
            direction_count = 16,
        },
        shadow_in_motion = {
            filename = "__AposNuclearBotsSE__/graphics/entity/logistic-robot/logistic-robot-nuclear-shadow-big.png",
            priority = "high",
            line_length = 16,
            width = 118,
            height = 46,
            frame_count = 1,
            shift = { 1.93750, 1.218750 },
            direction_count = 16,
            y = 46,
        },
        shadow_in_motion_with_cargo = {
            filename = "__AposNuclearBotsSE__/graphics/entity/logistic-robot/logistic-robot-nuclear-shadow-big.png",
            priority = "high",
            line_length = 16,
            width = 118,
            height = 46,
            frame_count = 1,
            shift = { 1.93750, 1.218750 },
            direction_count = 16,
        },
        working_sound = data.raw["logistic-robot"]["logistic-robot"].working_sound,
        cargo_centered = { 0.0, 0.4 },
    },
    -- recipe
    {
        type = "recipe",
        name = "logistic-robot-nuclear",
        enabled = false,
        ingredients = {
            { "logistic-robot", 2 },
            { "se-rtg-equipment", 1 },
            { "se-holmium-cable", 8 },
            { "se-holmium-solenoid", 2 },
            { "se-aeroframe-pole", 8 },
            { "se-aeroframe-scaffold", 4 },
            { "processing-unit", 4 },
        },
        energy_required = 5,
        result = "logistic-robot-nuclear",
    },
    {
        type = "recipe",
        name = "logistic-robot-nuclear-big",
        enabled = false,
        ingredients = {
            { "logistic-robot", 8 },
            { "se-rtg-equipment-2", 1 },
            { "se-superconductive-cable", 20 },
            { "se-holmium-solenoid", 8 },
            { "se-aeroframe-pole", 20 },
            { "se-aeroframe-bulkhead", 4 },
            { "processing-unit", 10 },
        },
        energy_required = 60,
        result = "logistic-robot-nuclear-big",
    },
    -- item
    {
        type = "item",
        name = "logistic-robot-nuclear",
        icon = "__AposNuclearBotsSE__/graphics/icons/logistic-robot-nuclear-colorboost.png",
        icon_size = 32,
        subgroup = "logistic-network",
        order = "a[robot]-b[logistic-robot]-c[nuclear]",
        place_result = "logistic-robot-nuclear",
        stack_size = 50,
    },
    {
        type = "item",
        name = "logistic-robot-nuclear-big",
        icon = "__AposNuclearBotsSE__/graphics/icons/logistic-robot-nuclear-colorboost-large.png",
        icon_size = 32,
        subgroup = "logistic-network",
        order = "a[robot]-b[logistic-robot]-c[nuclear]",
        place_result = "logistic-robot-nuclear-big",
        stack_size = 50,
    },
}
