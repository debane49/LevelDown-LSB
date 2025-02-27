-----------------------------------
-- Area: Jugner_Forest_[S]
-----------------------------------
zones = zones or {}

zones[xi.zone.JUGNER_FOREST_S] =
{
    text =
    {
        YOU_RECOVERED_MOG_TABLET      = 0,    -- A mog tablet has been discovered in ${choice: 0}[West Ronfaure/East Ronfaure/the La Theine Plateau/the Valkurm Dunes/Jugner Forest/the Batallia Downs/North Gustaberg/South Gustaberg/the Konschtat Highlands/the Pashhow Marshlands/the Rolanberry Fields/Beaucedine Glacier/Xarcabard/West Sarutabaruta/East Sarutabaruta/the Tahrongi Canyon/the Buburimu Peninsula/the Meriphataud Mountains/the Sauromugue Champaign/Qufim Island/Behemoth''s Dominion/Cape Teriggan/the Eastern Altepa Desert/the Sanctuary of Zi''Tah/Ro''Maeve/the Yuhtunga Jungle/the Yhoator Jungle/the Western Altepa Desert/the Valley of Sorrows]!
        ALL_MOG_TABLETS_FOUND         = 1,    -- The complete set of mog tablets has been restored to RuLude Gardens! The ancient magic of King Kupofried permeates the air to instill adventurers in this area with its Super Kupowers!
        FIND_THE_MOG_TABLETS          = 2,    -- The strength of the ancient moogle magic has weakened, and the tablets have been scattered to the winds once more. You can feel your Super Kupowers begin to fade away...
        NOTHING_HAPPENS               = 119,  -- Nothing happens...
        ITEM_CANNOT_BE_OBTAINED       = 6384, -- You cannot obtain the <item>. Come back after sorting your inventory.
        ITEM_OBTAINED                 = 6390, -- Obtained: <item>.
        GIL_OBTAINED                  = 6391, -- Obtained <number> gil.
        KEYITEM_OBTAINED              = 6393, -- Obtained key item: <keyitem>.
        NOTHING_OUT_OF_ORDINARY       = 6404, -- There is nothing out of the ordinary here.
        CARRIED_OVER_POINTS           = 7001, -- You have carried over <number> login point[/s].
        LOGIN_CAMPAIGN_UNDERWAY       = 7002, -- The [/January/February/March/April/May/June/July/August/September/October/November/December] <number> Login Campaign is currently underway!
        LOGIN_NUMBER                  = 7003, -- In celebration of your most recent login (login no. <number>), we have provided you with <number> points! You currently have a total of <number> points.
        MEMBERS_LEVELS_ARE_RESTRICTED = 7023, -- Your party is unable to participate because certain members' levels are restricted.
        LOGGING_IS_POSSIBLE_HERE      = 7085, -- Logging is possible here if you have <item>.
        YOU_FIND_NOTHING_ORDINARY     = 7125, -- You find nothing out of the ordinary.
        CAMPAIGN_RESULTS_TALLIED      = 7293, -- Campaign results tallied.
        FISHING_MESSAGE_OFFSET        = 7378, -- You can't fish here.
        ALREADY_OBTAINED_TELE         = 7714, -- You already possess the gate crystal for this telepoint.
        YOU_FIND_SPARKLING_STONE      = 7732, -- You find a sparkling stone.
        ELEGANT_FOOTPRINTS            = 8407, -- You see numerous sets of elegant footprints.
        LILISETTE_IS_PREPARING        = 8408, -- Lilisette is preparing a new trap in an attempt to catch the ever-elusive Cait Sith. Bring her <item> to use as bait.
        IDEAL_PLACE_TO_PLANT_ITEM     = 8537, -- This seems to be an ideal place to plant <item>.
        YOU_PLANT_ITEM                = 8538, -- You plant <item>.
        ITEM_IS_PLANTED_HERE          = 8539, -- <item> has been planted here...
        NO_RESPONSE                   = 8543, -- There is no response...
        VOIDWALKER_DESPAWN            = 8566, -- The monster fades before your eyes, a look of disappointment on its face.
        VOIDWALKER_NO_MOB             = 8613, -- The <keyitem> quivers ever so slightly, but emits no light. There seem to be no monsters in the area.
        VOIDWALKER_MOB_TOO_FAR        = 8614, -- The <keyitem> quivers ever so slightly and emits a faint light. There seem to be no monsters in the immediate vicinity.
        VOIDWALKER_MOB_HINT           = 8615, -- The <keyitem> resonates [feebly/softly/solidly/strongly/very strongly/furiously], sending a radiant beam of light lancing towards a spot roughly <number> [yalm/yalms] [east/southeast/south/southwest/west/northwest/north/northeast] of here.
        VOIDWALKER_SPAWN_MOB          = 8616, -- A monster materializes out of nowhere!
        VOIDWALKER_UPGRADE_KI_1       = 8618, -- The <keyitem> takes on a slightly deeper hue and becomes <keyitem>!
        VOIDWALKER_UPGRADE_KI_2       = 8619, -- The <keyitem> takes on a deeper, richer hue and becomes <keyitem>!
        VOIDWALKER_BREAK_KI           = 8620, -- The <keyitem> shatters into tiny fragments.
        VOIDWALKER_OBTAIN_KI          = 8621, -- Obtained key item: <keyitem>!
        GATHERED_DAWNDROPS_LIGHT      = 8641, -- The gathered dawndrops unleash a brilliant light, melding together to form <keyitem>!
        RETRACED_ALL_JUNCTIONS        = 8642, -- You have retraced all junctions of eventualities. Hasten back to where Cait Sith and Lilisette await.
        COMMON_SENSE_SURVIVAL         = 9516, -- It appears that you have arrived at a new survival guide provided by the Servicemen's Mutual Aid Network. Common sense dictates that you should now be able to teleport here from similar tomes throughout the world.
    },

    mob =
    {
        DRUMSKULL_ZOGDREGG    = GetFirstID('Drumskull_Zogdregg'),
        FINGERFILCHER_DRADZAD = GetFirstID('Fingerfilcher_Dradzad'),
        COBRACLAW_BUCHZVOTCH  = GetFirstID('Cobraclaw_Buchzvotch'),

        VOIDWALKER =
        {
            [xi.keyItem.CLEAR_ABYSSITE] =
            {
                17113500, -- Sunderclaw
                17113499, -- Sunderclaw
                17113498, -- Sunderclaw
                17113497, -- Sunderclaw
                17113496, -- Quagmire Pugil
                17113495, -- Quagmire Pugil
                17113494, -- Quagmire Pugil
                17113493, -- Quagmire Pugil
            },

            [xi.keyItem.COLORFUL_ABYSSITE] =
            {
                17113492, -- Capricornus
                17113491, -- Yacumama
            },

            [xi.keyItem.BLUE_ABYSSITE] =
            {
                17113490, -- Krabkatoa
            },

            [xi.keyItem.BLACK_ABYSSITE] =
            {
                17113489, -- Yilbegan
            }
        },
    },

    npc =
    {
        CAMPAIGN_NPC_OFFSET = GetFirstID('Roiloux_RK'), -- San, Bas, Win, Flag +4, CA
        LOGGING             = GetTableOfIDs('Logging_Point'),
    },
}

return zones[xi.zone.JUGNER_FOREST_S]
