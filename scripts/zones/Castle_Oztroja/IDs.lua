-----------------------------------
-- Area: Castle_Oztroja
-----------------------------------
zones = zones or {}

zones[xi.zone.CASTLE_OZTROJA] =
{
    text =
    {
        CANNOT_REACH_TARGET                = 0,    -- Cannot reach target.
        ITS_LOCKED                         = 1,    -- It's locked.
        PROBABLY_WORKS_WITH_SOMETHING_ELSE = 3,    -- It probably works with something else.
        TORCH_LIT                          = 5,    -- The torch is lit.
        INCORRECT                          = 11,   -- Incorrect.
        FIRST_WORD                         = 12,   -- The first word.
        SECOND_WORD                        = 13,   -- The second word.
        THIRD_WORD                         = 14,   -- The third word.
        CONQUEST_BASE                      = 26,   -- Tallying conquest results...
        YOU_RECOVERED_MOG_TABLET           = 185,  -- A mog tablet has been discovered in ${choice: 0}[West Ronfaure/East Ronfaure/the La Theine Plateau/the Valkurm Dunes/Jugner Forest/the Batallia Downs/North Gustaberg/South Gustaberg/the Konschtat Highlands/the Pashhow Marshlands/the Rolanberry Fields/Beaucedine Glacier/Xarcabard/West Sarutabaruta/East Sarutabaruta/the Tahrongi Canyon/the Buburimu Peninsula/the Meriphataud Mountains/the Sauromugue Champaign/Qufim Island/Behemoth''s Dominion/Cape Teriggan/the Eastern Altepa Desert/the Sanctuary of Zi''Tah/Ro''Maeve/the Yuhtunga Jungle/the Yhoator Jungle/the Western Altepa Desert/the Valley of Sorrows]!
        ALL_MOG_TABLETS_FOUND              = 186,  -- The complete set of mog tablets has been restored to RuLude Gardens! The ancient magic of King Kupofried permeates the air to instill adventurers in this area with its Super Kupowers!
        FIND_THE_MOG_TABLETS               = 187,  -- The strength of the ancient moogle magic has weakened, and the tablets have been scattered to the winds once more. You can feel your Super Kupowers begin to fade away...
        ITEM_CANNOT_BE_OBTAINED            = 6569, -- You cannot obtain the <item>. Come back after sorting your inventory.
        FULL_INVENTORY_AFTER_TRADE         = 6573, -- You cannot obtain the <item>. Try trading again after sorting your inventory.
        ITEM_OBTAINED                      = 6575, -- Obtained: <item>.
        GIL_OBTAINED                       = 6576, -- Obtained <number> gil.
        KEYITEM_OBTAINED                   = 6578, -- Obtained key item: <keyitem>.
        NOT_ENOUGH_GIL                     = 6580, -- You do not have enough gil.
        ITEMS_OBTAINED                     = 6584, -- You obtain <number> <item>!
        NOTHING_OUT_OF_ORDINARY            = 6589, -- There is nothing out of the ordinary here.
        SENSE_OF_FOREBODING                = 6590, -- You are suddenly overcome with a sense of foreboding...
        FELLOW_MESSAGE_OFFSET              = 6604, -- I'm ready. I suppose.
        CARRIED_OVER_POINTS                = 7186, -- You have carried over <number> login point[/s].
        LOGIN_CAMPAIGN_UNDERWAY            = 7187, -- The [/January/February/March/April/May/June/July/August/September/October/November/December] <number> Login Campaign is currently underway!
        LOGIN_NUMBER                       = 7188, -- In celebration of your most recent login (login no. <number>), we have provided you with <number> points! You currently have a total of <number> points.
        MEMBERS_LEVELS_ARE_RESTRICTED      = 7208, -- Your party is unable to participate because certain members' levels are restricted.
        FISHING_MESSAGE_OFFSET             = 7268, -- You can't fish here.
        CHEST_UNLOCKED                     = 7439, -- You unlock the chest!
        YAGUDO_AVATAR_ENGAGE               = 7460, -- Kahk-ka-ka... You filthy, dim-witted heretics! You have damned yourselves by coming here.
        YAGUDO_AVATAR_DEATH                = 7461, -- Our lord, Tzee Xicu the Manifest!  Even should our bodies be crushed and broken, may our souls endure into eternity...
        YAGUDO_KING_ENGAGE                 = 7462, -- You are not here as sacrifices, are you? Could you possibly be committing this affront in the face of a deity?  Very well, I will personally mete out your divine punishment, kyah!
        YAGUDO_KING_DEATH                  = 7463, -- You have...bested me... However, I...am...a god... I will never die...never rot...never fade...never...
        LEARNS_SPELL                       = 8302, -- <name> learns <spell>!
        UNCANNY_SENSATION                  = 8304, -- You are assaulted by an uncanny sensation.
        COMMON_SENSE_SURVIVAL              = 8311, -- It appears that you have arrived at a new survival guide provided by the Adventurers' Mutual Aid Network. Common sense dictates that you should now be able to teleport here from similar tomes throughout the world.
    },
    mob =
    {
        MEE_DEGGI_THE_PUNISHER  = GetFirstID('Mee_Deggi_the_Punisher'),
        MOO_OUZI_THE_SWIFTBLADE = GetFirstID('Moo_Ouzi_the_Swiftblade'),
        QUU_DOMI_THE_GALLANT    = GetFirstID('Quu_Domi_the_Gallant'),
        YAA_HAQA_THE_PROFANE    = GetFirstID('Yaa_Haqa_the_Profane'),
        YAGUDO_AVATAR           = GetFirstID('Yagudo_Avatar'),
        HUU_XALMO_THE_SAVAGE    = GetFirstID('Huu_Xalmo_the_Savage'),
        MIMIC                   = GetFirstID('Mimic'),
    },
    npc =
    {
        HANDLE_DOOR_FLOOR_2    = GetFirstID('_471'),
        FIRST_PASSWORD_STATUE  = GetTableOfIDs('Brass_Statue')[1],
        SECOND_PASSWORD_STATUE = GetTableOfIDs('Brass_Statue')[2],
        THIRD_PASSWORD_STATUE  = GetTableOfIDs('Brass_Statue')[3],
        FINAL_PASSWORD_STATUE  = GetTableOfIDs('Brass_Statue')[4],
        BRASS_DOOR_FLOOR_4_H7  = GetFirstID('_477'),
        TRAP_DOOR_FLOOR_4      = GetFirstID('_478'),
        HINT_HANDLE_OFFSET     = GetFirstID('_47q'),
        TREASURE_CHEST         = GetFirstID('Treasure_Chest'),
        TREASURE_COFFER        = GetFirstID('Treasure_Coffer'),
    },
}

return zones[xi.zone.CASTLE_OZTROJA]
