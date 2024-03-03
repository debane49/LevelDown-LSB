-----------------------------------
-- func: Sanction
-- desc: Toggles on the player, granting them several special abilities.
-----------------------------------
local commandObj = {}

commandObj.cmdprops =
{
    permission = 0,
    parameters = 'i'
}


commandObj.onTrigger = function(player, tier)
    player:addStatusEffect(xi.effect.SANCTION, 0, 0, 18000)
    player:delStatusEffect(xi.effect.SIGNET)
    player:delStatusEffect(xi.effect.SIGIL)
    player:delStatusEffect(xi.effect.IONIS)
end
return commandObj