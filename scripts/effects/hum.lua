-----------------------------------
-- xi.effect.HUM
-----------------------------------
---@type TEffect
local effectObject = {}

effectObject.onEffectGain = function(target, effect)
effect:setIcon(xi.effect.ENSPHERE)
end

effectObject.onEffectTick = function(target, effect)
local party = target:getParty()
for _, member in ipairs(party) do
    if member:checkDistance(target) <= 10 then
     if member ~= target then
        if member:hasStatusEffect(xi.effect.ENSPHERE) then
            return
            else
           member:addStatusEffectEx(xi.effect.ENSPHERE, xi.effect.ENSPHERE, 10, 3, 0)
        end
    end
    end
end
end

effectObject.onEffectLose = function(target, effect)
target:delStatusEffect(xi.effect.HUM)
end

return effectObject
