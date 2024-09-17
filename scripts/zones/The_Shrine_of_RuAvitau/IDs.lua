-----------------------------------
-- Area: The_Shrine_of_RuAvitau
-----------------------------------
zones = zones or {}

zones[xi.zone.THE_SHRINE_OF_RUAVITAU] =
{
    text =
    {
        YOU_RECOVERED_MOG_TABLET      = 0,     -- A mog tablet has been discovered in ${choice: 0}[West Ronfaure/East Ronfaure/the La Theine Plateau/the Valkurm Dunes/Jugner Forest/the Batallia Downs/North Gustaberg/South Gustaberg/the Konschtat Highlands/the Pashhow Marshlands/the Rolanberry Fields/Beaucedine Glacier/Xarcabard/West Sarutabaruta/East Sarutabaruta/the Tahrongi Canyon/the Buburimu Peninsula/the Meriphataud Mountains/the Sauromugue Champaign/Qufim Island/Behemoth''s Dominion/Cape Teriggan/the Eastern Altepa Desert/the Sanctuary of Zi''Tah/Ro''Maeve/the Yuhtunga Jungle/the Yhoator Jungle/the Western Altepa Desert/the Valley of Sorrows]!
        ALL_MOG_TABLETS_FOUND         = 1,     -- The complete set of mog tablets has been restored to RuLude Gardens! The ancient magic of King Kupofried permeates the air to instill adventurers in this area with its Super Kupowers!
        FIND_THE_MOG_TABLETS          = 2,     -- The strength of the ancient moogle magic has weakened, and the tablets have been scattered to the winds once more. You can feel your Super Kupowers begin to fade away...
        ITEM_CANNOT_BE_OBTAINED       = 6384,  -- You cannot obtain the <item>. Come back after sorting your inventory.
        ITEM_OBTAINED                 = 6390,  -- Obtained: <item>.
        GIL_OBTAINED                  = 6391,  -- Obtained <number> gil.
        KEYITEM_OBTAINED              = 6393,  -- Obtained key item: <keyitem>.
        NOTHING_OUT_OF_ORDINARY       = 6404,  -- There is nothing out of the ordinary here.
        CARRIED_OVER_POINTS           = 7001,  -- You have carried over <number> login point[/s].
        LOGIN_CAMPAIGN_UNDERWAY       = 7002,  -- The [/January/February/March/April/May/June/July/August/September/October/November/December] <number> Login Campaign is currently underway!
        LOGIN_NUMBER                  = 7003,  -- In celebration of your most recent login (login no. <number>), we have provided you with <number> points! You currently have a total of <number> points.
        MEMBERS_LEVELS_ARE_RESTRICTED = 7023,  -- Your party is unable to participate because certain members' levels are restricted.
        FISHING_MESSAGE_OFFSET        = 7064,  -- You can't fish here.
        CONQUEST_BASE                 = 7164,  -- Tallying conquest results...
        SMALL_HOLE_HERE               = 7351,  -- There is a small hole here. It appears to be damp inside...
        KIRIN_OFFSET                  = 7362,  -- I am Kirin, master of the Shijin. The one who stands above all. You, who have risen above your mortal status to contend with the gods... It is time to reap your reward.
        REGIME_REGISTERED             = 10354, -- New training regime registered!
        PLAYER_OBTAINS_ITEM           = 11406, -- <name> obtains <item>!
        UNABLE_TO_OBTAIN_ITEM         = 11407, -- You were unable to obtain the item.
        PLAYER_OBTAINS_TEMP_ITEM      = 11408, -- <name> obtains the temporary item: <item>!
        ALREADY_POSSESS_TEMP          = 11409, -- You already possess that temporary item.
        NO_COMBINATION                = 11414, -- You were unable to enter a combination.
        HOMEPOINT_SET                 = 11440, -- Home point set!
    },
    mob =
    {
        ULLIKUMMI       = GetFirstID('Ullikummi'),
        OLLAS_OFFSET    = GetFirstID('Olla_Pequena'),
        KIRIN           = GetFirstID('Kirin'),
        MOTHER_GLOBE    = GetFirstID('Mother_Globe'),
    },
    npc =
    {
        OLLAS_QM        = GetFirstID('qm1'),
        DOOR_OFFSET     = GetFirstID('_4y0'),
        MONOLITH_OFFSET = GetFirstID('Monolith'),
    },
}

return zones[xi.zone.THE_SHRINE_OF_RUAVITAU]
