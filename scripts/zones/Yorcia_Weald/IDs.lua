-----------------------------------
-- Area: Yorcia_Weald
-----------------------------------
zones = zones or {}

zones[xi.zone.YORCIA_WEALD] =
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
        CARRIED_OVER_POINTS           = 7001, -- You have carried over <number> login point[/s].
        LOGIN_CAMPAIGN_UNDERWAY       = 7002, -- The [/January/February/March/April/May/June/July/August/September/October/November/December] <number> Login Campaign is currently underway!
        LOGIN_NUMBER                  = 7003, -- In celebration of your most recent login (login no. <number>), we have provided you with <number> points! You currently have a total of <number> points.
        MEMBERS_LEVELS_ARE_RESTRICTED = 7023, -- Your party is unable to participate because certain members' levels are restricted.
        WAYPOINT_ATTUNED              = 7540, -- Your <keyitem> has been attuned to a geomagnetic fount[/ at the frontier station/ at Frontier Bivouac #1/ at Frontier Bivouac #2/ at Frontier Bivouac #3]!
        EXPENDED_KINETIC_UNITS        = 7555, -- You have expended <number> kinetic unit[/s] and will be transported to another locale.
        INSUFFICIENT_UNITS            = 7556, -- Your stock of kinetic units is insufficient.
        REACHED_KINETIC_UNIT_LIMIT    = 7557, -- You have reached your limit of kinetic units and cannot charge your artifact any further.
        CANNOT_RECEIVE_KINETIC        = 7558, -- There is no response. You apparently cannot receive kinetic units from this item.
        ARTIFACT_HAS_BEEN_CHARGED     = 7559, -- Your artifact has been charged with <number> kinetic unit[/s]. Your current stock of kinetic units totals <number>.
        ARTIFACT_TERMINAL_VOLUME      = 7560, -- Your artifact has been charged to its terminal volume of kinetic units.
        SURPLUS_LOST_TO_AETHER        = 7561, -- A surplus of <number> kinetic unit[/s] has been lost to the aether.
        HOMEPOINT_SET                 = 8731, -- Home point set!
    },
    mob =
    {
        REIVE_MOB_OFFSET = GetFirstID('Gnarled_Rampart'),
    },
    npc =
    {
        REIVE_COLLISION_OFFSET = GetFirstID('_7b0'),
    },
}

return zones[xi.zone.YORCIA_WEALD]
