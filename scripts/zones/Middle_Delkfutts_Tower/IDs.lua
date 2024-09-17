-----------------------------------
-- Area: Middle_Delkfutts_Tower
-----------------------------------
zones = zones or {}

zones[xi.zone.MIDDLE_DELKFUTTS_TOWER] =
{
    text =
    {
        CONQUEST_BASE                 = 4,    -- Tallying conquest results...
        YOU_RECOVERED_MOG_TABLET      = 163,  -- A mog tablet has been discovered in ${choice: 0}[West Ronfaure/East Ronfaure/the La Theine Plateau/the Valkurm Dunes/Jugner Forest/the Batallia Downs/North Gustaberg/South Gustaberg/the Konschtat Highlands/the Pashhow Marshlands/the Rolanberry Fields/Beaucedine Glacier/Xarcabard/West Sarutabaruta/East Sarutabaruta/the Tahrongi Canyon/the Buburimu Peninsula/the Meriphataud Mountains/the Sauromugue Champaign/Qufim Island/Behemoth''s Dominion/Cape Teriggan/the Eastern Altepa Desert/the Sanctuary of Zi''Tah/Ro''Maeve/the Yuhtunga Jungle/the Yhoator Jungle/the Western Altepa Desert/the Valley of Sorrows]!
        ALL_MOG_TABLETS_FOUND         = 164,  -- The complete set of mog tablets has been restored to RuLude Gardens! The ancient magic of King Kupofried permeates the air to instill adventurers in this area with its Super Kupowers!
        FIND_THE_MOG_TABLETS          = 165,  -- The strength of the ancient moogle magic has weakened, and the tablets have been scattered to the winds once more. You can feel your Super Kupowers begin to fade away...
        ITEM_CANNOT_BE_OBTAINED       = 6547, -- You cannot obtain the <item>. Come back after sorting your inventory.
        ITEM_OBTAINED                 = 6553, -- Obtained: <item>.
        GIL_OBTAINED                  = 6554, -- Obtained <number> gil.
        KEYITEM_OBTAINED              = 6556, -- Obtained key item: <keyitem>.
        NOTHING_OUT_OF_ORDINARY       = 6567, -- There is nothing out of the ordinary here.
        SENSE_OF_FOREBODING           = 6568, -- You are suddenly overcome with a sense of foreboding...
        FELLOW_MESSAGE_OFFSET         = 6582, -- I'm ready. I suppose.
        CARRIED_OVER_POINTS           = 7164, -- You have carried over <number> login point[/s].
        LOGIN_CAMPAIGN_UNDERWAY       = 7165, -- The [/January/February/March/April/May/June/July/August/September/October/November/December] <number> Login Campaign is currently underway!
        LOGIN_NUMBER                  = 7166, -- In celebration of your most recent login (login no. <number>), we have provided you with <number> points! You currently have a total of <number> points.
        MEMBERS_LEVELS_ARE_RESTRICTED = 7186, -- Your party is unable to participate because certain members' levels are restricted.
        FISHING_MESSAGE_OFFSET        = 7227, -- You can't fish here.
        CHEST_UNLOCKED                = 7335, -- You unlock the chest!
        PLAYER_OBTAINS_ITEM           = 7383, -- <name> obtains <item>!
        UNABLE_TO_OBTAIN_ITEM         = 7384, -- You were unable to obtain the item.
        PLAYER_OBTAINS_TEMP_ITEM      = 7385, -- <name> obtains the temporary item: <item>!
        ALREADY_POSSESS_TEMP          = 7386, -- You already possess that temporary item.
        NO_COMBINATION                = 7391, -- You were unable to enter a combination.
        REGIME_REGISTERED             = 9469, -- New training regime registered!
    },
    mob =
    {
        EURYTOS                  = GetFirstID('Eurytos'),
        POLYBOTES                = GetFirstID('Polybotes'),
        RHOITOS                  = GetFirstID('Rhoitos'),
        OPHION                   = GetFirstID('Ophion'),
        OGYGOS                   = GetFirstID('Ogygos'),
        RHOIKOS                  = GetFirstID('Rhoikos'),
        BLADE_OF_EVIL_MOB_OFFSET = GetFirstID('Gerwitzs_Scythe'),
    },
    npc =
    {
        TREASURE_CHEST = GetFirstID('Treasure_Chest'),
    },
}

return zones[xi.zone.MIDDLE_DELKFUTTS_TOWER]
