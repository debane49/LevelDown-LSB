-----------------------------------
-- func: Signet
-- desc: Toggles on the player, granting them several special abilities.
-----------------------------------
local commandObj = {}

commandObj.cmdprops =
{
    permission = 0,
    parameters = 'i'
}


commandObj.onTrigger = function(player, tier)
    player:addStatusEffect(xi.effect.SIGNET, 0, 0, 18000)
    player:delStatusEffect(xi.effect.SIGIL)
    player:delStatusEffect(xi.effect.SANCTION)
    player:delStatusEffect(xi.effect.IONIS)
end

return commandObj