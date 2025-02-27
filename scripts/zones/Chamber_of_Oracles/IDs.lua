-----------------------------------
-- Area: Chamber_of_Oracles
-----------------------------------
zones = zones or {}

zones[xi.zone.CHAMBER_OF_ORACLES] =
{
    text =
    {
        YOU_RECOVERED_MOG_TABLET         = 0,    -- A mog tablet has been discovered in ${choice: 0}[West Ronfaure/East Ronfaure/the La Theine Plateau/the Valkurm Dunes/Jugner Forest/the Batallia Downs/North Gustaberg/South Gustaberg/the Konschtat Highlands/the Pashhow Marshlands/the Rolanberry Fields/Beaucedine Glacier/Xarcabard/West Sarutabaruta/East Sarutabaruta/the Tahrongi Canyon/the Buburimu Peninsula/the Meriphataud Mountains/the Sauromugue Champaign/Qufim Island/Behemoth''s Dominion/Cape Teriggan/the Eastern Altepa Desert/the Sanctuary of Zi''Tah/Ro''Maeve/the Yuhtunga Jungle/the Yhoator Jungle/the Western Altepa Desert/the Valley of Sorrows]!
        ALL_MOG_TABLETS_FOUND            = 1,    -- The complete set of mog tablets has been restored to RuLude Gardens! The ancient magic of King Kupofried permeates the air to instill adventurers in this area with its Super Kupowers!
        FIND_THE_MOG_TABLETS                 = 2,    -- The strength of the ancient moogle magic has weakened, and the tablets have been scattered to the winds once more. You can feel your Super Kupowers begin to fade away...
        ITEM_CANNOT_BE_OBTAINED          = 6384, -- You cannot obtain the <item>. Come back after sorting your inventory.
        ITEM_OBTAINED                    = 6390, -- Obtained: <item>.
        GIL_OBTAINED                     = 6391, -- Obtained <number> gil.
        KEYITEM_OBTAINED                 = 6393, -- Obtained key item: <keyitem>.
        CARRIED_OVER_POINTS              = 7001, -- You have carried over <number> login point[/s].
        LOGIN_CAMPAIGN_UNDERWAY          = 7002, -- The [/January/February/March/April/May/June/July/August/September/October/November/December] <number> Login Campaign is currently underway!
        LOGIN_NUMBER                     = 7003, -- In celebration of your most recent login (login no. <number>), we have provided you with <number> points! You currently have a total of <number> points.
        MEMBERS_LEVELS_ARE_RESTRICTED    = 7023, -- Your party is unable to participate because certain members' levels are restricted.
        CONQUEST_BASE                    = 7065, -- Tallying conquest results...
        YOU_CANNOT_ENTER_THE_BATTLEFIELD = 7226, -- You cannot enter the battlefield at present. Please wait a little longer.
        TIME_IN_THE_BATTLEFIELD_IS_UP    = 7229, -- Your time in the battlefield is up! Now exiting...
        PARTY_MEMBERS_ARE_ENGAGED        = 7244, -- The battlefield where your party members are engaged in combat is locked. Access is denied.
        NO_BATTLEFIELD_ENTRY             = 7247, -- A mysterious force is sealing the platform.
        TESTIMONY_IS_TORN                = 7287, -- Your <item> is torn...
        TESTIMONY_WEARS                  = 7288, -- Your <item> [/rips into shreds!/is on the verge of tearing apart.../is showing signs of wear...] (# [use remains/uses remain].)
        MEMBERS_OF_YOUR_PARTY            = 7535, -- Currently, # members of your party (including yourself) have clearance to enter the battlefield.
        MEMBERS_OF_YOUR_ALLIANCE         = 7536, -- Currently, # members of your alliance (including yourself) have clearance to enter the battlefield.
        TIME_LIMIT_FOR_THIS_BATTLE_IS    = 7538, -- The time limit for this battle is <number> minutes.
        ORB_IS_CRACKED                   = 7539, -- There is a crack in the %. It no longer contains a monster.
        A_CRACK_HAS_FORMED               = 7540, -- A crack has formed on the <item>, and the beast inside has been unleashed!
        PARTY_MEMBERS_HAVE_FALLEN        = 7574, -- All party members have fallen in battle. Now leaving the battlefield.
        THE_PARTY_WILL_BE_REMOVED        = 7581, -- If all party members' HP are still zero after # minute[/s], the party will be removed from the battlefield.
        ENTERING_THE_BATTLEFIELD_FOR     = 7601, -- Entering the battlefield for [Through the Quicksand Caves/Legion XI Comitatensis/Shattering Stars (SAM)/Shattering Stars (NIN)/Shattering Stars (DRG)/Cactuar Suave/Eye of the Storm/The Scarlet King/Roar! A Cat Burglar Bares Her Fangs/Dragon Scales/Legion XI Comitatensis]!
        PLACED_INTO_THE_PEDESTAL         = 7636, -- It appears that something should be placed into this pedestal.
        YOU_PLACE_THE                    = 7637, -- You place the <item> into the pedestal.
        IS_SET_IN_THE_PEDESTAL           = 7638, -- The <item> is set in the pedestal.
        HAS_LOST_ITS_POWER               = 7639, -- The <item> has lost its power.
        DOOR_IS_FIRMLY_SHUT              = 7640, -- The door is firmly shut.
        YOU_DECIDED_TO_SHOW_UP           = 7658, -- So, you decided to show up. Now it's time to see what you're really made of, heh heh heh.
        LOOKS_LIKE_YOU_WERENT_READY      = 7659, -- Looks like you weren't ready for me, were you? Now go home, wash your face, and come back when you think you've got what it takes.
        YOUVE_COME_A_LONG_WAY            = 7660, -- Hm. That was a mighty fine display of skill there, <name>. You've come a long way...
        TEACH_YOU_TO_RESPECT_ELDERS      = 7661, -- I'll teach you to respect your elders!
        TAKE_THAT_YOU_WHIPPERSNAPPER     = 7662, -- Take that, you whippersnapper!
        NOW_THAT_IM_WARMED_UP            = 7663, -- Now that I'm warmed up...
        THAT_LL_HURT_IN_THE_MORNING      = 7664, -- Ungh... That'll hurt in the morning...
    },
    mob =
    {
        CENTURIO_V_III   = GetFirstID('Centurio_V-III'),
        MAAT             = GetFirstID('Maat'),
        NANAA_MIHGO      = GetFirstID('Nanaa_Mihgo'),
        SECUTOR_XI_XXXII = GetFirstID('Secutor_XI-XXXII'),
    },
    npc =
    {
    },
}

return zones[xi.zone.CHAMBER_OF_ORACLES]
