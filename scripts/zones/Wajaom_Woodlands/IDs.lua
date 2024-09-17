-----------------------------------
-- Area: Wajaom_Woodlands
-----------------------------------
zones = zones or {}

zones[xi.zone.WAJAOM_WOODLANDS] =
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
        FELLOW_MESSAGE_OFFSET         = 6419, -- I'm ready. I suppose.
        CARRIED_OVER_POINTS           = 7001, -- You have carried over <number> login point[/s].
        LOGIN_CAMPAIGN_UNDERWAY       = 7002, -- The [/January/February/March/April/May/June/July/August/September/October/November/December] <number> Login Campaign is currently underway!
        LOGIN_NUMBER                  = 7003, -- In celebration of your most recent login (login no. <number>), we have provided you with <number> points! You currently have a total of <number> points.
        MEMBERS_LEVELS_ARE_RESTRICTED = 7023, -- Your party is unable to participate because certain members' levels are restricted.
        FISHING_MESSAGE_OFFSET        = 7061, -- You can't fish here.
        DIG_THROW_AWAY                = 7074, -- You dig up <item>, but your inventory is full. You regretfully throw the <item> away.
        FIND_NOTHING                  = 7076, -- You dig and you dig, but find nothing.
        PLACE_HYDROGAUGE              = 7354, -- You set the <item> in the glowing trench.
        ENIGMATIC_LIGHT               = 7355, -- The <item> is giving off an enigmatic light.
        LEYPOINT                      = 7410, -- An eerie red glow emanates from this stone platform. The surrounding air feels alive with energy...
        HARVESTING_IS_POSSIBLE_HERE   = 7418, -- Harvesting is possible here if you have <item>.
        GIWAHB_WATCHTOWER_LOCKED      = 7992, -- The door is locked...
        INCREASED_STANDING            = 7993, -- Your Imperial Standing has increased!
        HEADY_FRAGRANCE               = 8497, -- The heady fragrance of wine pervades the air...
        BROKEN_SHARDS                 = 8499, -- Broken shards of insect wing are scattered all over...
        PAMAMA_PEELS                  = 8501, -- Piles of pamama peels litter the ground...
        DRAWS_NEAR                    = 8527, -- Something draws near!
        COMMON_SENSE_SURVIVAL         = 9645, -- It appears that you have arrived at a new survival guide provided by the Adventurers' Mutual Aid Network. Common sense dictates that you should now be able to teleport here from similar tomes throughout the world.
        UNITY_WANTED_BATTLE_INTERACT  = 9709, -- Those who have accepted % must pay # Unity accolades to participate. The content for this Wanted battle is #. [Ready to begin?/You do not have the appropriate object set, so your rewards will be limited.]
    },
    mob =
    {
        CHIGOES                =
        {
            ['Marid'] = GetTableOfIDs('Chigoe', 5),
        },
        JADED_JODY             = GetFirstID('Jaded_Jody'),
        ZORAAL_JA_S_PKUUCHA    = GetFirstID('Zoraal_Jas_Pkuucha'),
        PERCIPIENT_ZORAAL_JA   = GetFirstID('Percipient_Zoraal_Ja'),
        VULPANGUE              = GetFirstID('Vulpangue'),
        IRIZ_IMA               = GetFirstID('Iriz_Ima'),
        GOTOH_ZHA_THE_REDOLENT = GetFirstID('Gotoh_Zha_the_Redolent'),
        TINNIN                 = GetFirstID('Tinnin'),
    },
    npc =
    {
        HARVESTING = GetTableOfIDs('Harvesting_Point'),
    },
}

return zones[xi.zone.WAJAOM_WOODLANDS]
