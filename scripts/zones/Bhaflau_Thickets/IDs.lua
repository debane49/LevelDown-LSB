-----------------------------------
-- Area: Bhaflau_Thickets
-----------------------------------
zones = zones or {}

zones[xi.zone.BHAFLAU_THICKETS] =
{
    text =
    {
        YOU_RECOVERED_MOG_TABLET      = 0,    -- A mog tablet has been discovered in ${choice: 0}[West Ronfaure/East Ronfaure/the La Theine Plateau/the Valkurm Dunes/Jugner Forest/the Batallia Downs/North Gustaberg/South Gustaberg/the Konschtat Highlands/the Pashhow Marshlands/the Rolanberry Fields/Beaucedine Glacier/Xarcabard/West Sarutabaruta/East Sarutabaruta/the Tahrongi Canyon/the Buburimu Peninsula/the Meriphataud Mountains/the Sauromugue Champaign/Qufim Island/Behemoth''s Dominion/Cape Teriggan/the Eastern Altepa Desert/the Sanctuary of Zi''Tah/Ro''Maeve/the Yuhtunga Jungle/the Yhoator Jungle/the Western Altepa Desert/the Valley of Sorrows]!
        ALL_MOG_TABLETS_FOUND         = 1,    -- The complete set of mog tablets has been restored to RuLude Gardens! The ancient magic of King Kupofried permeates the air to instill adventurers in this area with its Super Kupowers!
        FIND_THE_MOG_TABLETS          = 2,    -- The strength of the ancient moogle magic has weakened, and the tablets have been scattered to the winds once more. You can feel your Super Kupowers begin to fade away...
        NOTHING_HAPPENS               = 119,  -- Nothing happens...
        ITEM_CANNOT_BE_OBTAINED       = 6384, -- You cannot obtain the <item>. Come back after sorting your inventory.
        ITEM_OBTAINED                 = 6390, -- Obtained: <item>.
        GIL_OBTAINED                  = 6391, -- Obtained <number> gil.
        KEYITEM_OBTAINED              = 6393, -- Obtained key item: <keyitem>.
        FELLOW_MESSAGE_OFFSET         = 6419, -- I'm ready. I suppose.
        CARRIED_OVER_POINTS           = 7001, -- You have carried over <number> login point[/s].
        LOGIN_CAMPAIGN_UNDERWAY       = 7002, -- The [/January/February/March/April/May/June/July/August/September/October/November/December] <number> Login Campaign is currently underway!
        LOGIN_NUMBER                  = 7003, -- In celebration of your most recent login (login no. <number>), we have provided you with <number> points! You currently have a total of <number> points.
        MEMBERS_LEVELS_ARE_RESTRICTED = 7023, -- Your party is unable to participate because certain members' levels are restricted.
        FISHING_MESSAGE_OFFSET        = 7061, -- You can't fish here.
        DIG_THROW_AWAY                = 7074, -- You dig up <item>, but your inventory is full. You regretfully throw the <item> away.
        FIND_NOTHING                  = 7076, -- You dig and you dig, but find nothing.
        STAGING_GATE_CLOSER           = 7321, -- You must move closer.
        STAGING_GATE_INTERACT         = 7322, -- This gate guards an area under Imperial control.
        STAGING_GATE_MAMOOL           = 7324, -- Mamool Ja Staging Point.
        CANNOT_LEAVE                  = 7332, -- You cannot leave this area while in the possession of <keyitem>.
        RESPONSE                      = 7341, -- There is no response...
        YOU_HAVE_A_BADGE              = 7354, -- You have a %? Let me have a closer look at that...
        HAND_OVER_TO_IMMORTAL         = 7554, -- You hand over the % to the Immortal.
        YOUR_IMPERIAL_STANDING        = 7555, -- Your Imperial Standing has increased!
        HARVESTING_IS_POSSIBLE_HERE   = 7573, -- Harvesting is possible here if you have <item>.
        CANNOT_ENTER                  = 7596, -- You cannot enter at this time. Please wait a while before trying again.
        AREA_FULL                     = 7597, -- This area is fully occupied. You were unable to enter.
        MEMBER_NO_REQS                = 7601, -- Not all of your party members meet the requirements for this objective. Unable to enter area.
        MEMBER_TOO_FAR                = 7605, -- One or more party members are too far away from the entrance. Unable to enter area.
        SHED_LEAVES                   = 7667, -- The ground is strewn with shed leaves...
        BLOOD_STAINS                  = 7669, -- The ground is smeared with bloodstains...
        DRAWS_NEAR                    = 7694, -- Something draws near!
        HOMEPOINT_SET                 = 7705, -- Home point set!
    },
    mob =
    {
        CHIGOES              =
        {
            ['Marid']        = utils.slice(GetTableOfIDs('Chigoe'), 1, 5), -- Entries 1-5 of the table (1-indexed, inclusive)
            ['Grand_Marid']  = utils.slice(GetTableOfIDs('Chigoe'), 1, 5), -- Entries 1-5 of the table (1-indexed, inclusive)
        },
        DEA                = GetFirstID('Dea'),
        EMERGENT_ELM       = GetFirstID('Emergent_Elm'),
        HARVESTMAN         = GetFirstID('Harvestman'),
        LIVIDROOT_AMOOSHAH = GetFirstID('Lividroot_Amooshah'),
        MAHISHASURA        = GetFirstID('Mahishasura'),
        NIS_PUK            = GetFirstID('Nis_Puk'),
    },
    npc =
    {
        HARVESTING = GetTableOfIDs('Harvesting_Point'),
    },
}

return zones[xi.zone.BHAFLAU_THICKETS]
