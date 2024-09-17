-----------------------------------
-- Area: LaLoff_Amphitheater
-----------------------------------
zones = zones or {}

zones[xi.zone.LALOFF_AMPHITHEATER] =
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
        CONQUEST_BASE                 = 7064, -- Tallying conquest results...
        TIME_IN_THE_BATTLEFIELD_IS_UP = 7228, -- Your time in the battlefield is up! Now exiting...
        NO_RESPONSE_CANNOT_ESCAPE     = 7244, -- There is no response. You cannot escape!
        MEMBERS_OF_YOUR_PARTY         = 7534, -- Currently, # members of your party (including yourself) have clearance to enter the battlefield.
        MEMBERS_OF_YOUR_ALLIANCE      = 7535, -- Currently, # members of your alliance (including yourself) have clearance to enter the battlefield.
        TIME_LIMIT_FOR_THIS_BATTLE_IS = 7537, -- The time limit for this battle is <number> minutes.
        PARTY_MEMBERS_HAVE_FALLEN     = 7573, -- All party members have fallen in battle. Now leaving the battlefield.
        THE_PARTY_WILL_BE_REMOVED     = 7580, -- If all party members' HP are still zero after # minute[/s], the party will be removed from the battlefield.
        LARGE_CRACK_RUNNING_DOWN      = 7593, -- The <item> has a large crack running straight down the side.
        ENTERING_THE_BATTLEFIELD_FOR  = 7600, -- Entering the battlefield for [Ark Angels (1)/Ark Angels (2)/Ark Angels (3)/Ark Angels (4)/Ark Angels (5)/Divine Might/Ark Angels (1)/Ark Angels (2)/Ark Angels (3)/Ark Angels (4)/Ark Angels (5)/Divine Might]!
        THE_SEAL_FADES                = 7611, -- The seal on the <item> flares brightly for an instant, then fades away!
    },
    mob =
    {
        ARK_ANGEL_EV      = GetFirstID('Ark_Angel_EV'),
        ARK_ANGEL_GK      = GetFirstID('Ark_Angel_GK'),
        ARK_ANGEL_HM      = GetFirstID('Ark_Angel_HM'),
        ARK_ANGEL_MR      = GetFirstID('Ark_Angel_MR'),
        ARK_ANGEL_TT      = GetFirstID('Ark_Angel_TT'),
        ARK_ANGEL_EV_HTBF = GetFirstID('Ark_Angel_EV_HTBF'),
        ARK_ANGEL_GK_HTBF = GetFirstID('Ark_Angel_GK_HTBF'),
        ARK_ANGEL_HM_HTBF = GetFirstID('Ark_Angel_HM_HTBF'),
        ARK_ANGEL_MR_HTBF = GetFirstID('Ark_Angel_MR_HTBF'),
        ARK_ANGEL_TT_HTBF = GetFirstID('Ark_Angel_TT_HTBF'),
    },
    npc =
    {
    },
}

return zones[xi.zone.LALOFF_AMPHITHEATER]
