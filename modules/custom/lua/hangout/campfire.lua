-----------------------------------
-- Moogle
-----------------------------------
require('modules/module_utils')
-----------------------------------
local m = Module:new('campfire')

m:addOverride('xi.zones.Mog_Garden.Zone.onInitialize', function(zone)
    super(zone)
    local campFirea = zone:insertDynamicEntity({
        objtype = xi.objType.NPC,
        name = 'Moogle',
        look = 82,
        x         = 346.3627,
        y         = -4.4337,
        z         = -544.1656,
        rotation = 65,
        widescan = 1,
        onTrade = function(player, npc, trade)
        end,
        onTrigger = function(player, npc)
        end,
    })
    campFirea:hideName(true)
    campFirea:setUntargetable(true)
    utils.unused(campFirea)
end)

return m

