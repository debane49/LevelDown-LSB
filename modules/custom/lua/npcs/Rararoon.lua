local ensureTable = function(str)
    local parts = utils.splitStr(str, '.')
    local table = _G;
    for _, part in ipairs(parts) do
        table[part] = table[part] or {}
        table = table[part]
    end
end
    ensureTable('xi.zones.Nashmau.npcs.Rararoon')

require("modules/module_utils")
require("scripts/globals/npc_util")
local ID = zones[xi.zone.NASHMAU]

local m = Module:new("Rararoon")

m:addOverride("xi.zones.Nashmau.npcs.Rararoon.onTrade", function(player, npc, trade)

end)

m:addOverride("xi.zones.Nashmau.npcs.Rararoon.onTrigger", function(player, npc)
    local stock =
    {
        2347,222300, -- Reactive Shield
        8460,112632, -- Tension Spring IV
        8461,112632, -- Heat Capacitor II
        9880,118560, -- Tension Spring V
        8465,82992, -- Magniplug
        8466,112632, -- Magniplug II
        2348,222300, -- Tranquilizer
        8490,100776, -- Tranquilizer II
        8492,112632, -- Loudspeaker IV
        8493,112632, -- Tranquilizer III
        8494,112632, -- Amplifier II
        8495,118560, -- Loudspeaker V
        8496,118560, -- Tranquilizer IV
        8497,82992, -- Arcanoclutch
        8498,112632, -- Arcanoclutch II
        2349,222300, -- Turbo Charger
        2415,750880, -- Turbo Charger II
        8525,112632, -- Accelerator IV
        8526,112632, -- Scope III
        8527,118560, -- Scope IV
        8528,112632, -- Truesights
        2350,222300, -- Schurzen
        8553,100776, -- Shock Absorber II
        8556,112632, -- Armor Plate IV
        8557,112632, -- Shock Absorber III
        2351,222300, -- Dynamo
        2413,185250, -- Coiler
        8586,100776, -- Coiler II
        8587,100776, -- Dynamo II
        8588,112632, -- Stabilizer IV
        8589,112632, -- Dynamo III
        8590,118560, -- Stabilizer V
        8622,185250, -- Mana Channeler II
        2352,222300, -- Condenser
        2414,185250, -- Steam Jacket
        8620,88920, -- Resister II
        8621,112632, -- Mana Jammer IV
        2353,222300, -- Optic Fiber
        8654,321100, -- Optic Fiber II
        2416,750880, -- Vivi-Valve II
        8650,88920, -- Auto-Repair Kit III
        8653,112632, -- Auto-Repair Kit IV
        8652,88920, -- Arcanic Cell II
        8655,112632, -- Damage Gauge II
        2354,222300, -- Economizer
        8681,88920, -- Mana Tank III
        8682,112632, -- Regulator
        8683,112632, -- Mana Tank IV
    }
    xi.shop.general(player, stock)

end)

m:addOverride("xi.zones.Nashmau.npcs.Rararoon.onEventUpdate", function(player, csid, option, npc)

end)

m:addOverride("xi.zones.Nashmau.npcs.Rararoon.onEventFinish", function(player, csid, option, npc)
				
end)

return m