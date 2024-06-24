-----------------------------------
-- Area: Full Moon Fountain
-- Name: The Moonlit Path II
-----------------------------------
local fullMoonFountainID = zones[xi.zone.FULL_MOON_FOUNTAIN]
-----------------------------------

local content = Battlefield:new({
    zoneId           = xi.zone.FULL_MOON_FOUNTAIN,
    battlefieldId    = xi.battlefield.id.WAKING_THE_BEAST_FULLMOON_II,
    maxPlayers       = 6,
    timeLimit        = utils.minutes(30),
    index            = 5,
    entryNpc         = 'MS_Entrance',
    exitNpc          = 'Moon_Spiral',
    requiredKeyItems = { xi.ki.WAKING_THE_BEAST_PHANTOM_GEM },
    allowTrusts      = true,

})


content.groups =
{
    {
        mobIds =
        {
            { fullMoonFountainID.mob.CARBUNCLE_PRIME_HTBF     },
            { fullMoonFountainID.mob.CARBUNCLE_PRIME_HTBF + 1 },
            { fullMoonFountainID.mob.CARBUNCLE_PRIME_HTBF + 2 },
        },

        allDeath = function(battlefield, mob)
            battlefield:setStatus(xi.battlefield.status.WON)
        end,
    },
}

return content:register()
