-----------------------------------
-- Area: Boneyard_Gully
-----------------------------------
zones = zones or {}

zones[xi.zone.BONEYARD_GULLY] =
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
        TIME_IN_THE_BATTLEFIELD_IS_UP = 7069, -- Your time in the battlefield is up! Now exiting...
        PARTY_MEMBERS_ARE_ENGAGED     = 7084, -- The battlefield where your party members are engaged in combat is locked. Access is denied.
        NO_BATTLEFIELD_ENTRY          = 7093, -- An ominous veil of pitch-black gas blocks your path. You cannot proceed any further...
        MEMBERS_OF_YOUR_PARTY         = 7375, -- Currently, # members of your party (including yourself) have clearance to enter the battlefield.
        MEMBERS_OF_YOUR_ALLIANCE      = 7376, -- Currently, # members of your alliance (including yourself) have clearance to enter the battlefield.
        TIME_LIMIT_FOR_THIS_BATTLE_IS = 7378, -- The time limit for this battle is <number> minutes.
        ORB_IS_CRACKED                = 7379, -- There is a crack in the %. It no longer contains a monster.
        A_CRACK_HAS_FORMED            = 7380, -- A crack has formed on the <item>, and the beast inside has been unleashed!
        PARTY_MEMBERS_HAVE_FALLEN     = 7414, -- All party members have fallen in battle. Now leaving the battlefield.
        THE_PARTY_WILL_BE_REMOVED     = 7421, -- If all party members' HP are still zero after # minute[/s], the party will be removed from the battlefield.
        CONQUEST_BASE                 = 7438, -- Tallying conquest results...
        ENTERING_THE_BATTLEFIELD_FOR  = 7601, -- Entering the battlefield for [Head Wind/Like the Wind/Sheep in Antlion's Clothing/Shell We Dance?/Totentanz/Tango with a Tracker/Requiem of Sin/Antagonistic Ambuscade/Head Wind]!
        TUCHULCHA_SANDPIT             = 7757, -- Tuchulcha retreats beneath the soil!
    },
    mob =
    {
        PARATA     = GetFirstID('Parata'),
        SHIKAREE_Z = GetFirstID('Shikaree_Z'),
        TUCHULCHA  = GetFirstID('Tuchulcha'),
    },

    npc =
    {
    },

    shellWeDance =
    {
        [1] =
        {
            PARATA_ID        = 16810024,
            BLADMALL_ID      = 16810025,
            PARATA_PET_IDS   = { 16810026, 16810027, 16810028 },
            BLADMALL_PET_IDS = { 16810029, 16810030, 16810031 },
        },
        [2] =
        {
            PARATA_ID        = 16810033,
            BLADMALL_ID      = 16810034,
            PARATA_PET_IDS   = { 16810035, 16810036, 16810037 },
            BLADMALL_PET_IDS = { 16810038, 16810039, 16810040 },
        },
        [3] =
        {
            PARATA_ID        = 16810042,
            BLADMALL_ID      = 16810043,
            PARATA_PET_IDS   = { 16810044, 16810045, 16810046 },
            BLADMALL_PET_IDS = { 16810047, 16810048, 16810049 },
        },
    },
}

return zones[xi.zone.BONEYARD_GULLY]
