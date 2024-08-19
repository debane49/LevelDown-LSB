-----------------------------------
-- Area: Bibiki Bay
--  NPC: Fheli Lapatzuo
-- Type: Manaclipper Timekeeper
-- !pos 488.793 -4.003 709.473 4
-----------------------------------
local entity = {}

local timekeeperLocation = xi.manaclipper.location.SUNSET_DOCKS
local timekeeperEventId = 18

entity.onTrade = function(player, npc, trade)
if trade:getItemQty(xi.item.GIL, 0) == 1000 then
   player:setPos(-393.5172, -3.0001, -389.4102, 66, 4)
end
end

entity.onTrigger = function(player, npc)
    xi.manaclipper.timekeeperOnTrigger(player, timekeeperLocation, timekeeperEventId)
end

entity.onEventUpdate = function(player, csid, option, npc)
end

entity.onEventFinish = function(player, csid, option, npc)
end

return entity
