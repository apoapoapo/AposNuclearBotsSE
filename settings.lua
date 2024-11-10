data:extend {
    {
        type = "string-setting",
        name = "apos-nuclear-bots-debug-level",
        setting_type = "runtime-global",
        default_value = "basic",
        allowed_values = { "off", "basic", "verbose" },
        order = "a",
    },
    {
        type = "string-setting",
        name = "apos-nuclear-bots-summary-rate",
        setting_type = "runtime-global",
        default_value = 30,
        minimum_value = 1,
        maximum_value = 600,
        order = "b",
    },
}
