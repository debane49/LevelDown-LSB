-----------------------------------
-- ID: 6392
-- Bead Pouch
-- Give Escha Silt
-----------------------------------
local itemObject = {}

itemObject.onItemCheck = function(target)
    return xi.itemUtils.itemBoxOnItemCheck(target)
end

itemObject.onItemUse = function(target)
    local amount = math.random(5, 10)
    target:addCurrency('escha_silt', amount)
    target:printToPlayer(string.format("You obtained %s Escha Silt", amount),xi.msg.channel.SYSTEM_3)
end

return itemObject
