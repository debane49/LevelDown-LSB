-----------------------------------
-- Area: Rabao
-----------------------------------
zones = zones or {}

zones[xi.zone.RABAO] =
{
    text =
    {
        HOMEPOINT_SET                 = 2,     -- Home point set!
        YOU_RECOVERED_MOG_TABLET      = 22,    -- A mog tablet has been discovered in ${choice: 0}[West Ronfaure/East Ronfaure/the La Theine Plateau/the Valkurm Dunes/Jugner Forest/the Batallia Downs/North Gustaberg/South Gustaberg/the Konschtat Highlands/the Pashhow Marshlands/the Rolanberry Fields/Beaucedine Glacier/Xarcabard/West Sarutabaruta/East Sarutabaruta/the Tahrongi Canyon/the Buburimu Peninsula/the Meriphataud Mountains/the Sauromugue Champaign/Qufim Island/Behemoth''s Dominion/Cape Teriggan/the Eastern Altepa Desert/the Sanctuary of Zi''Tah/Ro''Maeve/the Yuhtunga Jungle/the Yhoator Jungle/the Western Altepa Desert/the Valley of Sorrows]!
        ALL_MOG_TABLETS_FOUND         = 23,    -- The complete set of mog tablets has been restored to RuLude Gardens! The ancient magic of King Kupofried permeates the air to instill adventurers in this area with its Super Kupowers!
        FIND_THE_MOG_TABLETS          = 24,    -- The strength of the ancient moogle magic has weakened, and the tablets have been scattered to the winds once more. You can feel your Super Kupowers begin to fade away...
        ITEM_CANNOT_BE_OBTAINED       = 6406,  -- You cannot obtain the <item>. Come back after sorting your inventory.
        ITEM_OBTAINED                 = 6412,  -- Obtained: <item>.
        GIL_OBTAINED                  = 6413,  -- Obtained <number> gil.
        KEYITEM_OBTAINED              = 6415,  -- Obtained key item: <keyitem>.
        NOT_HAVE_ENOUGH_GIL           = 6417,  -- You do not have enough gil.
        CARRIED_OVER_POINTS           = 6451,  -- You have carried over <number> login point[/s].
        LOGIN_CAMPAIGN_UNDERWAY       = 6452,  -- The [/January/February/March/April/May/June/July/August/September/October/November/December] <number> Login Campaign is currently underway!
        LOGIN_NUMBER                  = 6453,  -- In celebration of your most recent login (login no. <number>), we have provided you with <number> points! You currently have a total of <number> points.
        MEMBERS_LEVELS_ARE_RESTRICTED = 6473,  -- Your party is unable to participate because certain members' levels are restricted.
        CONQUEST_BASE                 = 6514,  -- Tallying conquest results...
        FISHING_MESSAGE_OFFSET        = 6673,  -- You can't fish here.
        REGIME_CANCELED               = 6873,  -- Current training regime canceled.
        HUNT_ACCEPTED                 = 6891,  -- Hunt accepted!
        USE_SCYLDS                    = 6892,  -- You use <number> [scyld/scylds]. Scyld balance: <number>.
        HUNT_RECORDED                 = 6903,  -- You record your hunt.
        OBTAIN_SCYLDS                 = 6905,  -- You obtain <number> [scyld/scylds]! Current balance: <number> [scyld/scylds].
        HUNT_CANCELED                 = 6909,  -- Hunt canceled.
        PAKHI_DELIVERY_DIALOG         = 10041, -- When your pack is fit to burrrst, send your non-essential items to your delivery box and bam, prrroblem solved!
        SPIRIT_DELIVERY_DIALOG        = 10042, -- We can deliver goods to your residence or to the residences of your friends.
        SHINY_TEETH_SHOP_DIALOG       = 10046, -- Well met, adventurer. If you're looking for a weapon to carve through those desert beasts, you've come to the right place.
        BRAVEWOLF_SHOP_DIALOG         = 10047, -- For rainy days and windy days, or for days when someone tries to thrust a spear in your guts, having a good set of armor can set your mind at ease.
        BRAVEOX_SHOP_DIALOG           = 10048, -- These days, you can get weapons and armor cheap at the auction houses. But magic is expensive no matter where you go.
        SCAMPLIX_SHOP_DIALOG          = 10049, -- No problem, Scamplix not bad guy. Scamplix is good guy, sells stuff to adventurers. Scamplix got lots of good stuff for you.
        GARUDA_UNLOCKED               = 10129, -- You are now able to summon [Ifrit/Titan/Leviathan/Garuda/Shiva/Ramuh].
        NOMAD_MOOGLE_DIALOG           = 10200, -- I'm a traveling moogle, kupo. I help adventurers in the Outlands access items they have stored in a Mog House elsewhere, kupo.
        GENEROIT_SHOP_DIALOG          = 10318, -- Ho there! I am called Generoit. I have everything here for the chocobo enthusiast, and other rare items galore.
        RETRIEVE_DIALOG_ID            = 10775, -- You retrieve <item> from the porter moogle's care.
        COMMON_SENSE_SURVIVAL         = 11853, -- It appears that you have arrived at a new survival guide provided by the Adventurers' Mutual Aid Network. Common sense dictates that you should now be able to teleport here from similar tomes throughout the world.
    },
    mob =
    {
    },
    npc =
    {
    },
}

return zones[xi.zone.RABAO]
