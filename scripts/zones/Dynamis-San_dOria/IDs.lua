-----------------------------------
-- Area: Dynamis-San_dOria
-----------------------------------
zones = zones or {}

zones[xi.zone.DYNAMIS_SAN_DORIA] =
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
        CONQUEST_BASE                 = 7070, -- Tallying conquest results...
        DYNAMIS_TIME_BEGIN            = 7229, -- The sands of the <item> have begun to fall. You have <number> minutes (Earth time) remaining in Dynamis.
        DYNAMIS_TIME_EXTEND           = 7230, -- our stay in Dynamis has been extended by <number> minute[/s].
        DYNAMIS_TIME_UPDATE_1         = 7231, -- ou will be expelled from Dynamis in <number> [second/minute] (Earth time).
        DYNAMIS_TIME_UPDATE_2         = 7232, -- ou will be expelled from Dynamis in <number> [seconds/minutes] (Earth time).
        DYNAMIS_TIME_EXPIRED          = 7234, -- The sands of the hourglass have emptied...
        OMINOUS_PRESENCE              = 7246, -- You feel an ominous presence, as if something might happen if you possessed <item>.
    },
    mob =
    {
        TIME_EXTENSION =
        {
            { minutes = 10, ki = xi.ki.CRIMSON_GRANULES_OF_TIME,   mob = 17535026 },
            { minutes = 10, ki = xi.ki.AZURE_GRANULES_OF_TIME,     mob = 17535057 },
            { minutes = 10, ki = xi.ki.AMBER_GRANULES_OF_TIME,     mob = 17535139 },
            { minutes = 15, ki = xi.ki.ALABASTER_GRANULES_OF_TIME, mob = 17535131 },
            { minutes = 15, ki = xi.ki.OBSIDIAN_GRANULES_OF_TIME,  mob = 17535128 },
        },

        REFILL_STATUE =
        {
            {
                { mob = 17535003, eye = xi.dynamis.eye.RED   }, -- Serjeant_Tombstone
                { mob = 17535004, eye = xi.dynamis.eye.BLUE  },
                { mob = 17535005, eye = xi.dynamis.eye.GREEN },
            },

            {
                { mob = 17535113, eye = xi.dynamis.eye.RED   }, -- Serjeant_Tombstone
                { mob = 17535114, eye = xi.dynamis.eye.BLUE  },
                { mob = 17535115, eye = xi.dynamis.eye.GREEN },
            },

            {
                { mob = 17535154, eye = xi.dynamis.eye.RED   }, -- Serjeant_Tombstone
                { mob = 17535155, eye = xi.dynamis.eye.GREEN },
            },

            {
                { mob = 17535166, eye = xi.dynamis.eye.RED  }, -- Serjeant_Tombstone
                { mob = 17535167, eye = xi.dynamis.eye.BLUE },
            },

            {
                { mob = 17535193, eye = xi.dynamis.eye.RED   }, -- Serjeant_Tombstone
                { mob = 17535194, eye = xi.dynamis.eye.GREEN },
            },

            {
                { mob = 17535205, eye = xi.dynamis.eye.RED  }, -- Serjeant_Tombstone
                { mob = 17535206, eye = xi.dynamis.eye.BLUE },
            },
        },
    },

    npc =
    {
        QM =
        {
            [17535224] =
            {
                param = { 3353, 3404, 3405, 3406, 3407, 3408 },
                trade =
                {
                    { item = 3353,                             mob = 17534977 }, -- Overlord's Tombstone
                    { item = { 3404, 3405, 3406, 3407, 3408 }, mob = 17535213 }, -- Arch Overlord Tombstone
                }
            },
            [17535225] = { trade = { { item = 3380, mob = 17535207 } } }, -- Bladeburner Rokgevok
            [17535226] = { trade = { { item = 3381, mob = 17535208 } } }, -- Steelshank Kratzvatz
            [17535227] = { trade = { { item = 3382, mob = 17535210 } } }, -- Bloodfist Voshgrosh
            [17535228] = { trade = { { item = 3383, mob = 17535211 } } }, -- Spellspear Djokvukk
        },
    },
}

return zones[xi.zone.DYNAMIS_SAN_DORIA]
