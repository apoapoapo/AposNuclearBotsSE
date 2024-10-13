data:extend {
    {
        type = "technology",
        name = "nuclear-robots",
        icon = "__AposNuclearBotsSE__/graphics/technology/nuclear-robotics-colorboost.png",
        icon_size = 128,
        effects = {
            {
                type = "unlock-recipe",
                recipe = "construction-robot-nuclear",
            },
            {
                type = "unlock-recipe",
                recipe = "logistic-robot-nuclear",
            },
        },
        prerequisites = { "se-rtg-equipment", "se-holmium-solenoid", "se-aeroframe-scaffold", "worker-robots-storage-3" },
        unit = {
            count = 500,
            ingredients = {
                { "automation-science-pack", 1 },
                { "logistic-science-pack", 1 },
                { "production-science-pack", 1 },
                { "utility-science-pack", 1 },
                { "se-astronomic-science-pack-2", 1 },
                { "se-energy-science-pack-2", 1 },

            },
            time = 30,
        },
        order = "a-b-c",
    },
    {
        type = "technology",
        name = "nuclear-robots-2",
        icon = "__AposNuclearBotsSE__/graphics/technology/nuclear-robotics-colorboost-large.png",
        icon_size = 128,
        effects = {
            {
                type = "unlock-recipe",
                recipe = "construction-robot-nuclear-fast",
            },
            {
                type = "unlock-recipe",
                recipe = "logistic-robot-nuclear-big",
            },
        },
        prerequisites = { "nuclear-robots", "se-rtg-equipment-2", "se-superconductive-cable", "se-aeroframe-bulkhead", "worker-robots-storage-3" },
        unit = {
            count = 1000,
            ingredients = {
                { "automation-science-pack", 1 },
                { "logistic-science-pack", 1 },
                { "production-science-pack", 1 },
                { "utility-science-pack", 1 },
                { "se-astronomic-science-pack-3", 1 },
                { "se-energy-science-pack-3", 1 },
                { "se-material-science-pack-3", 1 },
            },
            time = 30,
        },
        order = "a-b-c",
    },
}
