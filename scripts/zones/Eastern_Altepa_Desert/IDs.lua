-----------------------------------
-- Area: Eastern_Altepa_Desert
-----------------------------------
zones = zones or {}

zones[xi.zone.EASTERN_ALTEPA_DESERT] =
{
    text =
    {
        YOU_RECOVERED_MOG_TABLET      = 0,     -- A mog tablet has been discovered in ${choice: 0}[West Ronfaure/East Ronfaure/the La Theine Plateau/the Valkurm Dunes/Jugner Forest/the Batallia Downs/North Gustaberg/South Gustaberg/the Konschtat Highlands/the Pashhow Marshlands/the Rolanberry Fields/Beaucedine Glacier/Xarcabard/West Sarutabaruta/East Sarutabaruta/the Tahrongi Canyon/the Buburimu Peninsula/the Meriphataud Mountains/the Sauromugue Champaign/Qufim Island/Behemoth''s Dominion/Cape Teriggan/the Eastern Altepa Desert/the Sanctuary of Zi''Tah/Ro''Maeve/the Yuhtunga Jungle/the Yhoator Jungle/the Western Altepa Desert/the Valley of Sorrows]!
        ALL_MOG_TABLETS_FOUND         = 1,     -- The complete set of mog tablets has been restored to RuLude Gardens! The ancient magic of King Kupofried permeates the air to instill adventurers in this area with its Super Kupowers!
        FIND_THE_MOG_TABLETS          = 2,     -- The strength of the ancient moogle magic has weakened, and the tablets have been scattered to the winds once more. You can feel your Super Kupowers begin to fade away...
        ITEM_CANNOT_BE_OBTAINED       = 6384,  -- You cannot obtain the <item>. Come back after sorting your inventory.
        ITEM_OBTAINED                 = 6390,  -- Obtained: <item>.
        GIL_OBTAINED                  = 6391,  -- Obtained <number> gil.
        KEYITEM_OBTAINED              = 6393,  -- Obtained key item: <keyitem>.
        KEYITEM_LOST                  = 6394,  -- Lost key item: <keyitem>.
        NOTHING_OUT_OF_ORDINARY       = 6404,  -- There is nothing out of the ordinary here.
        SENSE_OF_FOREBODING           = 6405,  -- You are suddenly overcome with a sense of foreboding...
        FELLOW_MESSAGE_OFFSET         = 6419,  -- I'm ready. I suppose.
        CARRIED_OVER_POINTS           = 7001,  -- You have carried over <number> login point[/s].
        LOGIN_CAMPAIGN_UNDERWAY       = 7002,  -- The [/January/February/March/April/May/June/July/August/September/October/November/December] <number> Login Campaign is currently underway!
        LOGIN_NUMBER                  = 7003,  -- In celebration of your most recent login (login no. <number>), we have provided you with <number> points! You currently have a total of <number> points.
        MEMBERS_LEVELS_ARE_RESTRICTED = 7023,  -- Your party is unable to participate because certain members' levels are restricted.
        CONQUEST_BASE                 = 7064,  -- Tallying conquest results...
        BEASTMEN_BANNER               = 7145,  -- There is a beastmen's banner.
        CONQUEST                      = 7232,  -- You've earned conquest points!
        FISHING_MESSAGE_OFFSET        = 7565,  -- You can't fish here.
        DIG_THROW_AWAY                = 7578,  -- You dig up <item>, but your inventory is full. You regretfully throw the <item> away.
        FIND_NOTHING                  = 7580,  -- You dig and you dig, but find nothing.
        AMK_DIGGING_OFFSET            = 7646,  -- You spot some familiar footprints. You are convinced that your moogle friend has been digging in the immediate vicinity.
        ALREADY_OBTAINED_TELE         = 7674,  -- You already possess the gate crystal for this telepoint.
        GARRISON_BASE                 = 7701,  -- Hm? What is this? %? How do I know this is not some [San d'Orian/Bastokan/Windurstian] trick?
        PLAYER_OBTAINS_ITEM           = 7774,  -- <name> obtains <item>!
        UNABLE_TO_OBTAIN_ITEM         = 7775,  -- You were unable to obtain the item.
        PLAYER_OBTAINS_TEMP_ITEM      = 7776,  -- <name> obtains the temporary item: <item>!
        ALREADY_POSSESS_TEMP          = 7777,  -- You already possess that temporary item.
        NO_COMBINATION                = 7782,  -- You were unable to enter a combination.
        UNITY_WANTED_BATTLE_INTERACT  = 7844,  -- Those who have accepted % must pay # Unity accolades to participate. The content for this Wanted battle is #. [Ready to begin?/You do not have the appropriate object set, so your rewards will be limited.]
        REGIME_REGISTERED             = 9960,  -- New training regime registered!
        COMMON_SENSE_SURVIVAL         = 11096, -- It appears that you have arrived at a new survival guide provided by the Adventurers' Mutual Aid Network. Common sense dictates that you should now be able to teleport here from similar tomes throughout the world.
    },
    mob =
    {
        DUNE_WIDOW        = GetFirstID('Dune_Widow'),
        DONNERGUGI        = GetFirstID('Donnergugi'),
        CENTURIO_XII_I    = GetFirstID('Centurio_XII-I'),
        NANDI             = GetFirstID('Nandi'),
        DECURIO_I_III     = GetFirstID('Decurio_I-III'),
        TSUCHIGUMO_OFFSET = GetFirstID('Tsuchigumo'),
        CACTROT_RAPIDO    = GetFirstID('Cactrot_Rapido'),
    },
    npc =
    {
        OVERSEER_BASE = GetFirstID('Eaulevisat_RK'),
    },
}

return zones[xi.zone.EASTERN_ALTEPA_DESERT]
