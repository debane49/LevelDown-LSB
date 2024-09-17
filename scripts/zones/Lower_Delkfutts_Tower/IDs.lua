-----------------------------------
-- Area: Lower_Delkfutts_Tower
-----------------------------------
zones = zones or {}

zones[xi.zone.LOWER_DELKFUTTS_TOWER] =
{
    text =
    {
        CONQUEST_BASE                    = 0,     -- Tallying conquest results...
        THE_DOOR_IS_FIRMLY_SHUT_OPEN_KEY = 159,   -- The door is firmly shut. You might be able to open it if you had the key.
        DOOR_FIRMLY_SHUT                 = 160,   -- The door is firmly shut.
        YOU_RECOVERED_MOG_TABLET         = 189,   -- A mog tablet has been discovered in ${choice: 0}[West Ronfaure/East Ronfaure/the La Theine Plateau/the Valkurm Dunes/Jugner Forest/the Batallia Downs/North Gustaberg/South Gustaberg/the Konschtat Highlands/the Pashhow Marshlands/the Rolanberry Fields/Beaucedine Glacier/Xarcabard/West Sarutabaruta/East Sarutabaruta/the Tahrongi Canyon/the Buburimu Peninsula/the Meriphataud Mountains/the Sauromugue Champaign/Qufim Island/Behemoth''s Dominion/Cape Teriggan/the Eastern Altepa Desert/the Sanctuary of Zi''Tah/Ro''Maeve/the Yuhtunga Jungle/the Yhoator Jungle/the Western Altepa Desert/the Valley of Sorrows]!
        ALL_MOG_TABLETS_FOUND            = 190,   -- The complete set of mog tablets has been restored to RuLude Gardens! The ancient magic of King Kupofried permeates the air to instill adventurers in this area with its Super Kupowers!
        FIND_THE_MOG_TABLETS             = 191,   -- The strength of the ancient moogle magic has weakened, and the tablets have been scattered to the winds once more. You can feel your Super Kupowers begin to fade away...
        ITEM_CANNOT_BE_OBTAINED          = 6573,  -- You cannot obtain the <item>. Come back after sorting your inventory.
        ITEM_OBTAINED                    = 6579,  -- Obtained: <item>.
        GIL_OBTAINED                     = 6580,  -- Obtained <number> gil.
        KEYITEM_OBTAINED                 = 6582,  -- Obtained key item: <keyitem>.
        FELLOW_MESSAGE_OFFSET            = 6608,  -- I'm ready. I suppose.
        CARRIED_OVER_POINTS              = 7190,  -- You have carried over <number> login point[/s].
        LOGIN_CAMPAIGN_UNDERWAY          = 7191,  -- The [/January/February/March/April/May/June/July/August/September/October/November/December] <number> Login Campaign is currently underway!
        LOGIN_NUMBER                     = 7192,  -- In celebration of your most recent login (login no. <number>), we have provided you with <number> points! You currently have a total of <number> points.
        MEMBERS_LEVELS_ARE_RESTRICTED    = 7212,  -- Your party is unable to participate because certain members' levels are restricted.
        FISHING_MESSAGE_OFFSET           = 7253,  -- You can't fish here.
        SOMETHING_HUGE_BEARING_DOWN      = 7501,  -- Something huge is bearing down upon you!
        PLAYER_OBTAINS_ITEM              = 8636,  -- <name> obtains <item>!
        UNABLE_TO_OBTAIN_ITEM            = 8637,  -- You were unable to obtain the item.
        PLAYER_OBTAINS_TEMP_ITEM         = 8638,  -- <name> obtains the temporary item: <item>!
        ALREADY_POSSESS_TEMP             = 8639,  -- You already possess that temporary item.
        NO_COMBINATION                   = 8644,  -- You were unable to enter a combination.
        REGIME_REGISTERED                = 10722, -- New training regime registered!
        LEARNS_SPELL                     = 11770, -- <name> learns <spell>!
        UNCANNY_SENSATION                = 11772, -- You are assaulted by an uncanny sensation.
        COMMON_SENSE_SURVIVAL            = 11779, -- It appears that you have arrived at a new survival guide provided by the Adventurers' Mutual Aid Network. Common sense dictates that you should now be able to teleport here from similar tomes throughout the world.
    },
    mob =
    {
        HIPPOLYTOS    = GetFirstID('Hippolytos'),
        EPIALTES      = GetFirstID('Epialtes'),
        EURYMEDON     = GetFirstID('Eurymedon'),
        DISASTER_IDOL = GetFirstID('Disaster_Idol'),
    },
    npc =
    {
    },
}

return zones[xi.zone.LOWER_DELKFUTTS_TOWER]
