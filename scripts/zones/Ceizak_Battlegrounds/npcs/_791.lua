-----------------------------------
-- Area: Ceizak Battlegrounds
--  NPC: Waypoint
-----------------------------------
-- Frontier Station : !pos 365 0.448 190 261
-- Bivouac #1       : !pos -6.879 0 -117.511 261
-- Bivouac #2       : !pos -42 0 155 261
-- Bivouac #3       : !pos -442 0 -247 261
-----------------------------------
local ID = zones[xi.zone.CEIZAK_BATTLEGROUNDS] -- Ceizak_Battlegrounds
local entity = {}

entity.onTrade = function(player, npc, trade)
end

entity.onTrigger = function(player, npc)
player:printToPlayer(string.format('hello %s', npc:getAnimation()))
local pcn = GetNPCByID(17846761)
--npc:setAnimation(8)
 --npc:setAnimation(28)
 --npc:entityAnimationPacket('val0', player)
--pcn:setAnimaton(8)
--  player:entityVisualPacket('kesu')
--  SendEntityVisualPacket(ID.npc.COLLISIONA,'kesu')
--npc:setAnimation(xi.anim.OPEN_DOOR)
pcn:setNpcFlags(2056)
pcn:setAnimation(xi.anim.OPEN_DOOR)
npc:openDoor(30)
pcn:timer(16000, function(pcnArg)
pcn:setAnimation(xi.anim.CLOSE_DOOR)
end)
end

entity.onEventUpdate = function(player, csid, option, npc)
end

entity.onEventFinish = function(player, csid, option, npc)
end

return entity
