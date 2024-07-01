-----------------------------------
-- func: testnpc
-- desc: Summon a npc to test model
-- note:
-----------------------------------
local commandObj = {}

commandObj.cmdprops =
{
    permission = 3,
    parameters = ''
}
local menu   = {}
local page1  = {}
local page2  = {}

local delaySendMenu = function(player)
    player:timer(50, function(playerArg)
        playerArg:customMenu(menu)
    end)
end

menu =
{
    title = 'What would you like?',
    options = {},
}
page1 =
{
    {
        'Nothing for now.',
        function(player)
        end
    },
    {
        'Option 1',
         function(player)
         end
    },
    {
        'Option 2',
         function(player)
         end
    },
    {
        'Option 3',
         function(player)
         end
    },
    {
        'Option 4',
         function(player)
         end
    },
    {
        'Option 5',
         function(player)
         end
    },
}
page2 =
{
    {
        'Yes',
        function(player)
        end,
    },
    {
        'No',
        function(player)            
        end,
    },
}


commandObj.onTrigger = function(player)
    local zoneOrInstanceObj = player:getZone()

    local instance = player:getInstance()
    if instance then
        zoneOrInstanceObj = instance
    end

    local npc = zoneOrInstanceObj:insertDynamicEntity({
        objtype = xi.objType.NPC,
        name = ' ',
        look = 298,
        x = player:getXPos(),
        y = player:getYPos(),
        z = player:getZPos(),
        rotation = player:getRotPos(),

        onTrade = function(player, npc, trade)
        end,
        onTrigger = function(player, npc)
            player:printToPlayer('GM General : Welcome Adventurer!', xi.msg.channel.SYSTEM_3, '')
            player:printToPlayer('GM General : PLease be aware, each of the QoL are locked behind a nation rank!', xi.msg.channel.SYSTEM_3, '')
            player:printToPlayer('\nMax Fame         - Rank 2\nAll Jobs           - Rank 4\nAll Spells         - Rank 6\nAll Teleports     - Rank 8\nAll Weaponskills - Rank 10', xi.msg.channel.SYSTEM_3, '')
               menu.options = page1
               delaySendMenu(player)
        end,
        releaseIdOnDisappear = true,
    })
    utils.unused(npc)
end

return commandObj
