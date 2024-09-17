-----------------------------------
-- Area: Heavens_Tower
-----------------------------------
zones = zones or {}

zones[xi.zone.HEAVENS_TOWER] =
{
    text =
    {
        STAIRWAY_LOCKED               = 554,  -- The door to the Starway Stairway is locked tight.
        STAIRWAY_ONLY_CITIZENS        = 555,  -- The door to the Starway Stairway is locked tight, and only citizens of Windurst can open it.
        CONQUEST_BASE                 = 582,  -- Tallying conquest results...
        YOU_RECOVERED_MOG_TABLET      = 741,  -- A mog tablet has been discovered in ${choice: 0}[West Ronfaure/East Ronfaure/the La Theine Plateau/the Valkurm Dunes/Jugner Forest/the Batallia Downs/North Gustaberg/South Gustaberg/the Konschtat Highlands/the Pashhow Marshlands/the Rolanberry Fields/Beaucedine Glacier/Xarcabard/West Sarutabaruta/East Sarutabaruta/the Tahrongi Canyon/the Buburimu Peninsula/the Meriphataud Mountains/the Sauromugue Champaign/Qufim Island/Behemoth''s Dominion/Cape Teriggan/the Eastern Altepa Desert/the Sanctuary of Zi''Tah/Ro''Maeve/the Yuhtunga Jungle/the Yhoator Jungle/the Western Altepa Desert/the Valley of Sorrows]!
        ALL_MOG_TABLETS_FOUND         = 742,  -- The complete set of mog tablets has been restored to RuLude Gardens! The ancient magic of King Kupofried permeates the air to instill adventurers in this area with its Super Kupowers!
        FIND_THE_MOG_TABLETS          = 743,  -- The strength of the ancient moogle magic has weakened, and the tablets have been scattered to the winds once more. You can feel your Super Kupowers begin to fade away...
        ITEM_CANNOT_BE_OBTAINED       = 7125, -- You cannot obtain the <item>. Come back after sorting your inventory.
        ITEM_OBTAINED                 = 7131, -- Obtained: <item>.
        GIL_OBTAINED                  = 7132, -- Obtained <number> gil.
        KEYITEM_OBTAINED              = 7134, -- Obtained key item: <keyitem>.
        KEYITEM_LOST                  = 7135, -- Lost key item: <keyitem>.
        NOT_HAVE_ENOUGH_GIL           = 7136, -- You do not have enough gil.
        CARRIED_OVER_POINTS           = 7170, -- You have carried over <number> login point[/s].
        LOGIN_CAMPAIGN_UNDERWAY       = 7171, -- The [/January/February/March/April/May/June/July/August/September/October/November/December] <number> Login Campaign is currently underway!
        LOGIN_NUMBER                  = 7172, -- In celebration of your most recent login (login no. <number>), we have provided you with <number> points! You currently have a total of <number> points.
        MEMBERS_LEVELS_ARE_RESTRICTED = 7192, -- Your party is unable to participate because certain members' levels are restricted.
        YOU_LEARNED_TRUST             = 7194, -- You learned Trust: <name>!
        CALL_MULTIPLE_ALTER_EGO       = 7195, -- You are now able to call multiple alter egos.
        FISHING_MESSAGE_OFFSET        = 7381, -- You can't fish here.
        CELEBRATORY_GOODS             = 9114, -- An assortment of celebratory goods is available for purchase.
        OBTAINED_NUM_KEYITEMS         = 9192, -- Obtained key item: <number> <keyitem>!
        NOT_ACQUAINTED                = 9194, -- I'm sorry, but I don't believe we're acquainted. Please leave me be.
    },
    mob =
    {
    },
    npc =
    {
    },
}

return zones[xi.zone.HEAVENS_TOWER]
