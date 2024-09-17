-----------------------------------
-- Area: The_Ashu_Talif (60)
-----------------------------------
zones = zones or {}

zones[xi.zone.THE_ASHU_TALIF] =
{
    text =
    {
        YOU_RECOVERED_MOG_TABLET      = 0,    -- A mog tablet has been discovered in ${choice: 0}[West Ronfaure/East Ronfaure/the La Theine Plateau/the Valkurm Dunes/Jugner Forest/the Batallia Downs/North Gustaberg/South Gustaberg/the Konschtat Highlands/the Pashhow Marshlands/the Rolanberry Fields/Beaucedine Glacier/Xarcabard/West Sarutabaruta/East Sarutabaruta/the Tahrongi Canyon/the Buburimu Peninsula/the Meriphataud Mountains/the Sauromugue Champaign/Qufim Island/Behemoth''s Dominion/Cape Teriggan/the Eastern Altepa Desert/the Sanctuary of Zi''Tah/Ro''Maeve/the Yuhtunga Jungle/the Yhoator Jungle/the Western Altepa Desert/the Valley of Sorrows]!
        ALL_MOG_TABLETS_FOUND         = 1,    -- The complete set of mog tablets has been restored to RuLude Gardens! The ancient magic of King Kupofried permeates the air to instill adventurers in this area with its Super Kupowers!
        FIND_THE_MOG_TABLETS          = 2,    -- The strength of the ancient moogle magic has weakened, and the tablets have been scattered to the winds once more. You can feel your Super Kupowers begin to fade away...
        ITEM_CANNOT_BE_OBTAINED       = 6384, -- You cannot obtain the <item>. Come back after sorting your inventory.
        FULL_INVENTORY_AFTER_TRADE    = 6388, -- You cannot obtain the <item>. Try trading again after sorting your inventory.
        ITEM_OBTAINED                 = 6390, -- Obtained: <item>.
        GIL_OBTAINED                  = 6391, -- Obtained <number> gil.
        KEYITEM_OBTAINED              = 6393, -- Obtained key item: <keyitem>.
        KEYITEM_LOST                  = 6394, -- Lost key item: <keyitem>.
        NOT_HAVE_ENOUGH_GIL           = 6395, -- You do not have enough gil.
        ITEMS_OBTAINED                = 6399, -- You obtain <number> <item>!
        CARRIED_OVER_POINTS           = 7001, -- You have carried over <number> login point[/s].
        LOGIN_CAMPAIGN_UNDERWAY       = 7002, -- The [/January/February/March/April/May/June/July/August/September/October/November/December] <number> Login Campaign is currently underway!
        LOGIN_NUMBER                  = 7003, -- In celebration of your most recent login (login no. <number>), we have provided you with <number> points! You currently have a total of <number> points.
        MEMBERS_LEVELS_ARE_RESTRICTED = 7023, -- Your party is unable to participate because certain members' levels are restricted.
        TIME_TO_COMPLETE              = 7415, -- You have <number> [minute/minutes] (Earth time) to complete this mission.
        MISSION_FAILED                = 7416, -- The mission has failed. Leaving area.
        TIME_REMAINING_MINUTES        = 7420, -- ime remaining: <number> [minute/minutes] (Earth time).
        TIME_REMAINING_SECONDS        = 7421, -- ime remaining: <number> [second/seconds] (Earth time).
        FADES_INTO_NOTHINGNESS        = 7422, -- The <item> fades into nothingness...
        PARTY_FALLEN                  = 7423, -- ll party members have fallen in battle. Mission failure in <number> [minute/minutes].
        GOWAM_DEATH                   = 7570, -- Ugh...
        YAZQUHL_DEATH                 = 7573, -- Defeated...by a corsair...?
        TAKE_THIS                     = 7574, -- Take this!
        REST_BENEATH                  = 7575, -- Time for you to rest beneath the waves!
        STOP_US                       = 7576, -- There's nothing you can do to stop us!
        BATTLE_HIGH_SEAS              = 7578, -- A battle on the high seas? My warrior's spirit soars in anticipation!
        TIME_IS_NEAR                  = 7579, -- My time is near...
        SO_I_FALL                     = 7580, -- And so I fall...
        SWIFT_AS_LIGHTNING            = 7581, -- Swift as lightning...!
        HARNESS_THE_WHIRLWIND         = 7582, -- Harness the whirlwind...!
        STING_OF_MY_BLADE             = 7583, -- Feel the sting of my blade!
        UNNATURAL_CURS                = 7584, -- Unnatural curs!
        OVERPOWERED_CREW              = 7585, -- You have overpowered my crew...
        TEST_YOUR_BLADES              = 7586, -- I will test your blades. Prepare to join your ancestors...
        FOR_THE_BLACK_COFFIN          = 7587, -- For the Black Coffin!
        FOR_EPHRAMAD                  = 7588, -- For Ephramad!
        TROUBLESOME_SQUABS            = 7589, -- Troublesome squabs...
    },

    mob =
    {
        GESSHO              = GetFirstID('Gessho'),
        ASHU_CREW_OFFSET    = GetFirstID('Ashu_Talif_Crew'),
        ASHU_CAPTAIN_OFFSET = GetFirstID('Ashu_Talif_Captain'),
        GOWAM               = GetFirstID('Gowam'),
        YAZQUHL             = GetFirstID('Yazquhl'),
    },

    npc =
    {
    },
}

return zones[xi.zone.THE_ASHU_TALIF]
