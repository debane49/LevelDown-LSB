-----------------------------------
-- ID: 6182
-- Boulder case
-- Breaks up a Boulder case
-----------------------------------
---@type TItem
local itemObject = {}

itemObject.onItemCheck = function(target, item, param, caster)
    return xi.itemUtils.itemBoxOnItemCheck(target)
end

itemObject.onItemUse = function(target)
    npcUtil.giveItem(target, { { xi.item.RIFTBORN_BOULDER, math.random(3, 15) } })
end

return itemObject
