-----------------------------------
-- func: return stored alexandrite <amount> 
-- desc: Gives the specified amount of alexandrite
local commandObj = {}

commandObj.cmdprops =
{
    permission = 0,
    parameters = 'is'
}

local function error(player, msg)
    player:printToPlayer(msg)
    player:printToPlayer('!retrievealex <amount>')
end

commandObj.onTrigger = function(player, amount, target)
    -- validate amount
    if amount == nil or amount < 1 or amount > player:getCharVar('Alexandrite') then
        error(player, 'Invalid amount of alexandrite.')
        return
    end
    -- validate target
    local targ = player
    -- give alexandrite back if you have the inventory space 
        local quantity  = player:getCharVar('Alexandrite')
        local stacks    = math.floor(amount / 99)
        local remainder = amount % 99
        local slotsNeeded = stacks
        if remainder > 0 then
            slotsNeeded = slotsNeeded + 1
        end
            if player:getFreeSlotsCount() < slotsNeeded then
                player:printToPlayer(string.format('You cannot withdrawn that amount. ',amount), 0, 'Tyo')
                player:printToPlayer(string.format('Please check your inventory and try again. ',amount), 0, 'Tyo')
                return
            end
                if amount > 0 then
                    player:addItem(2488, amount)
                    player:printToPlayer(string.format('You have withdrawn %s alexandrites. ',amount), 0, 'Tyo')
                    player:printToPlayer(string.format('Your remaining baalance of alexandrite is %s. ',player:getCharVar('Alexandrite')), 0, 'Tyo') 
                end

end

return commandObj
