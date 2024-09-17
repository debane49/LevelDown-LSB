-----------------------------------
-- Area: Mhaura
-----------------------------------
zones = zones or {}

zones[xi.zone.MHAURA] =
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
        NOT_HAVE_ENOUGH_GIL           = 6395, -- You do not have enough gil.
        CARRIED_OVER_POINTS           = 6429, -- You have carried over <number> login point[/s].
        LOGIN_CAMPAIGN_UNDERWAY       = 6430, -- The [/January/February/March/April/May/June/July/August/September/October/November/December] <number> Login Campaign is currently underway!
        LOGIN_NUMBER                  = 6431, -- In celebration of your most recent login (login no. <number>), we have provided you with <number> points! You currently have a total of <number> points.
        MEMBERS_LEVELS_ARE_RESTRICTED = 6451, -- Your party is unable to participate because certain members' levels are restricted.
        HOMEPOINT_SET                 = 6494, -- Home point set!
        CONQUEST_BASE                 = 6552, -- Tallying conquest results...
        FISHING_MESSAGE_OFFSET        = 6728, -- You can't fish here.
        NOMAD_MOOGLE_DIALOG           = 6828, -- I'm a traveling moogle, kupo. I help adventurers in the Outlands access items they have stored in a Mog House elsewhere, kupo.
        SUBJOB_UNLOCKED               = 7069, -- You can now use support jobs!
        FERRY_ARRIVING                = 7144, -- Thank you for waiting. The ferry has arrived! Please go ahead and boarrrd!
        FERRY_DEPARTING               = 7146, -- Ferry departing!
        GRAINE_SHOP_DIALOG            = 7175, -- Hello there, I'm Graine the armorer. I've got just what you need!
        RUNITOMONITO_SHOP_DIALOG      = 7176, -- Hi! Welcome! I'm Runito-Monito, and weapons is my middle name!
        PIKINIMIKINI_SHOP_DIALOG      = 7177, -- Hi, I'm Pikini-Mikini, Mhaura's item seller. I've got the wares, so size doesn't matter!
        TYAPADOLIH_SHOP_DIALOG        = 7178, -- Welcome, strrranger! Tya Padolih's the name, and dealin' in magic is my game!
        GOLDSMITHING_GUILD            = 7179, -- Everything you need for your goldsmithing needs!
        SMITHING_GUILD                = 7180, -- Welcome to the Blacksmiths' Guild salesroom!
        RAMUH_UNLOCKED                = 7396, -- You are now able to summon [Ifrit/Titan/Leviathan/Garuda/Shiva/Ramuh].
        FYI_HERE_YOU_GO               = 7606, -- Alrrright! Here you go. Sorry that I couldn't ship it to your Mog House.
        MAURIRI_DELIVERY_DIALOG       = 7777, -- Mauriri is my name, and sending parcels from Mhaura is my game.
        PANORU_DELIVERY_DIALOG        = 7778, -- Looking for a delivery company that isn't lamey-wame? The quality of my service puts Mauriri to shame!
        DO_NOT_POSSESS                = 7780, -- You do not possess <item>. You were not permitted to board the ship...
        RETRIEVE_DIALOG_ID            = 7815, -- You retrieve <item> from the porter moogle's care.
    },
    mob =
    {
    },
    npc =
    {
        LAUGHING_BISON  = GetFirstID('Laughing_Bison'),
        EXPLORER_MOOGLE = GetFirstID('Explorer_Moogle'),
    },
}

return zones[xi.zone.MHAURA]
