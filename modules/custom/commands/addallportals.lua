-----------------------------------
-- func: addallhp's'
-- desc: Adds all homepoints to the given player.
-----------------------------------
local commandObj = {}

commandObj.cmdprops =
{
    permission = 0,
    parameters = 's'
}

local function error(player, msg)
    player:PrintToPlayer(msg)
    player:PrintToPlayer('!addallportals <player>')
end

commandObj.onTrigger = function(player, target)
    local eschaPortals =
    {
        0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20 ,21, 22, 23,
        24, 25 ,26, 27, 28, 29, 30, 31
    }
    local confIds =
    {
        -- [xi.zone.ABYSSEA_KONSCHTAT] 
        {0, 0},
        {0, 1},
        {0, 2},
        {0, 3},
        {0, 4},
        {0, 5},
        {0, 6},
        {0, 7},
        -- [xi.zone.ABYSSEA_TAHRONGI]
        {1, 0},
        {1, 1},
        {1, 2},
        {1, 3},
        {1, 4},
        {1, 5},
        {1, 6},
        {1, 7},
        -- [xi.zone.ABYSSEA_LA_THEINE]
        {2, 0},
        {2, 1},
        {2, 2},
        {2, 3},
        {2, 4},
        {2, 5},
        {2, 6},
        {2, 7},
        -- [xi.zone.ABYSSEA_ATTOHWA]
        {3, 0},
        {3, 1},
        {3, 2},
        {3, 3},
        {3, 4},
        {3, 5},
        {3, 6},
        {3, 7},
        {3, 8},
        -- [xi.zone.ABYSSEA_MISAREAUX]
        {4, 0},
        {4, 1},
        {4, 2},
        {4, 3},
        {4, 4},
        {4, 5},
        {4, 6},
        {4, 7},
        {4, 8},
        -- [xi.zone.ABYSSEA_VUNKERL]
        {5, 0},
        {5, 1},
        {5, 2},
        {5, 3},
        {5, 4},
        {5, 5},
        {5, 6},
        {5, 7},
        {5, 8},
        -- [xi.zone.ABYSSEA_ALTEPA]
        {6, 0},
        {6, 1},
        {6, 2},
        {6, 3},
        {6, 4},
        {6, 5},
        {6, 6},
        {6, 7},
        -- [xi.zone.ABYSSEA_ULEGUERAND]
        {7, 0},
        {7, 1},
        {7, 2},
        {7, 3},
        {7, 4},
        {7, 5},
        {7, 6},
        {7, 7},
        -- [xi.zone.ABYSSEA_GRAUBERG]
        {8, 0},
        {8, 1},
        {8, 2},
        {8, 3},
        {8, 4},
        {8, 5},
        {8, 6},
        {8, 7},
    }

    local adoulinPortals =
    {
        {0, 0},
        {1, 1},
        {2, 2},
        {3, 3},
        {4, 4},
        {5, 5},
        {6, 6},
        {7, 7},
        {8, 8},
        {15, 9},
        {16, 10},
        {17, 11},
        {18, 12},
        {19, 13},
        {20, 14},
        {21, 15},
        {22, 16},
        {23, 17},
        {38, 22},
        {39, 23},
        {40, 24},
        {41, 25},
        {32, 18},
        {33, 19},
        {34, 20},
        {35, 21},
        {64, 26},
        {65, 27},
        {66, 28},
        {67, 29},
        {68, 30},
        {70, 31},
        {71, 32},
        {72, 33},
        {73, 34},
        {74, 35},
        {75, 36},
        {96, 37},
        {97, 38},
        {98, 39},
        {99, 40},
        {102, 41},
        {103, 42},
        {104, 43},
        {105, 44},
        {106, 45},
        {134, 46},
        {135, 47},
        {136, 48},
        {137, 49},
        {138, 50},
    }


    -- validate target
    local targ = player

    -- add conflux
    for _, v in ipairs(confIds) do
        targ:addTeleport(xi.teleport.type.ABYSSEA_CONFLUX, v[1], v[2])

    end

    -- add eschaPortals
    for _, v in ipairs(eschaPortals) do
        targ:addTeleport(xi.teleport.type.ESCHAN_PORTAL, v)
    end
    -- add all waypoints
    for _, v in ipairs(adoulinPortals) do
        targ:addTeleport(xi.teleport.type.WAYPOINT, v[1], v[2])
    end
    player:printToPlayer(string.format('%s now has all Abyssea Confluxs.', targ:getName()))
end

return commandObj
