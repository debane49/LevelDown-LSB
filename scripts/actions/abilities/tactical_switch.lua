-----------------------------------
-- Ability: Tactical Switch
-- Description: Swaps TP of master and automaton.
-- Obtained: PUP Level 79
-- Recast Time: 00:03:00
-----------------------------------
---@type TAbility
local abilityObject = {}

abilityObject.onAbilityCheck = function(player, target, ability)
    return 0, 0
end

abilityObject.onUseAbility = function(player, target, ability)
    -- target:addStatusEffect(xi.effect.TACTICAL_SWITCH, 18, 1, 1) -- TODO: implement xi.effect.TACTICAL_SWITCH
    local petTP       = player:getPet():getTP()
    local masterTP    = player:getTP()
    player:setTP(masterTP + petTP)
    player:getPet():setTP(0)
end

return abilityObject
