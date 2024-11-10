local RTG1_PERC = 80
local RTG2_PERC = 95
local prototype_names = {
    ["construction-robot-nuclear"] = true,
    ["construction-robot-nuclear-fast"] = true,
    ["logistic-robot-nuclear"] = true,
    ["logistic-robot-nuclear-big"] = true }

script.on_event(defines.events.on_entity_died, function(event)
    if not prototype_names[event.entity.name] then
        return
    end

    local entity = event.entity
    local recipe_name = entity.name
    local surface = entity.surface
    local position = entity.position

    if recipe_name and game.recipe_prototypes[recipe_name] then
        local recipe = game.recipe_prototypes[recipe_name]
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
            if amount_to_drop > 0 then
                surface.spill_item_stack(position, {name = ingredient.name, count = amount_to_drop}, false, game.forces.player, false)
            end
        end
    end
end)
