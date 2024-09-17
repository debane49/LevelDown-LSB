-----------------------------------
-- Area: Sauromugue_Champaign_[S]
-----------------------------------
zones = zones or {}

zones[xi.zone.SAUROMUGUE_CHAMPAIGN_S] =
{
    text =
    {
        YOU_RECOVERED_MOG_TABLET      = 0,     -- A mog tablet has been discovered in ${choice: 0}[West Ronfaure/East Ronfaure/the La Theine Plateau/the Valkurm Dunes/Jugner Forest/the Batallia Downs/North Gustaberg/South Gustaberg/the Konschtat Highlands/the Pashhow Marshlands/the Rolanberry Fields/Beaucedine Glacier/Xarcabard/West Sarutabaruta/East Sarutabaruta/the Tahrongi Canyon/the Buburimu Peninsula/the Meriphataud Mountains/the Sauromugue Champaign/Qufim Island/Behemoth''s Dominion/Cape Teriggan/the Eastern Altepa Desert/the Sanctuary of Zi''Tah/Ro''Maeve/the Yuhtunga Jungle/the Yhoator Jungle/the Western Altepa Desert/the Valley of Sorrows]!
        ALL_MOG_TABLETS_FOUND         = 1,     -- The complete set of mog tablets has been restored to RuLude Gardens! The ancient magic of King Kupofried permeates the air to instill adventurers in this area with its Super Kupowers!
        FIND_THE_MOG_TABLETS          = 2,     -- The strength of the ancient moogle magic has weakened, and the tablets have been scattered to the winds once more. You can feel your Super Kupowers begin to fade away...
        NOTHING_HAPPENS               = 119,   -- Nothing happens...
        ITEM_CANNOT_BE_OBTAINED       = 6384,  -- You cannot obtain the <item>. Come back after sorting your inventory.
        ITEM_OBTAINED                 = 6390,  -- Obtained: <item>.
        GIL_OBTAINED                  = 6391,  -- Obtained <number> gil.
        KEYITEM_OBTAINED              = 6393,  -- Obtained key item: <keyitem>.
        CARRIED_OVER_POINTS           = 7001,  -- You have carried over <number> login point[/s].
        LOGIN_CAMPAIGN_UNDERWAY       = 7002,  -- The [/January/February/March/April/May/June/July/August/September/October/November/December] <number> Login Campaign is currently underway!
        LOGIN_NUMBER                  = 7003,  -- In celebration of your most recent login (login no. <number>), we have provided you with <number> points! You currently have a total of <number> points.
        MEMBERS_LEVELS_ARE_RESTRICTED = 7023,  -- Your party is unable to participate because certain members' levels are restricted.
        UNABLE_TO_PROGRESS            = 7047,  -- ou are unable to make further progress in Rhapsodies of Vana'diel due to an event occurring in the [Chains of Promathia/Treasures of Aht Urhgan/Wings of the Goddess/Seekers of Adoulin/Rise of the Zilart] missions.
        CAMPAIGN_RESULTS_TALLIED      = 7521,  -- Campaign results tallied.
        DOOR_FIRMLY_SEALED            = 7730,  -- The door is firmly sealed.
        SURRENDER_CEREMONY_HASTE      = 8478,  -- The surrender ceremony is about to commence underground. Make haste before all is lost!
        VOIDWALKER_DESPAWN            = 8490,  -- The monster fades before your eyes, a look of disappointment on its face.
        VOIDWALKER_NO_MOB             = 8677,  -- The <keyitem> quivers ever so slightly, but emits no light. There seem to be no monsters in the area.
        VOIDWALKER_MOB_TOO_FAR        = 8678,  -- The <keyitem> quivers ever so slightly and emits a faint light. There seem to be no monsters in the immediate vicinity.
        VOIDWALKER_MOB_HINT           = 8679,  -- The <keyitem> resonates [feebly/softly/solidly/strongly/very strongly/furiously], sending a radiant beam of light lancing towards a spot roughly <number> [yalm/yalms] [east/southeast/south/southwest/west/northwest/north/northeast] of here.
        VOIDWALKER_SPAWN_MOB          = 8680,  -- A monster materializes out of nowhere!
        VOIDWALKER_UPGRADE_KI_1       = 8682,  -- The <keyitem> takes on a slightly deeper hue and becomes <keyitem>!
        VOIDWALKER_UPGRADE_KI_2       = 8683,  -- The <keyitem> takes on a deeper, richer hue and becomes <keyitem>!
        VOIDWALKER_BREAK_KI           = 8684,  -- The <keyitem> shatters into tiny fragments.
        VOIDWALKER_OBTAIN_KI          = 8685,  -- Obtained key item: <keyitem>!
        COMMON_SENSE_SURVIVAL         = 10072, -- It appears that you have arrived at a new survival guide provided by the Servicemen's Mutual Aid Network. Common sense dictates that you should now be able to teleport here from similar tomes throughout the world.
    },
    mob =
    {
        BALAM_QUITZ = GetFirstID('Balam-Quitz'),
        COQUECIGRUE = GetFirstID('Coquecigrue'),

        VOIDWALKER =
        {
            [xi.keyItem.CLEAR_ABYSSITE] =
            {
                17178932,  -- Lacus
                17178931,  -- Thunor
                17178930, -- Beorht
                17178929, -- Pruina
                17178928,  -- Puretos
                17178927,  -- Eorthe
                17178926, -- Deorc
                17178925, -- Aither
            },

            [xi.keyItem.COLORFUL_ABYSSITE] =
            {
                17178924, -- Skuld
                17178923, -- Urd
            },

            [xi.keyItem.YELLOW_ABYSSITE] =
            {
                17178922, -- Verthandi
            },

            [xi.keyItem.BLACK_ABYSSITE] =
            {
                17178921, -- Yilbegan
            }
        }
    },

    npc =
    {
        CAMPAIGN_NPC_OFFSET = GetFirstID('Alreage_RK'), -- San, Bas, Win, Flag +4, CA
    },
}

return zones[xi.zone.SAUROMUGUE_CHAMPAIGN_S]
