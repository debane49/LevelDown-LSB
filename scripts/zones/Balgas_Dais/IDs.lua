-----------------------------------
-- Area: Balgas_Dais
-----------------------------------
zones = zones or {}

zones[xi.zone.BALGAS_DAIS] =
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
        LOST_KEYITEM                  = 6394, -- Lost key item: <keyitem>.
        CARRIED_OVER_POINTS           = 7001, -- You have carried over <number> login point[/s].
        LOGIN_CAMPAIGN_UNDERWAY       = 7002, -- The [/January/February/March/April/May/June/July/August/September/October/November/December] <number> Login Campaign is currently underway!
        LOGIN_NUMBER                  = 7003, -- In celebration of your most recent login (login no. <number>), we have provided you with <number> points! You currently have a total of <number> points.
        MEMBERS_LEVELS_ARE_RESTRICTED = 7023, -- Your party is unable to participate because certain members' levels are restricted.
        CONQUEST_BASE                 = 7065, -- Tallying conquest results...
        TIME_IN_THE_BATTLEFIELD_IS_UP = 7229, -- Your time in the battlefield is up! Now exiting...
        NO_BATTLEFIELD_ENTRY          = 7243, -- A cursed seal has been placed upon this platform.
        PARTY_MEMBERS_ARE_ENGAGED     = 7244, -- The battlefield where your party members are engaged in combat is locked. Access is denied.
        TESTIMONY_IS_TORN             = 7287, -- Your <item> is torn...
        TESTIMONY_WEARS               = 7288, -- Your <item> [/rips into shreds!/is on the verge of tearing apart.../is showing signs of wear...] (# [use remains/uses remain].)
        MEMBERS_OF_YOUR_PARTY         = 7535, -- Currently, # members of your party (including yourself) have clearance to enter the battlefield.
        MEMBERS_OF_YOUR_ALLIANCE      = 7536, -- Currently, # members of your alliance (including yourself) have clearance to enter the battlefield.
        TIME_LIMIT_FOR_THIS_BATTLE_IS = 7538, -- The time limit for this battle is <number> minutes.
        ORB_IS_CRACKED                = 7539, -- There is a crack in the %. It no longer contains a monster.
        A_CRACK_HAS_FORMED            = 7540, -- A crack has formed on the <item>, and the beast inside has been unleashed!
        PARTY_MEMBERS_HAVE_FALLEN     = 7574, -- All party members have fallen in battle. Now leaving the battlefield.
        THE_PARTY_WILL_BE_REMOVED     = 7581, -- If all party members' HP are still zero after # minute[/s], the party will be removed from the battlefield.
        ENTERING_THE_BATTLEFIELD_FOR  = 7602, -- Entering the battlefield for [The Rank 2 Final Mission/Steamed Sprouts/Divine Punishers/Saintly Invitation/Treasure and Tribulations/Shattering Stars (MNK)/Shattering Stars (WHM)/Shattering Stars (SMN)/Creeping Doom/Charming Trio/Harem Scarem/Early Bird Catches the Wyrm/Royal Succession/Rapid Raptors/Wild Wild Whiskers/Seasons Greetings/Royale Ramble/Moa Constrictors/The V Formation/Avian Apostates/Beyond Infinity/Steamed Sprouts/Divine Punishers/A Feast Most Dire/A.M.A.N. Trove (Mars)/A.M.A.N. Trove (Venus)/Inv. from Kupipi/Inv. from Kupipi and Co.]!
        YOU_DECIDED_TO_SHOW_UP        = 7648, -- So, you decided to show up. Now it's time to see what you're really made of, heh heh heh.
        LOOKS_LIKE_YOU_WERENT_READY   = 7649, -- Looks like you weren't ready for me, were you? Now go home, wash your face, and come back when you think you've got what it takes.
        YOUVE_COME_A_LONG_WAY         = 7650, -- Hm. That was a mighty fine display of skill there, <name>. You've come a long way...
        TEACH_YOU_TO_RESPECT_ELDERS   = 7651, -- I'll teach you to respect your elders!
        TAKE_THAT_YOU_WHIPPERSNAPPER  = 7652, -- Take that, you whippersnapper!
        NOW_THAT_IM_WARMED_UP         = 7653, -- Now that I'm warmed up...
        THAT_LL_HURT_IN_THE_MORNING   = 7654, -- Ungh... That'll hurt in the morning...
        SOUL_GEM_REACTS               = 7677, -- The <keyitem> reacts to the <keyitem>, sending a jolt of energy through your veins!
        PROMISE_ME_YOU_WONT_GO_DOWN   = 7692, -- Promise you won't go down too easy, okay?
        IM_JUST_GETTING_WARMED_UP     = 7693, -- Haha! I'm just getting warmed up!
        YOU_PACKED_MORE_OF_A_PUNCH    = 7694, -- Hah! You pack more of a punch than I thoughtaru. But I won't go down as easy as old Maat!
        WHATS_THIS_STRANGE_FEELING    = 7695, -- What's this strange feeling...? It's not supposed to end...like...
        HUH_IS_THAT_ALL               = 7696, -- Huh? Is that all? I haven't even broken a sweataru...
        YIKEY_WIKEYS                  = 7697, -- Yikey-wikeys! Get that thing away from meee!
        WHATS_THE_MATTARU             = 7698, -- <Pant, wheeze>... What's the mattaru, <name>? Too much of a pansy-wansy to fight fair?
    },
    mob =
    {
        ATORI_TUTORI            = GetFirstID('Atori-Tutori_qm'),
        BLACK_DRAGON            = GetFirstID('Black_Dragon'),
        BUU_XOLO_THE_BLOODFACED = GetFirstID('Buu_Xolo_the_Bloodfaced'),
        DVOROVOI                = GetFirstID('Dvorovoi'),
        MAAT                    = GetFirstID('Maat'),
        VOO_TOLU_THE_GHOSTFIST  = GetFirstID('Voo_Tolu_the_Ghostfist'),
    },
    npc =
    {
    },
}

return zones[xi.zone.BALGAS_DAIS]
