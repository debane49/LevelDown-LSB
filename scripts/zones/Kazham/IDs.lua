-----------------------------------
-- Area: Kazham
-----------------------------------
zones = zones or {}

zones[xi.zone.KAZHAM] =
{
    text =
    {
        YOU_RECOVERED_MOG_TABLET      = 0,     -- A mog tablet has been discovered in ${choice: 0}[West Ronfaure/East Ronfaure/the La Theine Plateau/the Valkurm Dunes/Jugner Forest/the Batallia Downs/North Gustaberg/South Gustaberg/the Konschtat Highlands/the Pashhow Marshlands/the Rolanberry Fields/Beaucedine Glacier/Xarcabard/West Sarutabaruta/East Sarutabaruta/the Tahrongi Canyon/the Buburimu Peninsula/the Meriphataud Mountains/the Sauromugue Champaign/Qufim Island/Behemoth''s Dominion/Cape Teriggan/the Eastern Altepa Desert/the Sanctuary of Zi''Tah/Ro''Maeve/the Yuhtunga Jungle/the Yhoator Jungle/the Western Altepa Desert/the Valley of Sorrows]!
        ALL_MOG_TABLETS_FOUND         = 1,     -- The complete set of mog tablets has been restored to RuLude Gardens! The ancient magic of King Kupofried permeates the air to instill adventurers in this area with its Super Kupowers!
        FIND_THE_MOG_TABLETS          = 2,     -- The strength of the ancient moogle magic has weakened, and the tablets have been scattered to the winds once more. You can feel your Super Kupowers begin to fade away...
        ITEM_CANNOT_BE_OBTAINED       = 6384,  -- You cannot obtain the <item>. Come back after sorting your inventory.
        ITEM_OBTAINED                 = 6390,  -- Obtained: <item>.
        GIL_OBTAINED                  = 6391,  -- Obtained <number> gil.
        KEYITEM_OBTAINED              = 6393,  -- Obtained key item: <keyitem>.
        CARRIED_OVER_POINTS           = 6429,  -- You have carried over <number> login point[/s].
        LOGIN_CAMPAIGN_UNDERWAY       = 6430,  -- The [/January/February/March/April/May/June/July/August/September/October/November/December] <number> Login Campaign is currently underway!
        LOGIN_NUMBER                  = 6431,  -- In celebration of your most recent login (login no. <number>), we have provided you with <number> points! You currently have a total of <number> points.
        MEMBERS_LEVELS_ARE_RESTRICTED = 6451,  -- Your party is unable to participate because certain members' levels are restricted.
        HOMEPOINT_SET                 = 6495,  -- Home point set!
        CONQUEST_BASE                 = 6515,  -- Tallying conquest results...
        FISHING_MESSAGE_OFFSET        = 6674,  -- You can't fish here.
        REGIME_CANCELED               = 6835,  -- Current training regime canceled.
        HUNT_ACCEPTED                 = 6853,  -- Hunt accepted!
        USE_SCYLDS                    = 6854,  -- You use <number> [scyld/scylds]. Scyld balance: <number>.
        HUNT_RECORDED                 = 6865,  -- You record your hunt.
        OBTAIN_SCYLDS                 = 6867,  -- You obtain <number> [scyld/scylds]! Current balance: <number> [scyld/scylds].
        HUNT_CANCELED                 = 6871,  -- Hunt canceled.
        ITEM_DELIVERY_DIALOG          = 9974,  -- We can deliver packages to Mog Houses anywhere in Vana'diel.
        PAHYALOLOHOIV_SHOP_DIALOG     = 10036, -- Nothing in this world is crrreated good or evil. However, evil can arrrise when something exists in a place where it did not originally belong.
        TOJIMUMOSULAH_SHOP_DIALOG     = 10038, -- Things meant to live will live. Things meant to die will die when their time has come. However, this does not mean you should cease your strrruggle for life.
        GHEMISENTERILO_SHOP_DIALOG    = 10060, -- Can you really get everything that you want on the mainland?
        NUHCELODENKI_SHOP_DIALOG      = 10062, -- When you die, you can't take anything with you, but what fun is life if you don't have anything to live it up with?
        KHIFORYUHKOWA_SHOP_DIALOG     = 10063, -- Sometimes a strrrange Hume comes from the south to buy stuff. I wonder what he's doing down there...
        TAHNPOSBEI_SHOP_DIALOG        = 10064, -- You don't want to get whipped by those Tonberries, do you? Well, have I got the equipment forrr you!
        IFRIT_UNLOCKED                = 10536, -- You are now able to summon [Ifrit/Titan/Leviathan/Garuda/Shiva/Ramuh].
        NOMAD_MOOGLE_DIALOG           = 10607, -- I'm a traveling moogle, kupo. I help adventurers in the Outlands access items they have stored in a Mog House elsewhere, kupo.
        MAMERIE_SHOP_DIALOG           = 10631, -- Is there something you require?
        EVISCERATION_LEARNED          = 10668, -- You have learned the weapon skill Evisceration!
        RETRIEVE_DIALOG_ID            = 11018, -- You retrieve <item> from the porter moogle's care.
        COMMON_SENSE_SURVIVAL         = 11876, -- It appears that you have arrived at a new survival guide provided by the Adventurers' Mutual Aid Network. Common sense dictates that you should now be able to teleport here from similar tomes throughout the world.
    },
    mob =
    {
    },
    npc =
    {
        MAGRIFFON = GetFirstID('Magriffon'),
        TIELLEQUE = GetFirstID('Tielleque'),
    },
}

return zones[xi.zone.KAZHAM]
