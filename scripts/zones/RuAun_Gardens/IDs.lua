-----------------------------------
-- Area: RuAun_Gardens
-----------------------------------
zones = zones or {}

zones[xi.zone.RUAUN_GARDENS] =
{
    text =
    {
        YOU_RECOVERED_MOG_TABLET      = 0,     -- A mog tablet has been discovered in ${choice: 0}[West Ronfaure/East Ronfaure/the La Theine Plateau/the Valkurm Dunes/Jugner Forest/the Batallia Downs/North Gustaberg/South Gustaberg/the Konschtat Highlands/the Pashhow Marshlands/the Rolanberry Fields/Beaucedine Glacier/Xarcabard/West Sarutabaruta/East Sarutabaruta/the Tahrongi Canyon/the Buburimu Peninsula/the Meriphataud Mountains/the Sauromugue Champaign/Qufim Island/Behemoth''s Dominion/Cape Teriggan/the Eastern Altepa Desert/the Sanctuary of Zi''Tah/Ro''Maeve/the Yuhtunga Jungle/the Yhoator Jungle/the Western Altepa Desert/the Valley of Sorrows]!
        ALL_MOG_TABLETS_FOUND         = 1,     -- The complete set of mog tablets has been restored to RuLude Gardens! The ancient magic of King Kupofried permeates the air to instill adventurers in this area with its Super Kupowers!
        FIND_THE_MOG_TABLETS          = 2,     -- The strength of the ancient moogle magic has weakened, and the tablets have been scattered to the winds once more. You can feel your Super Kupowers begin to fade away...
        ITEM_CANNOT_BE_OBTAINED       = 6384,  -- You cannot obtain the <item>. Come back after sorting your inventory.
        FULL_INVENTORY_AFTER_TRADE    = 6388,  -- You cannot obtain the <item>. Try trading again after sorting your inventory.
        ITEM_OBTAINED                 = 6390,  -- Obtained: <item>.
        GIL_OBTAINED                  = 6391,  -- Obtained <number> gil.
        KEYITEM_OBTAINED              = 6393,  -- Obtained key item: <keyitem>.
        ITEMS_OBTAINED                = 6399,  -- You obtain <number> <item>!
        NOTHING_OUT_OF_ORDINARY       = 6404,  -- There is nothing out of the ordinary here.
        CARRIED_OVER_POINTS           = 7001,  -- You have carried over <number> login point[/s].
        LOGIN_CAMPAIGN_UNDERWAY       = 7002,  -- The [/January/February/March/April/May/June/July/August/September/October/November/December] <number> Login Campaign is currently underway!
        LOGIN_NUMBER                  = 7003,  -- In celebration of your most recent login (login no. <number>), we have provided you with <number> points! You currently have a total of <number> points.
        MEMBERS_LEVELS_ARE_RESTRICTED = 7023,  -- Your party is unable to participate because certain members' levels are restricted.
        FISHING_MESSAGE_OFFSET        = 7064,  -- You can't fish here.
        CONQUEST_BASE                 = 7164,  -- Tallying conquest results...
        IT_IS_ALREADY_FUNCTIONING     = 7324,  -- It is already functioning.
        CHEST_UNLOCKED                = 7358,  -- You unlock the chest!
        SKY_GOD_OFFSET                = 7375,  -- A strange insignia pointing north is carved into the wall.
        PLAYER_OBTAINS_ITEM           = 7577,  -- <name> obtains <item>!
        UNABLE_TO_OBTAIN_ITEM         = 7578,  -- You were unable to obtain the item.
        PLAYER_OBTAINS_TEMP_ITEM      = 7579,  -- <name> obtains the temporary item: <item>!
        ALREADY_POSSESS_TEMP          = 7580,  -- You already possess that temporary item.
        NO_COMBINATION                = 7585,  -- You were unable to enter a combination.
        REGIME_REGISTERED             = 9741,  -- New training regime registered!
        HOMEPOINT_SET                 = 11662, -- Home point set!
        COMMON_SENSE_SURVIVAL         = 11682, -- It appears that you have arrived at a new survival guide provided by the Adventurers' Mutual Aid Network. Common sense dictates that you should now be able to teleport here from similar tomes throughout the world.
    },

    mob =
    {
        DESPOT = GetFirstID('Despot'),
        MIMIC  = GetFirstID('Mimic'),
        GENBU  = GetFirstID('Genbu'),
        SEIRYU = GetFirstID('Seiryu'),
        BYAKKO = GetFirstID('Byakko'),
        SUZAKU = GetFirstID('Suzaku'),
    },

    npc =
    {
        TREASURE_COFFER    = GetFirstID('Treasure_Coffer'),
        PINCERSTONE_OFFSET = GetFirstID('Pincerstone'),
        PORTAL_OFFSET      = GetFirstID('_3mc'),
        OVERSEER_BASE      = GetFirstID('Conquest_Banner'),
    },
}

return zones[xi.zone.RUAUN_GARDENS]
