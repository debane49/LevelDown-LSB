-----------------------------------
-- Area: East_Sarutabaruta
-----------------------------------
zones = zones or {}

zones[xi.zone.EAST_SARUTABARUTA] =
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
        FELLOW_MESSAGE_OFFSET         = 6419, -- I'm ready. I suppose.
        CARRIED_OVER_POINTS           = 7001, -- You have carried over <number> login point[/s].
        LOGIN_CAMPAIGN_UNDERWAY       = 7002, -- The [/January/February/March/April/May/June/July/August/September/October/November/December] <number> Login Campaign is currently underway!
        LOGIN_NUMBER                  = 7003, -- In celebration of your most recent login (login no. <number>), we have provided you with <number> points! You currently have a total of <number> points.
        MEMBERS_LEVELS_ARE_RESTRICTED = 7023, -- Your party is unable to participate because certain members' levels are restricted.
        CONQUEST_BASE                 = 7064, -- Tallying conquest results...
        FISHING_MESSAGE_OFFSET        = 7223, -- You can't fish here.
        DIG_THROW_AWAY                = 7236, -- You dig up <item>, but your inventory is full. You regretfully throw the <item> away.
        FIND_NOTHING                  = 7238, -- You dig and you dig, but find nothing.
        SIGNPOST_OFFSET               = 7393, -- Southeast: South Tower, Horutoto Ruins Southwest: Windurst Woods
        TABY_CANATAHEY_DIALOG         = 7403, -- This is the entrrrance to Windurst. Please maintain orderrrly conduct while you'rrre in town.
        HEIH_PORHIAAP_DIALOG          = 7404, -- These grrrasslands make up East Sarutabaruta. Lately the number of monsters has drrramatically increased, causing us all sorts of trrrouble.
        SAMA_GOHJIMA_POSTDIALOG       = 7407, -- Were you able to find the laborrratory? There are many such hidden passages in the Horutoto Ruins.
        QUH_BERHUJA_DIALOG            = 7408, -- Hold on therrre! This ain't no place forrr adventurrrers to just wanderrr in and out of! Withdrrraw immediately!
        QUH_BERHUJA_STOLEN_ORBS       = 7410, -- Yowl! That was a close call, with those ferrral Carrrdians barrrging in therrre! Of courrrse, I rrran away...for help, I mean...
        PORE_OHRE_DIALOG              = 7412, -- There are reports of evil Cardians attacking people to steal the Mana Orbs created at this tower. Yikey-wikey, is this job scary!?
        PORE_OHRE_STOLEN_ORBS         = 7454, -- If you're heading back to town, then please go tell Minister Apururu at the Manustery about those feral Cardians stealing our Mana Orbs! Thanks, and be careful on your way homey-womey!
        PLAYER_OBTAINS_ITEM           = 7567, -- <name> obtains <item>!
        UNABLE_TO_OBTAIN_ITEM         = 7568, -- You were unable to obtain the item.
        PLAYER_OBTAINS_TEMP_ITEM      = 7569, -- <name> obtains the temporary item: <item>!
        ALREADY_POSSESS_TEMP          = 7570, -- You already possess that temporary item.
        NO_COMBINATION                = 7575, -- You were unable to enter a combination.
        UNITY_WANTED_BATTLE_INTERACT  = 7637, -- Those who have accepted % must pay # Unity accolades to participate. The content for this Wanted battle is #. [Ready to begin?/You do not have the appropriate object set, so your rewards will be limited.]
        REGIME_REGISTERED             = 9936, -- New training regime registered!
    },
    mob =
    {
        SHARP_EARED_ROPIPI = GetFirstID('Sharp-Eared_Ropipi'),
        SPINY_SPIPI        = GetFirstID('Spiny_Spipi'),
        DUKE_DECAPOD       = GetFirstID('Duke_Decapod'),
    },
    npc =
    {
    },
}

return zones[xi.zone.EAST_SARUTABARUTA]
