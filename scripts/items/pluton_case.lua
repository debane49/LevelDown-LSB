-----------------------------------
-- ID: 6180
-- Pluton case
-- Breaks up a Pluton case
-----------------------------------
local itemObject = {}

itemObject.onItemCheck = function(target)
    return xi.itemUtils.itemBoxOnItemCheck(target)
end

itemObject.onItemUse = function(target)
    npcUtil.giveItem(target, {{xi.item.PLUTON, math.random(3, 15)}})
end

return itemObject
