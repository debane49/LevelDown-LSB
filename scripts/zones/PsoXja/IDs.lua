-----------------------------------
-- Area: PsoXja
-----------------------------------
zones = zones or {}

zones[xi.zone.PSOXJA] =
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
        MEMBERS_LEVELS_ARE_RESTRICTED = 7023, -- Your party is unable to participate because certain members' levels are restricted.
        CONQUEST_BASE                 = 7086, -- Tallying conquest results...
        DEVICE_IN_OPERATION           = 7245, -- The device appears to be in operation...
        DOOR_LOCKED                   = 7248, -- The door is locked.
        ARCH_GLOW_BLUE                = 7249, -- The arch above the door is glowing blue...
        ARCH_GLOW_GREEN               = 7250, -- The arch above the door is glowing green...
        CANNOT_OPEN_SIDE              = 7253, -- The door cannot be opened from this side.
        TRAP_ACTIVATES                = 7255, -- <name> examines the door. A trap connected to it has been activated!
        TRAP_FAILS                    = 7256, -- <name> examines the door. The trap connected to it fails to activate.
        DISCOVER_DISARM_FAIL          = 7257, -- <name> discovers a trap connected to the door, but fails to disarm it!
        DISCOVER_DISARM_SUCCESS       = 7258, -- <name> discovers a trap connected to the door and succeeds in disarming it!
        TRAP_ACTIVATED                = 7260, -- <name> examines the stone compartment. A trap connected to it has been activated!
        CHEST_UNLOCKED                = 7478, -- You unlock the chest!
        BROKEN_KNIFE                  = 7486, -- A broken knife blade can be seen among the rubble...
        HOMEPOINT_SET                 = 7491, -- Home point set!
    },
    mob =
    {
        GYRE_CARLIN             = GetFirstID('Gyre-Carlin'),
        GARGOYLE_OFFSET         = GetFirstID('Gargoyle'),
        NUNYUNUWI               = GetFirstID('Nunyunuwi'),
        GOLDEN_TONGUED_CULBERRY = GetFirstID('Golden-Tongued_Culberry'),
    },
    npc =
    {
        STONE_DOOR_OFFSET       = GetFirstID('_090'),
        TREASURE_CHEST          = GetTableOfIDs('Treasure_Chest')[7],
    },
}

return zones[xi.zone.PSOXJA]
