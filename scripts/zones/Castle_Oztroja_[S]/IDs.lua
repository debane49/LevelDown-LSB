-----------------------------------
-- Area: Castle_Oztroja_[S]
-----------------------------------
zones = zones or {}

zones[xi.zone.CASTLE_OZTROJA_S] =
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
        FISHING_MESSAGE_OFFSET        = 7064, -- You can't fish here.
        CAMPAIGN_RESULTS_TALLIED      = 7601, -- Campaign results tallied.
        PARTY_MEMBERS_HAVE_FALLEN     = 8036, -- All party members have fallen in battle. Now leaving the battlefield.
        THE_PARTY_WILL_BE_REMOVED     = 8043, -- If all party members' HP are still zero after # minute[/s], the party will be removed from the battlefield.
    },
    mob =
    {
        AA_XALMO_THE_SAVAGE    = GetFirstID('Aa_Xalmo_the_Savage'),
        ZHUU_BUXU_THE_SILENT   = GetFirstID('Zhuu_Buxu_the_Silent'),
        DUU_MASA_THE_ONECUT    = GetFirstID('Duu_Masa_the_Onecut'),
        DEE_ZELKO_THE_ESOTERIC = GetFirstID('Dee_Zelko_the_Esoteric'),
        MARQUIS_FORNEUS        = GetFirstID('Marquis_Forneus'),
        LOO_KUTTO_THE_PENSIVE  = GetFirstID('Loo_Kutto_the_Pensive'),
        FLESHGNASHER           = GetFirstID('Fleshgnasher'),
        VEE_LADU_THE_TITTERER  = GetFirstID('Vee_Ladu_the_Titterer'),
        MAA_ILLMU_THE_BESTOWER = GetFirstID('Maa_Illmu_the_Bestower'),
        ASTERION               = GetFirstID('Asterion'),
        SUU_XICU_THE_CANTABILE = GetFirstID('Suu_Xicu_the_Cantabile'),
    },
    npc =
    {
        CAMPAIGN_NPC_OFFSET = GetFirstID('Yaibroux_TK'), -- San, Bas, Win, Flag +4, CA
    },
}

return zones[xi.zone.CASTLE_OZTROJA_S]
