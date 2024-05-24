-----------------------------------
-- func: 
-- desc: gives all players in alliance a status effect for event Naked run to Jeuno
-----------------------------------
local commandObj = {}

commandObj.cmdprops =
{
    permission = 1,
    parameters = ''
}

commandObj.onTrigger = function(player)
    local namez = player:getName()
            local alliance = player:getAlliance()
                for _, partyMember in ipairs(alliance) do
                    partyMember:printToPlayer('Welcome and Thank you for joining the GM Event!',xi.msg.channel.SYSTEM_3)
                    partyMember:printToPlayer('The Naked Run to Jeuno will start in 2 minutes!',xi.msg.channel.SYSTEM_3)
                    partyMember:printToPlayer('Please remember to remove all means of equipping gear automatically!',xi.msg.channel.SYSTEM_3)
                    partyMember:timer(120000, function(partyMemberArg)
                            partyMember:setCharVar('NakedRun', partyMember:getMainLvl())
                            partyMember:addStatusEffect(xi.effect.EGG, 1, 25, 600)
                            partyMember:printToPlayer('Let the race begin!!!!!!',xi.msg.channel.SYSTEM_3)
                    end)
                        partyMember:timer(90000, function(partyMemberArg)
                            partyMember:printToPlayer('Race will begin in 30 Seconds!!!!!!',xi.msg.channel.SYSTEM_3)                   
                        end)
                            partyMember:timer(110000, function(partyMemberArg)
                                partyMember:printToPlayer('Race will begin in 10 Seconds!!!!!!',xi.msg.channel.SYSTEM_3)                   
                            end)
                            partyMember:timer(111000, function(partyMemberArg)
                                partyMember:printToPlayer('     9',xi.msg.channel.SYSTEM_3)                   
                            end)
                            partyMember:timer(112000, function(partyMemberArg)
                                partyMember:printToPlayer('     8',xi.msg.channel.SYSTEM_3)                   
                            end)
                            partyMember:timer(113000, function(partyMemberArg)
                                partyMember:printToPlayer('     7',xi.msg.channel.SYSTEM_3)                   
                            end)
                            partyMember:timer(114000, function(partyMemberArg)
                                partyMember:printToPlayer('     6',xi.msg.channel.SYSTEM_3)                   
                            end)
                            partyMember:timer(115000, function(partyMemberArg)
                                partyMember:printToPlayer('     5',xi.msg.channel.SYSTEM_3)                   
                            end)
                            partyMember:timer(116000, function(partyMemberArg)
                                partyMember:printToPlayer('     4',xi.msg.channel.SYSTEM_3)                   
                            end)
                            partyMember:timer(117000, function(partyMemberArg)
                                partyMember:printToPlayer('     3',xi.msg.channel.SYSTEM_3)                   
                            end)
                            partyMember:timer(118000, function(partyMemberArg)
                                partyMember:printToPlayer('     2',xi.msg.channel.SYSTEM_3)                   
                            end)
                            partyMember:timer(119000, function(partyMemberArg)
                                partyMember:printToPlayer('     1',xi.msg.channel.SYSTEM_3)                   
                            end)
                end

    local zone = GetZone(xi.zone.BATALLIA_DOWNS)
    local zoneOrInstanceObj = player:getZone()
    local instance = player:getInstance()
    if instance then
        zoneOrInstanceObj = instance
    end
    local npc = zoneOrInstanceObj:insertDynamicEntity({

        -- NPC or MOB
        objtype = xi.objType.NPC,
        name = 'Event NPC',
        look = 2423,
        x = 446.1063,
        y = 8.1920,
        z = -154.1094,
        rotation = 139,
        widescan = 0,

        onTrigger = function(player, npc)
        if player:getCharVar('NakedRun') >= 1 then
        local playerz = player:getName()
        player:printToArea(string.format('GM %s : Congratulations %s, you have made it in 1st place!!!!!!', namez, playerz), xi.msg.channel.SYSTEM_3, 0, '')
        player:printToArea(string.format('GM %s : Please see the GM Event NPC in the Library to claim your reward!',namez), xi.msg.channel.SYSTEM_3, 0, '')
        player:printToArea(string.format('GM %s : Thank you to everyone who participated in the event!',namez), xi.msg.channel.SYSTEM_3, 0, '')
        player:setCharVar('[GMEvent] NR', 1)
        npc:setStatus(xi.status.DISAPPEAR)
            local alliance = player:getAlliance()
                for _, partyMember in ipairs(alliance) do
                    if partyMember:getCharVar('NakedRun') >= 1 then
                       partyMember:delStatusEffect(xi.effect.EGG)
                    end
                end
        else
        player:printToPlayer('Your are not a participant in the Run to Jeuno event!')
        end
        end,
    })
    utils.unused(npc)
end

return commandObj
