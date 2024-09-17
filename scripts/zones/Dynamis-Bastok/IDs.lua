-----------------------------------
-- Area: Dynamis-Bastok
-----------------------------------
zones = zones or {}

zones[xi.zone.DYNAMIS_BASTOK] =
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
            { minutes = 10, ki = xi.ki.CRIMSON_GRANULES_OF_TIME,   mob = 17539142 },
            { minutes = 10, ki = xi.ki.AZURE_GRANULES_OF_TIME,     mob = 17539148 },
            { minutes = 10, ki = xi.ki.AMBER_GRANULES_OF_TIME,     mob = 17539149 },
            { minutes = 15, ki = xi.ki.ALABASTER_GRANULES_OF_TIME, mob = 17539253 },
            { minutes = 15, ki = xi.ki.OBSIDIAN_GRANULES_OF_TIME,  mob = 17539306 },
        },

        REFILL_STATUE =
        {
            {
                { mob = 17539118, eye = xi.dynamis.eye.RED   }, -- Adamantking_Effigy
                { mob = 17539119, eye = xi.dynamis.eye.BLUE  },
                { mob = 17539120, eye = xi.dynamis.eye.GREEN },
            },

            {
                { mob = 17539161, eye = xi.dynamis.eye.RED   }, -- Adamantking_Effigy
                { mob = 17539162, eye = xi.dynamis.eye.BLUE  },
                { mob = 17539163, eye = xi.dynamis.eye.GREEN },
            },

            {
                { mob = 17539171, eye = xi.dynamis.eye.RED   }, -- Adamantking_Effigy
                { mob = 17539172, eye = xi.dynamis.eye.BLUE  },
                { mob = 17539173, eye = xi.dynamis.eye.GREEN },
            },

            {
                { mob = 17539227, eye = xi.dynamis.eye.RED   }, -- Adamantking_Effigy
                { mob = 17539228, eye = xi.dynamis.eye.BLUE  },
                { mob = 17539229, eye = xi.dynamis.eye.GREEN },
            },

            {
                { mob = 17539234, eye = xi.dynamis.eye.RED   }, -- Adamantking_Effigy
                { mob = 17539235, eye = xi.dynamis.eye.BLUE  },
                { mob = 17539236, eye = xi.dynamis.eye.GREEN },
            },

            {
                { mob = 17539266, eye = xi.dynamis.eye.RED  }, -- Adamantking_Effigy
                { mob = 17539267, eye = xi.dynamis.eye.BLUE },
            },

            {
                { mob = 17539274, eye = xi.dynamis.eye.RED   }, -- Adamantking_Effigy
                { mob = 17539275, eye = xi.dynamis.eye.GREEN },
            },

            {
                { mob = 17539286, eye = xi.dynamis.eye.RED  }, -- Adamantking_Effigy
                { mob = 17539287, eye = xi.dynamis.eye.BLUE },
            },

            {
                { mob = 17539293, eye = xi.dynamis.eye.RED   }, -- Adamantking_Effigy
                { mob = 17539294, eye = xi.dynamis.eye.GREEN },
            },
        },
    },

    npc =
    {
        QM =
        {
            [17539323] =
            {
                param = { 3354, 3409, 3410, 3411, 3412, 3413 },
                trade =
                {
                    { item = 3354,                             mob = 17539073 }, -- Gu'Dha Effigy
                    { item = { 3409, 3410, 3411, 3412, 3413 }, mob = 17539312 }, -- Arch Gu'Dha Effigy
                }
            },
            [17539324] = { trade = { { item = 3384, mob = 17539307 } } }, -- Zo'Pha Forgesoul
            [17539325] = { trade = { { item = 3385, mob = 17539308 } } }, -- Ra'Gho Darkfount
            [17539326] = { trade = { { item = 3386, mob = 17539310 } } }, -- Va'Zhe Pummelsong
            [17539327] = { trade = { { item = 3387, mob = 17539311 } } }, -- Bu'Bho Truesteel
        },
    },
}

return zones[xi.zone.DYNAMIS_BASTOK]
