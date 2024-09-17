-----------------------------------
-- Area: VeLugannon_Palace
-----------------------------------
zones = zones or {}

zones[xi.zone.VELUGANNON_PALACE] =
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
        CONQUEST_BASE                 = 7064,  -- Tallying conquest results...
        CHEST_UNLOCKED                = 7231,  -- You unlock the chest!
        EVIL_PRESENCE                 = 7241,  -- You sense an evil presence lurking in the shadows...
        KNIFE_CHANGES_SHAPE           = 7248,  -- The <item> begins to change shape.
        NOTHING_HAPPENS               = 7249,  -- Nothing happens.
        REGIME_REGISTERED             = 10174, -- New training regime registered!
        PLAYER_OBTAINS_ITEM           = 11226, -- <name> obtains <item>!
        UNABLE_TO_OBTAIN_ITEM         = 11227, -- You were unable to obtain the item.
        PLAYER_OBTAINS_TEMP_ITEM      = 11228, -- <name> obtains the temporary item: <item>!
        ALREADY_POSSESS_TEMP          = 11229, -- You already possess that temporary item.
        NO_COMBINATION                = 11234, -- You were unable to enter a combination.
    },
    mob =
    {
        MIMIC            = GetFirstID('Mimic'),
        BRIGANDISH_BLADE = GetFirstID('Brigandish_Blade'),
        STEAM_CLEANER    = GetFirstID('Steam_Cleaner'),
    },
    npc =
    {
        QM3             = GetFirstID('qm3'),
        Y_DOOR_OFFSET   = GetFirstID('_4x0'),
        B_DOOR_OFFSET   = GetFirstID('_4x8'),
        Y_LITH_OFFSET   = GetTableOfIDs('Monolith')[1],
        B_LITH_OFFSET   = GetTableOfIDs('Monolith')[6],
        TREASURE_COFFER = GetFirstID('Treasure_Coffer'),
    },
}

return zones[xi.zone.VELUGANNON_PALACE]
