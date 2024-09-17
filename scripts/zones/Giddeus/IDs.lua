-----------------------------------
-- Area: Giddeus
-----------------------------------
zones = zones or {}

zones[xi.zone.GIDDEUS] =
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
        SENSE_OF_FOREBODING           = 6405, -- You are suddenly overcome with a sense of foreboding...
        FELLOW_MESSAGE_OFFSET         = 6419, -- I'm ready. I suppose.
        CARRIED_OVER_POINTS           = 7001, -- You have carried over <number> login point[/s].
        LOGIN_CAMPAIGN_UNDERWAY       = 7002, -- The [/January/February/March/April/May/June/July/August/September/October/November/December] <number> Login Campaign is currently underway!
        LOGIN_NUMBER                  = 7003, -- In celebration of your most recent login (login no. <number>), we have provided you with <number> points! You currently have a total of <number> points.
        MEMBERS_LEVELS_ARE_RESTRICTED = 7023, -- Your party is unable to participate because certain members' levels are restricted.
        CONQUEST_BASE                 = 7064, -- Tallying conquest results...
        FISHING_MESSAGE_OFFSET        = 7223, -- You can't fish here.
        OFFERED_UP_KEY_ITEM           = 7348, -- Offered up key item: <keyitem>!
        SPRING_FILL_UP                = 7369, -- You fill your flask with water.
        SPRING_DEFAULT                = 7370, -- Sparkling clear water bubbles up from the ground. If you have a container, you can fill it here.
        CHEST_UNLOCKED                = 7420, -- You unlock the chest!
        HARVESTING_IS_POSSIBLE_HERE   = 7428, -- Harvesting is possible here if you have <item>.
        HOMEPOINT_SET                 = 7456, -- Home point set!
    },
    mob =
    {
        HOO_MJUU_THE_TORRENT   = GetFirstID('Hoo_Mjuu_the_Torrent'),
        JUU_DUZU_THE_WHIRLWIND = GetFirstID('Juu_Duzu_the_Whirlwind'),
        VUU_PUQU_THE_BEGUILER  = GetFirstID('Vuu_Puqu_the_Beguiler'),
        VAA_HUJA_THE_ERUDITE   = GetFirstID('Vaa_Huja_the_Erudite'),
    },
    npc =
    {
        TREASURE_CHEST = GetFirstID('Treasure_Chest'),
        HARVESTING     = GetTableOfIDs('Harvesting_Point'),
    },
}

return zones[xi.zone.GIDDEUS]
