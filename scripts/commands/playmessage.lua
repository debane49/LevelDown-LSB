-----------------------------------
-- func: addcurrency <currency type> <amount> <target player>
-- desc: Adds the specified currency to the player
-----------------------------------
local commandObj = {}

commandObj.cmdprops =
{
    permission = 1,
    parameters = 's'
}

local function error(player, msg)
    player:printToPlayer(msg)
    player:printToPlayer('!playmessage')
end

commandObj.onTrigger = function(player, currency, amount, target)

for i = 6411, 6435 do -- 6988
--player:timer(5000, function(playerArg)
player:messageSpecial(i)
--player:printToPlayer(string.format('%s', i))
--end)
end

end

return commandObj
