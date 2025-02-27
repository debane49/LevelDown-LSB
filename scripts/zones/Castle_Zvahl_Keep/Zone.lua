-----------------------------------
-- Zone: Castle_Zvahl_Keep (162)
-----------------------------------
---@type TZone
local zoneObject = {}

zoneObject.onInitialize = function(zone)
    -- TODO: Change these trigger areas to radials except 8, which already is.
    zone:registerTriggerArea(1, -301, -50, -22, -297, -49, -17)    -- central porter on map 3
    zone:registerTriggerArea(2, -275, -54,   3, -271, -53,   7)    -- NE porter on map 3
    zone:registerTriggerArea(3, -275, -54, -47, -271, -53, -42)    -- SE porter on map 3
    zone:registerTriggerArea(4, -330, -54,   3, -326, -53,   7)    -- NW porter on map 3
    zone:registerTriggerArea(5, -328, -54, -47, -324, -53, -42)    -- SW porter on map 3
    zone:registerTriggerArea(6, -528, -74,  84, -526, -73,  89)    -- N porter on map 4
    zone:registerTriggerArea(7, -528, -74,  30, -526, -73,  36)    -- S porter on map 4
    zone:registerTriggerArea(8, -459.9908, 2.5, 60.1056,  0, 0, 0) -- Hidden room porter on map 4

    xi.treasure.initZone(zone)
end

zoneObject.onConquestUpdate = function(zone, updatetype, influence, owner, ranking, isConquestAlliance)
    xi.conquest.onConquestUpdate(zone, updatetype, influence, owner, ranking, isConquestAlliance)
end

zoneObject.onZoneIn = function(player, prevZone)
    local cs = -1

    if
        player:getXPos() == 0 and
        player:getYPos() == 0 and
        player:getZPos() == 0
    then
        player:setPos(-555.996, -71.691, 59.989, 254)
    end

    return cs
end

local teleportEventsByArea =
{
    [1] = 0, -- Teleports player to far NE corner
    [2] = 2, -- Teleports player to far SE corner
    [3] = 1, -- Teleports player to far SW corner (from middle-SE porter)
    [4] = 3, -- Teleports player to far SW corner (from middle-NW porter)
    [5] = 4, -- Teleports player to the top of the stairs on map 4
    [6] = 6, -- Teleports player to position to one of several random positions
    [7] = 7, -- Teleports player to position to one of several random positions
    [8] = 5, -- Teleports player to H-7 on map 4 platform near the ore door (south or north part randomly)
}

zoneObject.onTriggerAreaEnter = function(player, triggerArea)
    local areaId = triggerArea:GetTriggerAreaID()

    -- TODO: these should only work when matching floor spot is animated (beastmen/BCNM symbol)
    if teleportEventsByArea[areaId] then
        player:startCutscene(teleportEventsByArea[areaId])
    end
end

zoneObject.onTriggerAreaLeave = function(player, triggerArea)
end

zoneObject.onEventUpdate = function(player, csid, option, npc)
end

zoneObject.onEventFinish = function(player, csid, option, npc)
end

return zoneObject
