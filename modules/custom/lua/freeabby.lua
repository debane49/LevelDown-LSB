
local m = Module:new('freeabby')


m:addOverride('xi.abyssea.onZoneIn', function(player)
        player:addStatusEffectEx(xi.effect.VISITANT, xi.effect.VISITANT, 0, 0, 0)
end)

m:addOverride('xi.abyssea.onEventFinish', function(player, csid, option, npc)
end)

m:addOverride('xi.abyssea.afterZoneIn', function(player)
end)
return m
