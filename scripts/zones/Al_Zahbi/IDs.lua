-----------------------------------
-- Area: Al_Zahbi
-----------------------------------
zones = zones or {}

zones[xi.zone.AL_ZAHBI] =
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
        NOTHING_OUT_OF_ORDINARY       = 6404, -- There is nothing out of the ordinary here.
        CARRIED_OVER_POINTS           = 7001, -- You have carried over <number> login point[/s].
        LOGIN_CAMPAIGN_UNDERWAY       = 7002, -- The [/January/February/March/April/May/June/July/August/September/October/November/December] <number> Login Campaign is currently underway!
        LOGIN_NUMBER                  = 7003, -- In celebration of your most recent login (login no. <number>), we have provided you with <number> points! You currently have a total of <number> points.
        MEMBERS_LEVELS_ARE_RESTRICTED = 7023, -- Your party is unable to participate because certain members' levels are restricted.
        FISHING_MESSAGE_OFFSET        = 7061, -- You can't fish here.
        MOG_LOCKER_OFFSET             = 7400, -- Your Mog Locker lease is valid until <timestamp>, kupo.
        HOMEPOINT_SET                 = 7546, -- Home point set!
        IMAGE_SUPPORT_ACTIVE          = 7569, -- You have to wait a bit longer before asking for synthesis image support again.
        IMAGE_SUPPORT                 = 7571, -- Your [fishing/woodworking/smithing/goldsmithing/clothcraft/leatherworking/bonecraft/alchemy/cooking] skills went up [a little/ever so slightly/ever so slightly].
        KAHAHHOBICHAI_SHOP_DIALOG     = 7630, -- Step rrright up to Kahah Hobichai's Blades! We've got everything your battle-thirrrsty heart desires!
        ALLARD_SHOP_DIALOG            = 7636, -- Hey, how ya doin'? Welcome to the armor shop of the Ulthalam Parade's leading star--Allard, in the flesh!
        ZAFIF_SHOP_DIALOG             = 7642, -- Welcome... I'm Zafif, and this is my magic shop... I hope you can find something of use here.
        CHAYAYA_SHOP_DIALOG           = 7648, -- Chayaya's Projectiles! Get your darts and more at Chayaya's Projectiles! Just don't touch the stuff in the high drawers, okay?
        NEED_CANDESCENCE_BACK         = 7701, -- ...Hm? You! Yes, you! What do you think you're staring at, anyway? Go get the Astral Candescence back, and now!
        ITEM_DELIVERY_DIALOG          = 7852, -- No need to wrap your goods. Just hand them over and they're as good as delivered! (I've got to be nice as long as the manager's got his eye on me...)
        DEHBI_MOSHAL_SHOP_DIALOG      = 7856, -- Welcome to the Carpenters' Guild!
        NDEGO_SHOP_DIALOG             = 7858, -- The Blacksmiths' Guild thanks you for your business!
        BORNAHN_SHOP_DIALOG           = 7860, -- Welcome! We have all your goldsmithing needs right here!
        TATEN_BILTEN_SHOP_DIALOG      = 7862, -- Weave something beautiful with the materials you buy here, okay?
        CHOCOBO_HAPPY                 = 7865, -- The chocobo appears to be extremely happy.
        SANCTION                      = 7990, -- You have received the Empire's Sanction.
    },
    mob =
    {
    },
    npc =
    {
    },
}

return zones[xi.zone.AL_ZAHBI]
