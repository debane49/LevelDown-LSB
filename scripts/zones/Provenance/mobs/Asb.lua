-----------------------------------
-- Area: Provenance
--   NM: Pil
-----------------------------------
---@type TMobEntity
local entity = {}

entity.onMobInitialize = function(mob)
end

entity.onMobSpawn = function(mob)
end

entity.onMobDeath = function(mob, player, optParams)
    local alliance = player:getAlliance()
        for each, member in pairs(alliance) do
            npcUtil.giveKeyItem(member, xi.ki.KUPOFRIEDS_CORUNDUM_2)
            --[[
                local rand = math.random(2, 4)
                local item = math.random(3498,3499) -- riftross, riftcinder
                    npcUtil.giveItem(member, { { item, rand } })
            ]]--
        end
end

return entity
