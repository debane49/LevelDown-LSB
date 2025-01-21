-----------------------------------
-- Area: Den_of_Rancor
-----------------------------------
zones = zones or {}

zones[xi.zone.DEN_OF_RANCOR] =
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
        FELLOW_MESSAGE_OFFSET         = 6419,  -- I'm ready. I suppose.
        CARRIED_OVER_POINTS           = 7001,  -- You have carried over <number> login point[/s].
        LOGIN_CAMPAIGN_UNDERWAY       = 7002,  -- The [/January/February/March/April/May/June/July/August/September/October/November/December] <number> Login Campaign is currently underway!
        LOGIN_NUMBER                  = 7003,  -- In celebration of your most recent login (login no. <number>), we have provided you with <number> points! You currently have a total of <number> points.
        MEMBERS_LEVELS_ARE_RESTRICTED = 7023,  -- Your party is unable to participate because certain members' levels are restricted.
        CONQUEST_BASE                 = 7065,  -- Tallying conquest results...
        LANTERN_OFFSET                = 7224,  -- The grating will not budge.
        FISHING_MESSAGE_OFFSET        = 7252,  -- You can't fish here.
        CHEST_UNLOCKED                = 7360,  -- You unlock the chest!
        SENSE_OMINOUS_PRESENCE        = 7370,  -- You sense an ominous presence...
        PLAYER_OBTAINS_ITEM           = 7417,  -- <name> obtains <item>!
        UNABLE_TO_OBTAIN_ITEM         = 7418,  -- You were unable to obtain the item.
        PLAYER_OBTAINS_TEMP_ITEM      = 7419,  -- <name> obtains the temporary item: <item>!
        ALREADY_POSSESS_TEMP          = 7420,  -- You already possess that temporary item.
        NO_COMBINATION                = 7425,  -- You were unable to enter a combination.
        REGIME_REGISTERED             = 9503,  -- New training regime registered!
        HOMEPOINT_SET                 = 10553, -- Home point set!
        UNITY_WANTED_BATTLE_INTERACT  = 10611, -- Those who have accepted % must pay # Unity accolades to participate. The content for this Wanted battle is #. [Ready to begin?/You do not have the appropriate object set, so your rewards will be limited.]
    },
    mob =
    {
        AZRAEL                  = GetFirstID('Azrael'),
        BISTRE_HEARTED_MALBERRY = GetFirstID('Bistre-hearted_Malberry'),
        CARMINE_TAILED_JANBERRY = GetFirstID('Carmine-tailed_Janberry'),
        TAWNY_FINGERED_MUGBERRY = GetFirstID('Tawny-fingered_Mugberry'),
        CELESTE_EYED_TOZBERRY   = GetFirstID('Celeste-eyed_Tozberry'),
        FRIAR_RUSH              = GetFirstID('Friar_Rush'),
        HAKUTAKU                = GetFirstID('Hakutaku'),
        MIMIC                   = GetFirstID('Mimic'),
        MOKUMOKUREN             = GetFirstID('Mokumokuren'),
        OGAMA                   = GetFirstID('Ogama'),
    },
    npc =
    {
        LANTERN_OFFSET  = GetFirstID('_4g3'),
        DROP_GATE       = GetFirstID('_4g0'),
        TREASURE_COFFER = GetFirstID('Treasure_Coffer'),
    },
}

return zones[xi.zone.DEN_OF_RANCOR]
