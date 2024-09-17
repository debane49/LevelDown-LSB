-----------------------------------
-- Area: Promyvion-Vahzl
-----------------------------------
zones = zones or {}

zones[xi.zone.PROMYVION_VAHZL] =
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
        NOTHING_OUT_OF_ORDINARY_MAP   = 6404, -- There is nothing out of the ordinary here.
        CARRIED_OVER_POINTS           = 7001, -- You have carried over <number> login point[/s].
        LOGIN_CAMPAIGN_UNDERWAY       = 7002, -- The [/January/February/March/April/May/June/July/August/September/October/November/December] <number> Login Campaign is currently underway!
        LOGIN_NUMBER                  = 7003, -- In celebration of your most recent login (login no. <number>), we have provided you with <number> points! You currently have a total of <number> points.
        MEMBERS_LEVELS_ARE_RESTRICTED = 7023, -- Your party is unable to participate because certain members' levels are restricted.
        OVERFLOWING_MEMORIES          = 7226, -- It appears to be a barrier woven from the energy of overflowing memories...
        ON_NM_SPAWN                   = 7230, -- You sense a dark, empty presence...
        EERIE_GREEN_GLOW              = 7232, -- The sphere is emitting an eerie green glow.
        AMULET_RETURNED               = 7275, -- The <item> has been returned to you.
        LIGHT_OF_VAHZL                = 7276, -- You cannot remember when exactly, but you have obtained <item>!
        POPPED_NM_OFFSET              = 7312, -- Remnants of a cerebrator lie scattered about the area.
    },
    mob =
    {
        MEMORY_RECEPTACLE_TABLE = GetTableOfIDs('Memory_Receptacle'),
        PONDERER                = GetFirstID('Ponderer'),
        PROPAGATOR              = GetFirstID('Propagator'),
        SOLICITOR               = GetFirstID('Solicitor'),
        DEVIATOR                = GetFirstID('Deviator'),
        WAILER                  = GetFirstID('Wailer'),
        PROVOKER                = GetFirstID('Provoker'),
    },
    npc =
    {
        MEMORY_STREAM_OFFSET = GetFirstID('_0m1'),
    },
}

return zones[xi.zone.PROMYVION_VAHZL]
