-----------------------------------
-- Area: Nashmau
--  NPC: Yohj Dukonlhy
-- !pos 10.05 2 -103.45 53
-----------------------------------
---@type TNpcEntity
local entity = {}

entity.onTrigger = function(player, npc)
    xi.transport.onDockTimekeeperTrigger(player, xi.transport.routes.SILVER_SEA, 231)
end

return entity
