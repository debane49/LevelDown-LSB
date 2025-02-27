-----------------------------------
-- ID: 5569
-- Item: puk_egg
-- Food Effect: 5Min, All Races
-----------------------------------
-- Health 6
-- Magic 6
-----------------------------------
---@type TItemFood
local itemObject = {}

itemObject.onItemCheck = function(target, item, param, caster)
    return xi.itemUtils.foodOnItemCheck(target, xi.foodType.BASIC)
end

itemObject.onItemUse = function(target)
    target:addStatusEffect(xi.effect.FOOD, 0, 0, 300, 5569)
end

itemObject.onEffectGain = function(target, effect)
    target:addMod(xi.mod.FOOD_HP, 6)
    target:addMod(xi.mod.FOOD_MP, 6)
end

itemObject.onEffectLose = function(target, effect)
    target:delMod(xi.mod.FOOD_HP, 6)
    target:delMod(xi.mod.FOOD_MP, 6)
end

return itemObject
