-----------------------------------
-- Area: Full_Moon_Fountain
-----------------------------------
zones = zones or {}

zones[xi.zone.FULL_MOON_FOUNTAIN] =
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
        CONQUEST_BASE                 = 7064, -- Tallying conquest results...
        TIME_IN_THE_BATTLEFIELD_IS_UP = 7324, -- Your time in the battlefield is up! Now exiting...
        PARTY_MEMBERS_ARE_ENGAGED     = 7339, -- The battlefield where your party members are engaged in combat is locked. Access is denied.
        NO_BATTLEFIELD_ENTRY          = 7346, -- A strong magical force is whirling up from the platform.
        UNABLE_TO_PROTECT             = 7381, -- You were unable to protect Ajido-Marujido. Now leaving the battlefield.
        MEMBERS_OF_YOUR_PARTY         = 7630, -- Currently, # members of your party (including yourself) have clearance to enter the battlefield.
        MEMBERS_OF_YOUR_ALLIANCE      = 7631, -- Currently, # members of your alliance (including yourself) have clearance to enter the battlefield.
        TIME_LIMIT_FOR_THIS_BATTLE_IS = 7633, -- The time limit for this battle is <number> minutes.
        PARTY_MEMBERS_HAVE_FALLEN     = 7669, -- All party members have fallen in battle. Now leaving the battlefield.
        THE_PARTY_WILL_BE_REMOVED     = 7676, -- If all party members' HP are still zero after # minute[/s], the party will be removed from the battlefield.
        ENTERING_THE_BATTLEFIELD_FOR  = 7767, -- Entering the battlefield for [The Moonlit Path/Moon Reading/Waking the Beast/Battaru Royale/The Moonlit Path/Waking the Beast]!
        PLAY_TIME_IS_OVER             = 7769, -- Play time is over! Powers of dark mana, answer my call!
        YOU_SHOULD_BE_THANKFUL        = 7770, -- You should be thankful. I'll give you a shortaru trip back to the hell you came from!
        DONT_GIVE_UP                  = 7771, -- Don't give up, adventurer! You are Windurst's guiding star, our beacon of hope!
    },
    mob =
    {
        FENRIR_PRIME         = GetFirstID('Fenrir_Prime'),
        ACE_OF_CUPS          = GetFirstID('Ace_of_Cups'),
        FENRIR_PRIME_HTBF    = GetFirstID('Fenrir_Prime_HTBF'),
        CARBUNCLE_PRIME_HTBF = GetFirstID('Carbuncle_Prime_HTBF'),
        IFRIT_PRIME_HTBF     = GetFirstID('Ifrit_Prime_HTBF'),
        SHIVA_PRIME_HTBF     = GetFirstID('Shiva_Prime_HTBF'),
        GARUDA_PRIME_HTBF    = GetFirstID('Garuda_Prime_HTBF'),
        TITAN_PRIME_HTBF     = GetFirstID('Titan_Prime_HTBF'),
        RAMUH_PRIME_HTBF     = GetFirstID('Ramuh_Prime_HTBF'),
        LEVIATHAN_PRIME_HTBF = GetFirstID('Leviathan_Prime_HTBF'),
    },
    npc =
    {
    },
}

return zones[xi.zone.FULL_MOON_FOUNTAIN]
