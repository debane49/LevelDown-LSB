-----------------------------------
-- Area: Uleguerand_Range
-----------------------------------
zones = zones or {}

zones[xi.zone.ULEGUERAND_RANGE] =
{
    text =
    {
        YOU_RECOVERED_MOG_TABLET      = 0,    -- A mog tablet has been discovered in ${choice: 0}[West Ronfaure/East Ronfaure/the La Theine Plateau/the Valkurm Dunes/Jugner Forest/the Batallia Downs/North Gustaberg/South Gustaberg/the Konschtat Highlands/the Pashhow Marshlands/the Rolanberry Fields/Beaucedine Glacier/Xarcabard/West Sarutabaruta/East Sarutabaruta/the Tahrongi Canyon/the Buburimu Peninsula/the Meriphataud Mountains/the Sauromugue Champaign/Qufim Island/Behemoth''s Dominion/Cape Teriggan/the Eastern Altepa Desert/the Sanctuary of Zi''Tah/Ro''Maeve/the Yuhtunga Jungle/the Yhoator Jungle/the Western Altepa Desert/the Valley of Sorrows]!
        ALL_MOG_TABLETS_FOUND         = 1,    -- The complete set of mog tablets has been restored to RuLude Gardens! The ancient magic of King Kupofried permeates the air to instill adventurers in this area with its Super Kupowers!
        FIND_THE_MOG_TABLETS          = 2,    -- The strength of the ancient moogle magic has weakened, and the tablets have been scattered to the winds once more. You can feel your Super Kupowers begin to fade away...
        NOTHING_HAPPENS               = 119,  -- Nothing happens...
        ITEM_CANNOT_BE_OBTAINED       = 6397, -- You cannot obtain the <item>. Come back after sorting your inventory.
        ITEM_OBTAINED                 = 6403, -- Obtained: <item>.
        GIL_OBTAINED                  = 6404, -- Obtained <number> gil.
        KEYITEM_OBTAINED              = 6406, -- Obtained key item: <keyitem>.
        NOTHING_OUT_OF_ORDINARY       = 6417, -- There is nothing out of the ordinary here.
        FELLOW_MESSAGE_OFFSET         = 6432, -- I'm ready. I suppose.
        CARRIED_OVER_POINTS           = 7014, -- You have carried over <number> login point[/s].
        LOGIN_CAMPAIGN_UNDERWAY       = 7015, -- The [/January/February/March/April/May/June/July/August/September/October/November/December] <number> Login Campaign is currently underway!
        LOGIN_NUMBER                  = 7016, -- In celebration of your most recent login (login no. <number>), we have provided you with <number> points! You currently have a total of <number> points.
        MEMBERS_LEVELS_ARE_RESTRICTED = 7036, -- Your party is unable to participate because certain members' levels are restricted.
        CONQUEST_BASE                 = 7077, -- Tallying conquest results...
        SOMETHING_GLITTERING          = 7348, -- You see something glittering beneath the surface of the ice.
        WHAT_LIES_BENEATH             = 7349, -- There are many cold <item> scattered around the area. Could someone be trying to melt the ice to retrieve what lies beneath?
        SOMETHING_GLITTERING_BUT      = 7350, -- You see something glittering below the surface here, but the ice encases it completely.
        HOMEPOINT_SET                 = 8342, -- Home point set!
        UNITY_WANTED_BATTLE_INTERACT  = 8400, -- Those who have accepted % must pay # Unity accolades to participate. The content for this Wanted battle is #. [Ready to begin?/You do not have the appropriate object set, so your rewards will be limited.]
    },
    mob =
    {
        SKVADER     = GetFirstID('Skvader'),
        MAGNOTAUR   = GetFirstID('Magnotaur'),
        BONNACON    = GetFirstID('Bonnacon'),
        JORMUNGAND  = GetFirstID('Jormungand'),
        GEUSH_URVAN = GetFirstID('Geush_Urvan'),
        WHITE_CONEY = GetFirstID('White_Coney'),
        BLACK_CONEY = GetFirstID('Black_Coney'),
    },
    npc =
    {
        WATERFALL        = GetFirstID('_058'),
        RABBIT_FOOTPRINT = GetFirstID('Rabbit_Footprint'),
    },
}

return zones[xi.zone.ULEGUERAND_RANGE]
