-----------------------------------
-- Area: Castle_Zvahl_Keep
-----------------------------------
zones = zones or {}

zones[xi.zone.CASTLE_ZVAHL_KEEP] =
{
    text =
    {
        CONQUEST_BASE                 = 0,    -- Tallying conquest results...
        YOU_RECOVERED_MOG_TABLET      = 159,  -- A mog tablet has been discovered in ${choice: 0}[West Ronfaure/East Ronfaure/the La Theine Plateau/the Valkurm Dunes/Jugner Forest/the Batallia Downs/North Gustaberg/South Gustaberg/the Konschtat Highlands/the Pashhow Marshlands/the Rolanberry Fields/Beaucedine Glacier/Xarcabard/West Sarutabaruta/East Sarutabaruta/the Tahrongi Canyon/the Buburimu Peninsula/the Meriphataud Mountains/the Sauromugue Champaign/Qufim Island/Behemoth''s Dominion/Cape Teriggan/the Eastern Altepa Desert/the Sanctuary of Zi''Tah/Ro''Maeve/the Yuhtunga Jungle/the Yhoator Jungle/the Western Altepa Desert/the Valley of Sorrows]!
        ALL_MOG_TABLETS_FOUND         = 160,  -- The complete set of mog tablets has been restored to RuLude Gardens! The ancient magic of King Kupofried permeates the air to instill adventurers in this area with its Super Kupowers!
        FIND_THE_MOG_TABLETS          = 161,  -- The strength of the ancient moogle magic has weakened, and the tablets have been scattered to the winds once more. You can feel your Super Kupowers begin to fade away...
        ITEM_CANNOT_BE_OBTAINED       = 6543, -- You cannot obtain the <item>. Come back after sorting your inventory.
        ITEM_OBTAINED                 = 6549, -- Obtained: <item>.
        GIL_OBTAINED                  = 6550, -- Obtained <number> gil.
        KEYITEM_OBTAINED              = 6552, -- Obtained key item: <keyitem>.
        NOTHING_OUT_OF_ORDINARY       = 6563, -- There is nothing out of the ordinary here.
        FELLOW_MESSAGE_OFFSET         = 6578, -- I'm ready. I suppose.
        CARRIED_OVER_POINTS           = 7160, -- You have carried over <number> login point[/s].
        LOGIN_CAMPAIGN_UNDERWAY       = 7161, -- The [/January/February/March/April/May/June/July/August/September/October/November/December] <number> Login Campaign is currently underway!
        LOGIN_NUMBER                  = 7162, -- In celebration of your most recent login (login no. <number>), we have provided you with <number> points! You currently have a total of <number> points.
        MEMBERS_LEVELS_ARE_RESTRICTED = 7182, -- Your party is unable to participate because certain members' levels are restricted.
        CHEST_UNLOCKED                = 7238, -- You unlock the chest!
        ITEMS_ITEMS_LA_LA             = 7247, -- You can hear a strange voice... Items, items, la la la la la
        GOBLIN_SLIPPED_AWAY           = 7253, -- The Goblin slipped away when you were not looking...
        HOMEPOINT_SET                 = 7296, -- Home point set!
    },
    mob =
    {
        BARON_VAPULA   = GetFirstID('Baron_Vapula'),
        BARONET_ROMWE  = GetFirstID('Baronet_Romwe'),
        COUNT_BIFRONS  = GetFirstID('Count_Bifrons'),
        VISCOUNT_MORAX = GetFirstID('Viscount_Morax'),
    },
    npc =
    {
        TREASURE_CHEST = GetFirstID('Treasure_Chest'),
        CRAGGY_PILLAR  = GetTableOfIDs('Craggy_Pillar'),
    },
}

return zones[xi.zone.CASTLE_ZVAHL_KEEP]
