-----------------------------------
-- Area: Mhaura
--  NPC: Porter Moogle
-- Type: Storage Moogle
-- !zone 249
-----------------------------------
---@type TNpcEntity
local entity = {}

local e =
{
    TALK_EVENT_ID       =   336,
    STORE_EVENT_ID      =   337,
    RETRIEVE_EVENT_ID   =   338,
    ALREADY_STORED_ID   =   339,
    MAGIAN_TRIAL_ID     =   340
}

entity.onTrade = function(player, npc, trade)
    xi.porter_moogle.onTrade(player, trade, e)
end

entity.onTrigger = function(player, npc)
    -- No idea what the params are, other than event ID and gil.
    player:startEvent(e.TALK_EVENT_ID, 0x6FFFFF, 0x01, 0x06DD, 0x27, 0x7C7E, 0x15, player:getGil(), 0x03E8)
end

entity.onEventUpdate = function(player, csid, option, npc)
    xi.porter_moogle.onEventUpdate(player, csid, option, e.RETRIEVE_EVENT_ID)
end

entity.onEventFinish = function(player, csid, option, npc)
    xi.porter_moogle.onEventFinish(player, csid, option, e.TALK_EVENT_ID)
end

return entity
