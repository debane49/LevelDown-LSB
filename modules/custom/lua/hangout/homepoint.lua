-----------------------------------
-- Moogle
-----------------------------------
require('modules/module_utils')
-----------------------------------
local m = Module:new('moogle')

m:addOverride('xi.zones.Mog_Garden.Zone.onInitialize', function(zone)
    super(zone)
    local homepoint = zone:insertDynamicEntity({
        objtype = xi.objType.NPC,
        name = ' ',
        look = 51,
        x         = 317.3220,
        y         = -1.4680,
        z         = -579.5084,
        rotation = 248,
        widescan = 1,
        onTrade = function(player, npc, trade)
        end,
        onTrigger = function(player, npc)
            local menu =
        {
        title   = "What will you do?",
        onStart = function(playerArg)
        end,

        options =
        {
            {
                "Set this as your home point.",
                function(playerArg)
                    playerArg:printToPlayer("Home point set!", xi.msg.channel.NS_SAY)
                    playerArg:setHomePoint()
                    playerArg:independentAnimation(playerArg, 29, 3)
                end,
            },
            {
                "On second thought, never mind.",
                function(playerArg)
                end,
            },
        },

        onCancelled = function(playerArg)
        end,

        onEnd = function(playerArg)
        end,
        }
    
    player:customMenu(menu)
        end,
    })
end)

return m

