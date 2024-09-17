-----------------------------------
-- Area: King Ranperres Tomb (190)
-----------------------------------
zones = zones or {}

zones[xi.zone.KING_RANPERRES_TOMB] =
{
    text =
    {
        CONQUEST_BASE                 = 0,     -- Tallying conquest results...
        YOU_RECOVERED_MOG_TABLET      = 159,   -- A mog tablet has been discovered in ${choice: 0}[West Ronfaure/East Ronfaure/the La Theine Plateau/the Valkurm Dunes/Jugner Forest/the Batallia Downs/North Gustaberg/South Gustaberg/the Konschtat Highlands/the Pashhow Marshlands/the Rolanberry Fields/Beaucedine Glacier/Xarcabard/West Sarutabaruta/East Sarutabaruta/the Tahrongi Canyon/the Buburimu Peninsula/the Meriphataud Mountains/the Sauromugue Champaign/Qufim Island/Behemoth''s Dominion/Cape Teriggan/the Eastern Altepa Desert/the Sanctuary of Zi''Tah/Ro''Maeve/the Yuhtunga Jungle/the Yhoator Jungle/the Western Altepa Desert/the Valley of Sorrows]!
        ALL_MOG_TABLETS_FOUND         = 160,   -- The complete set of mog tablets has been restored to RuLude Gardens! The ancient magic of King Kupofried permeates the air to instill adventurers in this area with its Super Kupowers!
        FIND_THE_MOG_TABLETS          = 161,   -- The strength of the ancient moogle magic has weakened, and the tablets have been scattered to the winds once more. You can feel your Super Kupowers begin to fade away...
        ITEM_CANNOT_BE_OBTAINED       = 6543,  -- You cannot obtain the <item>. Come back after sorting your inventory.
        ITEM_OBTAINED                 = 6549,  -- Obtained: <item>.
        GIL_OBTAINED                  = 6550,  -- Obtained <number> gil.
        KEYITEM_OBTAINED              = 6552,  -- Obtained key item: <keyitem>.
        FELLOW_MESSAGE_OFFSET         = 6578,  -- I'm ready. I suppose.
        CARRIED_OVER_POINTS           = 7160,  -- You have carried over <number> login point[/s].
        LOGIN_CAMPAIGN_UNDERWAY       = 7161,  -- The [/January/February/March/April/May/June/July/August/September/October/November/December] <number> Login Campaign is currently underway!
        LOGIN_NUMBER                  = 7162,  -- In celebration of your most recent login (login no. <number>), we have provided you with <number> points! You currently have a total of <number> points.
        GEOMAGNETRON_ATTUNED          = 7171,  -- Your <keyitem> has been attuned to a geomagnetic fount in the corresponding locale.
        MEMBERS_LEVELS_ARE_RESTRICTED = 7182,  -- Your party is unable to participate because certain members' levels are restricted.
        CHEST_UNLOCKED                = 7294,  -- You unlock the chest!
        SENSE_SOMETHING_EVIL          = 7321,  -- You sense something evil.
        HEAVY_DOOR                    = 7322,  -- It is a solid stone door.
        FINAL_RESTING_PLACE           = 7326,  -- It appears to be the true resting place of King Ranperre.
        PLAYER_OBTAINS_ITEM           = 8260,  -- <name> obtains <item>!
        UNABLE_TO_OBTAIN_ITEM         = 8261,  -- You were unable to obtain the item.
        PLAYER_OBTAINS_TEMP_ITEM      = 8262,  -- <name> obtains the temporary item: <item>!
        ALREADY_POSSESS_TEMP          = 8263,  -- You already possess that temporary item.
        NO_COMBINATION                = 8268,  -- You were unable to enter a combination.
        REGIME_REGISTERED             = 10346, -- New training regime registered!
        COMMON_SENSE_SURVIVAL         = 11433, -- It appears that you have arrived at a new survival guide provided by the Adventurers' Mutual Aid Network. Common sense dictates that you should now be able to teleport here from similar tomes throughout the world.
    },
    mob =
    {
        GWYLLGI               = GetFirstID('Gwyllgi'),
        CRYPT_GHOST           = GetFirstID('Crypt_Ghost'),
        BARBASTELLE           = GetFirstID('Barbastelle'),
        CHERRY_SAPLING_OFFSET = GetFirstID('Cherry_Sapling'),
        VRTRA                 = GetFirstID('Vrtra'),
        CORRUPTED_YORGOS      = GetFirstID('Corrupted_Yorgos'),
        CORRUPTED_SOFFEIL     = GetFirstID('Corrupted_Soffeil'),
        CORRUPTED_ULBRIG      = GetFirstID('Corrupted_Ulbrig'),
        ANKOU                 = GetFirstID('Ankou'),
    },
    npc =
    {
        TREASURE_CHEST = GetFirstID('Treasure_Chest'),
    },
}

return zones[xi.zone.KING_RANPERRES_TOMB]
