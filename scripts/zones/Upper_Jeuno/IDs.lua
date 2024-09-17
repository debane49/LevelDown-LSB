-----------------------------------
-- Area: Upper_Jeuno
-----------------------------------
zones = zones or {}

zones[xi.zone.UPPER_JEUNO] =
{
    text =
    {
        CONQUEST_BASE                    = 0,     -- Tallying conquest results...
        YOU_RECOVERED_MOG_TABLET         = 159,   -- A mog tablet has been discovered in ${choice: 0}[West Ronfaure/East Ronfaure/the La Theine Plateau/the Valkurm Dunes/Jugner Forest/the Batallia Downs/North Gustaberg/South Gustaberg/the Konschtat Highlands/the Pashhow Marshlands/the Rolanberry Fields/Beaucedine Glacier/Xarcabard/West Sarutabaruta/East Sarutabaruta/the Tahrongi Canyon/the Buburimu Peninsula/the Meriphataud Mountains/the Sauromugue Champaign/Qufim Island/Behemoth''s Dominion/Cape Teriggan/the Eastern Altepa Desert/the Sanctuary of Zi''Tah/Ro''Maeve/the Yuhtunga Jungle/the Yhoator Jungle/the Western Altepa Desert/the Valley of Sorrows]!
        ALL_MOG_TABLETS_FOUND            = 160,   -- The complete set of mog tablets has been restored to RuLude Gardens! The ancient magic of King Kupofried permeates the air to instill adventurers in this area with its Super Kupowers!
        FIND_THE_MOG_TABLETS             = 161,   -- The strength of the ancient moogle magic has weakened, and the tablets have been scattered to the winds once more. You can feel your Super Kupowers begin to fade away...
        ITEM_CANNOT_BE_OBTAINED          = 6543,  -- You cannot obtain the <item>. Come back after sorting your inventory.
        ITEM_OBTAINED                    = 6549,  -- Obtained: <item>.
        GIL_OBTAINED                     = 6550,  -- Obtained <number> gil.
        KEYITEM_OBTAINED                 = 6552,  -- Obtained key item: <keyitem>.
        KEYITEM_LOST                     = 6553,  -- Lost key item: <keyitem>.
        NOT_HAVE_ENOUGH_GIL              = 6554,  -- You do not have enough gil.
        NOTHING_OUT_OF_ORDINARY          = 6563,  -- There is nothing out of the ordinary here.
        YOU_MUST_WAIT_ANOTHER_N_DAYS     = 6585,  -- You must wait another <number> [day/days] to perform that action.
        CARRIED_OVER_POINTS              = 6588,  -- You have carried over <number> login point[/s].
        LOGIN_CAMPAIGN_UNDERWAY          = 6589,  -- The [/January/February/March/April/May/June/July/August/September/October/November/December] <number> Login Campaign is currently underway!
        LOGIN_NUMBER                     = 6590,  -- In celebration of your most recent login (login no. <number>), we have provided you with <number> points! You currently have a total of <number> points.
        MEMBERS_LEVELS_ARE_RESTRICTED    = 6610,  -- Your party is unable to participate because certain members' levels are restricted.
        HOMEPOINT_SET                    = 6691,  -- Home point set!
        MOG_LOCKER_OFFSET                = 6809,  -- Your Mog Locker lease is valid until <timestamp>, kupo.
        GLYKE_SHOP_DIALOG                = 6992,  -- Can I help you?
        MEJUONE_SHOP_DIALOG              = 6993,  -- Welcome to the Chocobo Shop.
        VIETTES_SHOP_DIALOG              = 6994,  -- Welcome to Viette's Finest Weapons.
        DURABLE_SHIELDS_SHOP_DIALOG      = 6995,  -- Welcome to Durable Shields.
        MP_SHOP_DIALOG                   = 6996,  -- Welcome to M & P's Market.
        GUIDE_STONE                      = 6997,  -- Up: Ru'Lude Gardens Down: Lower Jeuno (facing Bastok)
        IT_READS_STAFF_ONLY              = 6999,  -- It reads, Staff Only.
        LEILLAINE_SHOP_DIALOG            = 7022,  -- Hello. Are you feeling all right?
        YOU_CAN_NOW_BECOME_A_BEASTMASTER = 7202,  -- You can now become a beastmaster.
        CONQUEST                         = 7758,  -- You've earned conquest points!
        ITEM_DELIVERY_DIALOG             = 8091,  -- Delivering goods to residences everywhere!
        DECIMATION_LEARNED               = 8214,  -- You have learned the weapon skill Decimation!
        LEND_PRISHE_AMULET               = 8351,  -- You lend the <item> to Prishe.
        YOU_OBTAIN_ITEM                  = 11195, -- You obtain <item>!
        UNLOCK_DANCER                    = 11845, -- You can now become a dancer!
    },
    mob =
    {
    },
    npc =
    {
        MAPITOTO = GetFirstID('Mapitoto'),
    },
}

return zones[xi.zone.UPPER_JEUNO]
