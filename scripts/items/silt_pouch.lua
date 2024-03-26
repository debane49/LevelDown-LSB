-----------------------------------
-- ID: 6391
-- Silt Pouch
-- Give Escha Silt
-----------------------------------
local itemObject = {}

itemObject.onItemCheck = function(target)
    return xi.itemUtils.itemBoxOnItemCheck(target)
end

itemObject.onItemUse = function(target)
    local amount = math.random(50, 100)
    target:addCurrency('escha_silt', amount)
    target:printToPlayer(string.format("You obtained %s Escha Silt", amount),xi.msg.channel.SYSTEM_3)
end

return itemObject
