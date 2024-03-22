-----------------------------------
-- func: setunityleader
-- desc: changes the players unityLeader
-----------------------------------
-- xi.unityLeader =
-- {
    -- NONE              = 0,
    -- PIEUJE            = 1,
    -- AYAME             = 2,
    -- INVINCIBLE_SHIELD = 3,
    -- APURURU           = 4,
    -- MAAT              = 5,
    -- ALDO              = 6,
    -- JAKOH_WAHCONDALO  = 7,
    -- NAJA_SALAHEEM     = 8,
    -- FLAVIRIA          = 9,
    -- YORAN_ORAN        = 10,
    -- SYLVIE            = 11,
-- }

local commandObj = {}

commandObj.cmdprops =
{
    permission = 0,
    parameters = 'i'
}

local function error(player, msg)
    player:printToPlayer(msg)
    player:printToPlayer('!setUnityLeader')
end


commandObj.onTrigger = function(player, leader)
    if leader == 0 or leader == nil then
        player:printToPlayer(string.format('NONE = 0'), xi.msg.channel.SYSTEM_3)
        player:printToPlayer(string.format('PIEUJE = 1'), xi.msg.channel.SYSTEM_3)
        player:printToPlayer(string.format('AYAME = 2'), xi.msg.channel.SYSTEM_3)
        player:printToPlayer(string.format('INVINCIBLE_SHIELD = 3'), xi.msg.channel.SYSTEM_3)
        player:printToPlayer(string.format('APURURU = 4'), xi.msg.channel.SYSTEM_3)
        player:printToPlayer(string.format('MAAT = 5'), xi.msg.channel.SYSTEM_3)
        player:printToPlayer(string.format('ALDO = 6'), xi.msg.channel.SYSTEM_3)
        player:printToPlayer(string.format('JAKOH_WAHCONDALO = 7'), xi.msg.channel.SYSTEM_3)
        player:printToPlayer(string.format('NAJA_SALAHEEM = 8'), xi.msg.channel.SYSTEM_3)
        player:printToPlayer(string.format('FLAVIRIA = 9'), xi.msg.channel.SYSTEM_3)
        player:printToPlayer(string.format('YORAN_ORAN = 10'), xi.msg.channel.SYSTEM_3)
        player:printToPlayer(string.format('SYLVIE = 11'), xi.msg.channel.SYSTEM_3)
    elseif os.time() < player:getCharVar('UnityChangeCD') then
        player:printToPlayer(string.format('still on cooldown, please wait %i seconds', player:getCharVar('UnityChangeCD') - os.time(), xi.msg.channel.SYSTEM_3))
    elseif os.time() > player:getCharVar('UnityChangeCD') then
        player:setUnityLeader(leader)
        player:clearTrusts() --clears existing trusts
        player:printToPlayer(string.format('Unity Leader set to %i', leader), xi.msg.channel.SYSTEM_3)
        player:setCharVar('UnityChangeCD', os.time() + 300) --5 min cooldown
        player:timer(3000, function(playerArg)
            playerArg:setPos(playerArg:getXPos(), playerArg:getYPos(), playerArg:getZPos(), playerArg:getRotPos(), playerArg:getZoneID())
        end)
    end
end

return commandObj