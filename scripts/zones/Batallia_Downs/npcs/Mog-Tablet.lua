-----------------------------------
-- Area: Batallia Downs
--  NPC: Mog-Tablet
-----------------------------------
---@type TNpcEntity
local entity = {}


entity.onTrade = function(player, npc, trade)

end

entity.onTrigger = function(player, npc)
npc:setLocalVar('interactedWith',1)
xi.mogTablet.tabletOnTrigger(player, npc)

end

entity.onEventUpdate = function(player, csid, option, npc)

end

entity.onEventFinish = function(player, csid, option, npc)

end

return entity
