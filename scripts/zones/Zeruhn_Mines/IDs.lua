-----------------------------------
-- Area: Zeruhn_Mines
-----------------------------------
zones = zones or {}

zones[xi.zone.ZERUHN_MINES] =
{
    text =
    {
        CONQUEST_BASE                 = 0,     -- Tallying conquest results...
        YOU_RECOVERED_MOG_TABLET      = 159,   -- A mog tablet has been discovered in ${choice: 0}[West Ronfaure/East Ronfaure/the La Theine Plateau/the Valkurm Dunes/Jugner Forest/the Batallia Downs/North Gustaberg/South Gustaberg/the Konschtat Highlands/the Pashhow Marshlands/the Rolanberry Fields/Beaucedine Glacier/Xarcabard/West Sarutabaruta/East Sarutabaruta/the Tahrongi Canyon/the Buburimu Peninsula/the Meriphataud Mountains/the Sauromugue Champaign/Qufim Island/Behemoth''s Dominion/Cape Teriggan/the Eastern Altepa Desert/the Sanctuary of Zi''Tah/Ro''Maeve/the Yuhtunga Jungle/the Yhoator Jungle/the Western Altepa Desert/the Valley of Sorrows]!
        ALL_MOG_TABLETS_FOUND         = 160,   -- The complete set of mog tablets has been restored to RuLude Gardens! The ancient magic of King Kupofried permeates the air to instill adventurers in this area with its Super Kupowers!
        FIND_THE_MOG_TABLETS          = 161,   -- The strength of the ancient moogle magic has weakened, and the tablets have been scattered to the winds once more. You can feel your Super Kupowers begin to fade away...
        ITEM_CANNOT_BE_OBTAINED       = 6543,  -- You cannot obtain the <item>. Come back after sorting your inventory.
        ITEM_OBTAINED                 = 6549,  -- Obtained: <item>.
        GIL_OBTAINED                  = 6550,  -- Obtained <number> gil.
        KEYITEM_OBTAINED              = 6552,  -- Obtained key item: <keyitem>.
        FELLOW_MESSAGE_OFFSET         = 6578,  -- I'm ready. I suppose.
        CARRIED_OVER_POINTS           = 7160,  -- You have carried over <number> login point[/s].
        LOGIN_CAMPAIGN_UNDERWAY       = 7161,  -- The [/January/February/March/April/May/June/July/August/September/October/November/December] <number> Login Campaign is currently underway!
        LOGIN_NUMBER                  = 7162,  -- In celebration of your most recent login (login no. <number>), we have provided you with <number> points! You currently have a total of <number> points.
        MEMBERS_LEVELS_ARE_RESTRICTED = 7182,  -- Your party is unable to participate because certain members' levels are restricted.
        FISHING_MESSAGE_OFFSET        = 7223,  -- You can't fish here.
        MAKARIM_DIALOG_I              = 7330,  -- Be careful on your way out. Remember, you should give my report to Naji, one of the Mythril Musketeers on post at the President's Office.
        ZELMAN_CANT_RUN_AROUND        = 7355,  -- I can't run around doing everything she tells me to--I have my dignity to uphold!
        MINING_IS_POSSIBLE_HERE       = 7362,  -- Mining is possible here if you have <item>.
        PLAYER_OBTAINS_ITEM           = 7419,  -- <name> obtains <item>!
        UNABLE_TO_OBTAIN_ITEM         = 7420,  -- You were unable to obtain the item.
        PLAYER_OBTAINS_TEMP_ITEM      = 7421,  -- <name> obtains the temporary item: <item>!
        ALREADY_POSSESS_TEMP          = 7422,  -- You already possess that temporary item.
        NO_COMBINATION                = 7427,  -- You were unable to enter a combination.
        REGIME_REGISTERED             = 9505,  -- New training regime registered!
        COMMON_SENSE_SURVIVAL         = 10553, -- It appears that you have arrived at a new survival guide provided by the Adventurers' Mutual Aid Network. Common sense dictates that you should now be able to teleport here from similar tomes throughout the world.
    },
    mob =
    {
    },
    npc =
    {
        MINING = GetTableOfIDs('Mining_Point'),
    },
}

return zones[xi.zone.ZERUHN_MINES]
