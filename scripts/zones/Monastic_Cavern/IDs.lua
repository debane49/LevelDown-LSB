-----------------------------------
-- Area: Monastic Cavern (150)
-----------------------------------
zones = zones or {}

zones[xi.zone.MONASTIC_CAVERN] =
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
        NOTHING_OUT_OF_ORDINARY       = 6404, -- There is nothing out of the ordinary here.
        CARRIED_OVER_POINTS           = 7001, -- You have carried over <number> login point[/s].
        LOGIN_CAMPAIGN_UNDERWAY       = 7002, -- The [/January/February/March/April/May/June/July/August/September/October/November/December] <number> Login Campaign is currently underway!
        LOGIN_NUMBER                  = 7003, -- In celebration of your most recent login (login no. <number>), we have provided you with <number> points! You currently have a total of <number> points.
        GEOMAGNETRON_ATTUNED          = 7012, -- Your <keyitem> has been attuned to a geomagnetic fount in the corresponding locale.
        MEMBERS_LEVELS_ARE_RESTRICTED = 7023, -- Your party is unable to participate because certain members' levels are restricted.
        CONQUEST_BASE                 = 7064, -- Tallying conquest results...
        ALTAR                         = 7279, -- This appears to be an altar.
        THE_MAGICITE_GLOWS_OMINOUSLY  = 7282, -- The magicite glows ominously.
        CHEST_UNLOCKED                = 7301, -- You unlock the chest!
        ORCISH_OVERLORD_ENGAGE        = 7313, -- Intruders? Get outs here! We gots us some adventurers!
        ORCISH_OVERLORD_DEATH         = 7314, -- Gahahahaha... You fell for our trick. I'm not the big boss. He don't need to be troubled by runty little rarabs like you.
        ORC_KING_ENGAGE               = 7315, -- Ungh? Who are you?  So, you've come to kill big boss Bakgodek? I'll crush your scrawny bones myself!
        ORC_KING_DEATH                = 7316, -- Unghh... Foolish children of Altana. Defeating me won't change anything. There will be others from the north...
    },
    mob =
    {
        ORCISH_OVERLORD               = GetTableOfIDs('Orcish_Overlord')[1], -- NM
        UNDERSTANDING_OVERLORD_OFFSET = GetTableOfIDs('Orcish_Overlord')[2], -- Quest NM
        BUGABOO                       = GetFirstID('Bugaboo'),
        MIMIC                         = GetFirstID('Mimic'),
    },
    npc =
    {
        TREASURE_COFFER = GetFirstID('Treasure_Coffer'),
    },
}

return zones[xi.zone.MONASTIC_CAVERN]
