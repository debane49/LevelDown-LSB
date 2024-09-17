-----------------------------------
-- Area: The_Eldieme_Necropolis_[S]
-----------------------------------
zones = zones or {}

zones[xi.zone.THE_ELDIEME_NECROPOLIS_S] =
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
        CARRIED_OVER_POINTS           = 7001, -- You have carried over <number> login point[/s].
        LOGIN_CAMPAIGN_UNDERWAY       = 7002, -- The [/January/February/March/April/May/June/July/August/September/October/November/December] <number> Login Campaign is currently underway!
        LOGIN_NUMBER                  = 7003, -- In celebration of your most recent login (login no. <number>), we have provided you with <number> points! You currently have a total of <number> points.
        MEMBERS_LEVELS_ARE_RESTRICTED = 7023, -- Your party is unable to participate because certain members' levels are restricted.
        LAYTON_SHOP_DIALOG            = 7118, -- Might you be a student of the same field as I? If that is the case, I might be able to provide you with the proper grimoires...at a price, of course.
        CAMPAIGN_RESULTS_TALLIED      = 7513, -- Campaign results tallied.
        SARCOPHAGUS_SEALED            = 7612, -- It is a stone sarcophagus with the lid sealed tight. It cannot be opened.
        NAMES_CARVED_ON_STONE         = 7613, -- The names of the deceased in this area are carved upon the stone.
        YOU_CAN_NOW_BECOME_A_SCHOLAR  = 7727, -- You can now become a scholar!
        YOU_LEARN_EMBRAVA_AND_KAUSTRA = 7911, -- <name> learns Embrava and Kaustra!
        ITEM_DELIVERY_DIALOG          = 7917, -- Have something to send?
        COMMON_SENSE_SURVIVAL         = 8944, -- It appears that you have arrived at a new survival guide provided by the Servicemen's Mutual Aid Network. Common sense dictates that you should now be able to teleport here from similar tomes throughout the world.
    },
    mob =
    {
    },
    npc =
    {
        CAMPAIGN_NPC_OFFSET = GetFirstID('Renvriche_TK'), -- San, Bas, Win, Flag +4, CA
    },
}

return zones[xi.zone.THE_ELDIEME_NECROPOLIS_S]
