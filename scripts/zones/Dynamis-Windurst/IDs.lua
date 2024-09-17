-----------------------------------
-- Area: Dynamis-Windurst
-----------------------------------
zones = zones or {}

zones[xi.zone.DYNAMIS_WINDURST] =
{
    text =
    {
        YOU_RECOVERED_MOG_TABLET      = 0,    -- A mog tablet has been discovered in ${choice: 0}[West Ronfaure/East Ronfaure/the La Theine Plateau/the Valkurm Dunes/Jugner Forest/the Batallia Downs/North Gustaberg/South Gustaberg/the Konschtat Highlands/the Pashhow Marshlands/the Rolanberry Fields/Beaucedine Glacier/Xarcabard/West Sarutabaruta/East Sarutabaruta/the Tahrongi Canyon/the Buburimu Peninsula/the Meriphataud Mountains/the Sauromugue Champaign/Qufim Island/Behemoth''s Dominion/Cape Teriggan/the Eastern Altepa Desert/the Sanctuary of Zi''Tah/Ro''Maeve/the Yuhtunga Jungle/the Yhoator Jungle/the Western Altepa Desert/the Valley of Sorrows]!
        ALL_MOG_TABLETS_FOUND         = 1,    -- The complete set of mog tablets has been restored to RuLude Gardens! The ancient magic of King Kupofried permeates the air to instill adventurers in this area with its Super Kupowers!
        FIND_THE_MOG_TABLETS          = 2,    -- The strength of the ancient moogle magic has weakened, and the tablets have been scattered to the winds once more. You can feel your Super Kupowers begin to fade away...
        ITEM_CANNOT_BE_OBTAINED       = 6384, -- You cannot obtain the <item>. Come back after sorting your inventory.
        ITEM_OBTAINED                 = 6390, -- Obtained: <item>.
        GIL_OBTAINED                  = 6391, -- Obtained <number> gil.
        KEYITEM_OBTAINED              = 6393, -- Obtained key item: <keyitem>.
        NOTHING_OUT_OF_ORDINARY       = 6404, -- There is nothing out of the ordinary here.
        CARRIED_OVER_POINTS           = 7001, -- You have carried over <number> login point[/s].
        LOGIN_CAMPAIGN_UNDERWAY       = 7002, -- The [/January/February/March/April/May/June/July/August/September/October/November/December] <number> Login Campaign is currently underway!
        LOGIN_NUMBER                  = 7003, -- In celebration of your most recent login (login no. <number>), we have provided you with <number> points! You currently have a total of <number> points.
        MEMBERS_LEVELS_ARE_RESTRICTED = 7023, -- Your party is unable to participate because certain members' levels are restricted.
        CONQUEST_BASE                 = 7170, -- Tallying conquest results...
        DYNAMIS_TIME_BEGIN            = 7329, -- The sands of the <item> have begun to fall. You have <number> minutes (Earth time) remaining in Dynamis.
        DYNAMIS_TIME_EXTEND           = 7330, -- our stay in Dynamis has been extended by <number> minute[/s].
        DYNAMIS_TIME_UPDATE_1         = 7331, -- ou will be expelled from Dynamis in <number> [second/minute] (Earth time).
        DYNAMIS_TIME_UPDATE_2         = 7332, -- ou will be expelled from Dynamis in <number> [seconds/minutes] (Earth time).
        DYNAMIS_TIME_EXPIRED          = 7334, -- The sands of the hourglass have emptied...
        OMINOUS_PRESENCE              = 7346, -- You feel an ominous presence, as if something might happen if you possessed <item>.
    },
    mob =
    {
        TIME_EXTENSION =
        {
            { minutes = 10, ki = xi.ki.CRIMSON_GRANULES_OF_TIME,   mob = 17543258 },
            { minutes = 10, ki = xi.ki.AZURE_GRANULES_OF_TIME,     mob = 17543342 },
            { minutes = 10, ki = xi.ki.AMBER_GRANULES_OF_TIME,     mob = 17543372 },
            { minutes = 15, ki = xi.ki.ALABASTER_GRANULES_OF_TIME, mob = 17543446 },
            { minutes = 15, ki = xi.ki.OBSIDIAN_GRANULES_OF_TIME,  mob = 17543259 },
        },

        REFILL_STATUE =
        {
            {
                { mob = 17543268, eye = xi.dynamis.eye.RED  }, -- Avatar_Icon
                { mob = 17543269, eye = xi.dynamis.eye.BLUE },
            },
            {
                { mob = 17543305, eye = xi.dynamis.eye.RED   }, -- Avatar_Icon
                { mob = 17543306, eye = xi.dynamis.eye.GREEN },
            },
            {
                { mob = 17543353, eye = xi.dynamis.eye.RED  }, -- Avatar_Icon
                { mob = 17543354, eye = xi.dynamis.eye.BLUE },
            },
            {
                { mob = 17543362, eye = xi.dynamis.eye.RED   }, -- Avatar_Icon
                { mob = 17543363, eye = xi.dynamis.eye.GREEN },
            },
            {
                { mob = 17543392, eye = xi.dynamis.eye.RED   }, -- Avatar_Icon
                { mob = 17543393, eye = xi.dynamis.eye.GREEN },
            },
            {
                { mob = 17543409, eye = xi.dynamis.eye.RED  }, -- Avatar_Icon
                { mob = 17543410, eye = xi.dynamis.eye.BLUE },
            },
            {
                { mob = 17543419, eye = xi.dynamis.eye.RED   }, -- Avatar_Icon
                { mob = 17543420, eye = xi.dynamis.eye.BLUE  },
                { mob = 17543421, eye = xi.dynamis.eye.GREEN },
            },
            {
                { mob = 17543461, eye = xi.dynamis.eye.RED   }, -- Avatar_Icon
                { mob = 17543462, eye = xi.dynamis.eye.BLUE  },
                { mob = 17543463, eye = xi.dynamis.eye.GREEN },
            },
        },
    },

    npc =
    {
        QM =
        {
            [17543480] =
            {
                param = { 3355, 3414, 3415, 3416, 3417, 3418 },
                trade =
                {
                    { item = 3355,                             mob = 17543169 }, -- Tzee Xicu Idol
                    { item = { 3414, 3415, 3416, 3417, 3418 }, mob = 17543469 }, -- Arch Tzee Xicu Idol
                }
            },
            [17543481] = { trade = { { item = 3388, mob = 17543464 } } }, -- Xuu Bhoqa the Enigma
            [17543482] = { trade = { { item = 3389, mob = 17543466 } } }, -- Fuu Tzapo the Blessed
            [17543483] = { trade = { { item = 3390, mob = 17543467 } } }, -- Naa Yixo the Stillrage
            [17543484] = { trade = { { item = 3391, mob = 17543468 } } }, -- Tee Zaksa the Ceaseless
        },
    },
}

return zones[xi.zone.DYNAMIS_WINDURST]
