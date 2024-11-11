local RTG1_PERC = 80
local RTG2_PERC = 95
local SETTING_DEBUG = "apos-nuclear-bots-debug-level"
local SETTING_SUMMARY = "apos-nuclear-bots-summary-rate"

local prototype_names = {
    ["construction-robot-nuclear"] = true,
    ["construction-robot-nuclear-fast"] = true,
    ["logistic-robot-nuclear"] = true,
    ["logistic-robot-nuclear-big"] = true }

local DebugLevel = {
    OFF = 0,
    BASIC = 1,
    VERBOSE = 2,
}

local function get_debug_level_from_string()
    local setting_value = settings.global[SETTING_DEBUG].value

    if setting_value == "off" then
        return DebugLevel.OFF
    elseif setting_value == "basic" then
        return DebugLevel.BASIC
    elseif setting_value == "verbose" then
        return DebugLevel.VERBOSE
    end
end

script.on_init(function()
    global.debug_level = get_debug_level_from_string()
    global.summary_rate = settings.global[SETTING_SUMMARY].value * 3600
    global.died_bots = {}
end)

script.on_configuration_changed(function()
    global.debug_level = get_debug_level_from_string()
    global.summary_rate = settings.global[SETTING_SUMMARY].value * 3600

    if not global.died_bots then
        global.died_bots = {}
    end
end)

script.on_event(defines.events.on_runtime_mod_setting_changed, function(event)
    if event.setting == SETTING_DEBUG then
        global.debug_level = get_debug_level_from_string()
    end
    if event.setting == SETTING_SUMMARY then
        global.summary_rate = settings.global[SETTING_SUMMARY].value * 3600
    end
end)

script.on_event(defines.events.on_tick, function(event)
    if event.tick % global.summary_rate == 0 then
        if global.debug_level < DebugLevel.BASIC then
            return
        end

        local out_str = "Apos Nuclear Bots crash statistics: "
        local do_print = false
        for surface_name, surface_died_bots in pairs(global.died_bots) do
            out_str = out_str .. "\n" .. surface_name .. ": "
            for prototype_name, died_bots in pairs(surface_died_bots) do
               out_str = out_str .. " [img=item." .. prototype_name .. "] " .. died_bots .. "  "
            end
            do_print = true
        end
        if do_print then
            game.print(out_str)
        end
    end
end)

script.on_event(defines.events.on_entity_died, function(event)
    if not prototype_names[event.entity.name] then
        return
    end

    local entity = event.entity
    local recipe_name = entity.name
    local surface = entity.surface
    local position = entity.position

    if not global.died_bots[surface.name] then
        global.died_bots[surface.name] = {}
        for prototype_name, _ in pairs(prototype_names) do
            if not global.died_bots[surface.name][prototype_name] then
                global.died_bots[surface.name][prototype_name] = 0
            end
        end
    end

    global.died_bots[surface.name][recipe_name] = global.died_bots[surface.name][recipe_name] + 1

    if recipe_name and game.recipe_prototypes[recipe_name] then
        local recipe = game.recipe_prototypes[recipe_name]
        local dbg_str = "[item=" .. recipe_name .. "] crashed: Ingredients dropped: "

        for _, ingredient in pairs(recipe.ingredients) do
            local amount_to_drop = 0
            if ingredient.name == "se-rtg-equipment" then
                if math.random(1,100) <= RTG1_PERC then
                    amount_to_drop = 1
                end
            elseif ingredient.name == "se-rtg-equipment-2" then
                if math.random(1,100) <= RTG2_PERC then
                    amount_to_drop = 1
                end
            else
                amount_to_drop = math.random(0, ingredient.amount)
            end

            dbg_str = dbg_str .. " [img=item." .. ingredient.name .. "] " .. amount_to_drop .. "/" .. ingredient.amount

            if amount_to_drop > 0 then
                surface.spill_item_stack(position, {name = ingredient.name, count = amount_to_drop}, false, game.forces.player, false)
            end
        end

        if global.debug_level >= DebugLevel.VERBOSE then
            game.print(dbg_str)
        end
    end
end)
