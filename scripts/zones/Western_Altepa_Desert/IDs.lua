-----------------------------------
-- Area: Western_Altepa_Desert
-----------------------------------
zones = zones or {}

zones[xi.zone.WESTERN_ALTEPA_DESERT] =
{
    text =
    {
        YOU_RECOVERED_MOG_TABLET      = 0,     -- A mog tablet has been discovered in ${choice: 0}[West Ronfaure/East Ronfaure/the La Theine Plateau/the Valkurm Dunes/Jugner Forest/the Batallia Downs/North Gustaberg/South Gustaberg/the Konschtat Highlands/the Pashhow Marshlands/the Rolanberry Fields/Beaucedine Glacier/Xarcabard/West Sarutabaruta/East Sarutabaruta/the Tahrongi Canyon/the Buburimu Peninsula/the Meriphataud Mountains/the Sauromugue Champaign/Qufim Island/Behemoth''s Dominion/Cape Teriggan/the Eastern Altepa Desert/the Sanctuary of Zi''Tah/Ro''Maeve/the Yuhtunga Jungle/the Yhoator Jungle/the Western Altepa Desert/the Valley of Sorrows]!
        ALL_MOG_TABLETS_FOUND         = 1,     -- The complete set of mog tablets has been restored to RuLude Gardens! The ancient magic of King Kupofried permeates the air to instill adventurers in this area with its Super Kupowers!
        FIND_THE_MOG_TABLETS          = 2,     -- The strength of the ancient moogle magic has weakened, and the tablets have been scattered to the winds once more. You can feel your Super Kupowers begin to fade away...
        ITEM_CANNOT_BE_OBTAINED       = 6384,  -- You cannot obtain the <item>. Come back after sorting your inventory.
        FULL_INVENTORY_AFTER_TRADE    = 6388,  -- You cannot obtain the <item>. Try trading again after sorting your inventory.
        ITEM_OBTAINED                 = 6390,  -- Obtained: <item>.
        GIL_OBTAINED                  = 6391,  -- Obtained <number> gil.
        KEYITEM_OBTAINED              = 6393,  -- Obtained key item: <keyitem>.
        ITEMS_OBTAINED                = 6399,  -- You obtain <number> <item>!
        NOTHING_OUT_OF_ORDINARY       = 6404,  -- There is nothing out of the ordinary here.
        FELLOW_MESSAGE_OFFSET         = 6419,  -- I'm ready. I suppose.
        CARRIED_OVER_POINTS           = 7001,  -- You have carried over <number> login point[/s].
        LOGIN_CAMPAIGN_UNDERWAY       = 7002,  -- The [/January/February/March/April/May/June/July/August/September/October/November/December] <number> Login Campaign is currently underway!
        LOGIN_NUMBER                  = 7003,  -- In celebration of your most recent login (login no. <number>), we have provided you with <number> points! You currently have a total of <number> points.
        MEMBERS_LEVELS_ARE_RESTRICTED = 7023,  -- Your party is unable to participate because certain members' levels are restricted.
        CONQUEST_BASE                 = 7065,  -- Tallying conquest results...
        FISHING_MESSAGE_OFFSET        = 7224,  -- You can't fish here.
        DIG_THROW_AWAY                = 7237,  -- You dig up <item>, but your inventory is full. You regretfully throw the <item> away.
        FIND_NOTHING                  = 7239,  -- You dig and you dig, but find nothing.
        AMK_DIGGING_OFFSET            = 7305,  -- You spot some familiar footprints. You are convinced that your moogle friend has been digging in the immediate vicinity.
        THE_DOOR_IS_LOCKED            = 7344,  -- The door is locked.
        DOES_NOT_RESPOND              = 7345,  -- It does not respond.
        CANNOT_REMOVE_FRAG            = 7361,  -- It is an oddly shaped stone monument. A shining stone is embedded in it, but cannot be removed...
        ALREADY_OBTAINED_FRAG         = 7362,  -- You have already obtained this monument's <keyitem>. Try searching for another.
        ALREADY_HAVE_ALL_FRAGS        = 7363,  -- You have obtained all of the fragments. You must hurry to the ruins of the ancient shrine!
        FOUND_ALL_FRAGS               = 7364,  -- You have obtained <keyitem>! You now have all 8 fragments of light!
        ZILART_MONUMENT               = 7365,  -- It is an ancient Zilart monument.
        FEEL_SOMETHING_PRICKLY        = 7383,  -- You feel something prickly...
        MANY_STONES_LITTER_AREA       = 7384,  -- Many stones litter the area.
        EVIL_LOOMING_ABOVE_YOU        = 7385,  -- You sense something evil looming above you.
        SENSE_OMINOUS_PRESENCE        = 7406,  -- You sense an ominous presence...
        SOMETHING_IS_BURIED_HERE      = 7424,  -- It looks like something is buried here. If you had <item> you could dig it up.
        PLAYER_OBTAINS_ITEM           = 7644,  -- <name> obtains <item>!
        UNABLE_TO_OBTAIN_ITEM         = 7645,  -- You were unable to obtain the item.
        PLAYER_OBTAINS_TEMP_ITEM      = 7646,  -- <name> obtains the temporary item: <item>!
        ALREADY_POSSESS_TEMP          = 7647,  -- You already possess that temporary item.
        NO_COMBINATION                = 7652,  -- You were unable to enter a combination.
        UNITY_WANTED_BATTLE_INTERACT  = 7714,  -- Those who have accepted % must pay # Unity accolades to participate. The content for this Wanted battle is #. [Ready to begin?/You do not have the appropriate object set, so your rewards will be limited.]
        REGIME_REGISTERED             = 9830,  -- New training regime registered!
        COMMON_SENSE_SURVIVAL         = 11819, -- It appears that you have arrived at a new survival guide provided by the Adventurers' Mutual Aid Network. Common sense dictates that you should now be able to teleport here from similar tomes throughout the world.
    },
    mob =
    {
        CACTUAR_CANTAUTOR    = GetFirstID('Cactuar_Cantautor'),
        CALCHAS              = GetFirstID('Calchas'),
        CELPHIE              = GetFirstID('Celphie'),
        DAHU                 = GetFirstID('Dahu'),
        EASTERN_SPHINX       = GetFirstID('Eastern_Sphinx'),
        KING_VINEGARROON     = GetFirstID('King_Vinegarroon'),
        MAHARAJA             = GetFirstID('Maharaja'),
        PICOLATON            = GetFirstID('Picolaton'),
        SABOTENDER_ENAMORADO = GetFirstID('Sabotender_Enamorado'),
        WESTERN_SPHINX       = GetFirstID('Western_Sphinx'),
    },
    npc =
    {
        ALTEPA_GATE              = GetFirstID('_3h0'),
        PEDDLESTOX               = GetFirstID('Peddlestox'),
        BEASTMEN_TREASURE_OFFSET = GetFirstID('qm3'),
    },
}

return zones[xi.zone.WESTERN_ALTEPA_DESERT]
