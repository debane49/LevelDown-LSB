-----------------------------------
-- Area: Northern_San_dOria
-----------------------------------
zones = zones or {}

zones[xi.zone.NORTHERN_SAN_DORIA] =
{
    text =
    {
        YOU_ACCEPT_THE_MISSION        = 5,     -- You accept the mission.
        ORIGINAL_MISSION_OFFSET       = 16,    -- Bring me one of those axes, and your mission will be a success. No running away now; we've a proud country to defend!
        HOMEPOINT_SET                 = 188,   -- Home point set!
        YOU_RECOVERED_MOG_TABLET      = 208,   -- A mog tablet has been discovered in ${choice: 0}[West Ronfaure/East Ronfaure/the La Theine Plateau/the Valkurm Dunes/Jugner Forest/the Batallia Downs/North Gustaberg/South Gustaberg/the Konschtat Highlands/the Pashhow Marshlands/the Rolanberry Fields/Beaucedine Glacier/Xarcabard/West Sarutabaruta/East Sarutabaruta/the Tahrongi Canyon/the Buburimu Peninsula/the Meriphataud Mountains/the Sauromugue Champaign/Qufim Island/Behemoth''s Dominion/Cape Teriggan/the Eastern Altepa Desert/the Sanctuary of Zi''Tah/Ro''Maeve/the Yuhtunga Jungle/the Yhoator Jungle/the Western Altepa Desert/the Valley of Sorrows]!
        ALL_MOG_TABLETS_FOUND         = 209,   -- The complete set of mog tablets has been restored to RuLude Gardens! The ancient magic of King Kupofried permeates the air to instill adventurers in this area with its Super Kupowers!
        FIND_THE_MOG_TABLETS          = 210,   -- The strength of the ancient moogle magic has weakened, and the tablets have been scattered to the winds once more. You can feel your Super Kupowers begin to fade away...
        NOTHING_HAPPENS               = 327,   -- Nothing happens...
        ITEM_CANNOT_BE_OBTAINED       = 6592,  -- You cannot obtain the <item>. Come back after sorting your inventory.
        ITEM_OBTAINED                 = 6598,  -- Obtained: <item>.
        GIL_OBTAINED                  = 6599,  -- Obtained <number> gil.
        KEYITEM_OBTAINED              = 6601,  -- Obtained key item: <keyitem>.
        KEYITEM_LOST                  = 6602,  -- Lost key item: <keyitem>.
        NOT_HAVE_ENOUGH_GIL           = 6603,  -- You do not have enough gil.
        REPORT_TO_CAIT_SITH           = 6628,  -- You have obtained all of Lilisette's memory fragments. Make haste and report to Cait Sith.
        CARRIED_OVER_POINTS           = 6637,  -- You have carried over <number> login point[/s].
        LOGIN_CAMPAIGN_UNDERWAY       = 6638,  -- The [/January/February/March/April/May/June/July/August/September/October/November/December] <number> Login Campaign is currently underway!
        LOGIN_NUMBER                  = 6639,  -- In celebration of your most recent login (login no. <number>), we have provided you with <number> points! You currently have a total of <number> points.
        MEMBERS_LEVELS_ARE_RESTRICTED = 6659,  -- Your party is unable to participate because certain members' levels are restricted.
        YOU_LEARNED_TRUST             = 6661,  -- You learned Trust: <name>!
        CALL_MULTIPLE_ALTER_EGO       = 6662,  -- You are now able to call multiple alter egos.
        MOG_LOCKER_OFFSET             = 6850,  -- Your Mog Locker lease is valid until <timestamp>, kupo.
        IMAGE_SUPPORT                 = 6988,  -- Your [fishing/woodworking/smithing/goldsmithing/clothcraft/leatherworking/bonecraft/alchemy/cooking] skills went up [a little/ever so slightly/ever so slightly].
        GUILD_TERMINATE_CONTRACT      = 7002,  -- You have terminated your trading contract with the [Fishermen's/Carpenters'/Blacksmiths'/Goldsmiths'/Weavers'/Tanners'/Boneworkers'/Alchemists'/Culinarians'] Guild and formed a new one with the [Fishermen's/Carpenters'/Blacksmiths'/Goldsmiths'/Weavers'/Tanners'/Boneworkers'/Alchemists'/Culinarians'] Guild.
        GUILD_NEW_CONTRACT            = 7010,  -- You have formed a new trading contract with the [Fishermen's/Carpenters'/Blacksmiths'/Goldsmiths'/Weavers'/Tanners'/Boneworkers'/Alchemists'/Culinarians'] Guild.
        NO_MORE_GP_ELIGIBLE           = 7017,  -- You are not eligible to receive guild points at this time.
        GP_OBTAINED                   = 7022,  -- Obtained: <number> guild points.
        NOT_HAVE_ENOUGH_GP            = 7023,  -- You do not have enough guild points.
        RENOUNCE_CRAFTSMAN            = 7039,  -- You have successfully renounced your status as a [craftsman/artisan/adept] of the [Carpenters'/Blacksmiths'/Goldsmiths'/Weavers'/Tanners'/Boneworkers'/Alchemists'/Culinarians'] Guild.
        CONQUEST_BASE                 = 7293,  -- Tallying conquest results...
        FISHING_MESSAGE_OFFSET        = 7452,  -- You can't fish here.
        REGIME_CANCELED               = 8003,  -- Current training regime canceled.
        HUNT_ACCEPTED                 = 8021,  -- Hunt accepted!
        USE_SCYLDS                    = 8022,  -- You use <number> [scyld/scylds]. Scyld balance: <number>.
        HUNT_RECORDED                 = 8033,  -- You record your hunt.
        OBTAIN_SCYLDS                 = 8035,  -- You obtain <number> [scyld/scylds]! Current balance: <number> [scyld/scylds].
        HUNT_CANCELED                 = 8039,  -- Hunt canceled.
        WHAT_DO_YOU_WANT              = 11167, -- What do you want?
        FFR_GUILBERDRIER              = 11180, -- A magic shop, you say? A bit of magic would come in handy... I know! I'll have my daughter study it for me!
        YOU_DONATE_GIL                = 11189, -- You donate 10 gil.
        AILBECHE_FATHER_WHERE         = 11206, -- Oh, Father! Where are you?
        ABIOLEGET_DIALOG              = 11256, -- All of Altana's children are welcome here.
        PELLIMIE_DIALOG               = 11257, -- Is this your first time here? Join us in prayer!
        FITTESEGAT_DIALOG             = 11258, -- Paradise is a place without fear, without death!
        MAURINE_DIALOG                = 11259, -- Papsque Shamonde sometimes addresses the city from the balcony, you know. I long for his blessing, if but once!
        PRERIVON_DIALOG               = 11260, -- With each sermon, I take another step closer to Paradise.
        MALFINE_DIALOG                = 11261, -- Truly fortunate are we that words of sacrament are read every day!
        COULLENE_DIALOG               = 11262, -- Goddess above, deliver us to Paradise!
        WILL_PROVIDE_PITTANCE         = 11278, -- I will provide you with <item> for a pittance of <number> gil.
        OLBERGIEUT_DIALOG             = 11304, -- Friar Faurbellant is on retreat at the Crag of Holla. Please give <item> to him.
        ABEAULE_DIALOG_HOME           = 11360, -- Amaura makes her home on Watchdog Alley. If you can't find her, ask someone along the way. I'll be waiting here!
        ABEAULE_DIALOG_THANKS         = 11362, -- You've been a great help, again. I don't know how to thank you!
        GUILERME_DIALOG               = 11376, -- Behold Chateau d'Oraguille, the greatest fortress in the realm!
        PHAVIANE_DIALOG               = 11380, -- This is Victory Arch. Beyond lies Southern San d'Oria.
        SOCHIENE_DIALOG               = 11381, -- You stand before Victory Arch. Southern San d'Oria is on the other side.
        PEPIGORT_DIALOG               = 11382, -- This gate leads to Port San d'Oria.
        RODAILLECE_DIALOG             = 11383, -- This is Ranperre Gate. Fiends lurk in the lands beyond, so take caution!
        GALAHAD_DIALOG                = 11396, -- Welcome to the Consulate of Jeuno. I am Galahad, Consul to San d'Oria.
        ISHWAR_DIALOG                 = 11397, -- May I assist you?
        ARIENH_DIALOG                 = 11398, -- If you have business with Consul Galahad, you'll find him inside.
        EMILIA_DIALOG                 = 11399, -- Welcome to the Consulate of Jeuno.
        HERE_WITH_BUSINESS            = 11403, -- You're here with business from the administration, correct? I believe you should talk to Consul Helaku.
        HELAKU_DIALOG                 = 11428, -- Leave this building, and you'll see a great fortress to the right. That's Chateau d'Oraguille. And be polite; San d'Orians can be quite touchy.
        KASARORO_DIALOG               = 11467, -- Step right outside, and you'll see a big castle on the left. That's Chateau d'Oraguille. They're a little touchy in there, so mind your manners!
        PICKPOCKET_AUREGE             = 11496, -- A pickpocket, you say? Come to think of it, I did see a scoundrel skulking about...
        PICKPOCKET_GUILBERDRIER       = 11498, -- A pickpocket? No, can't say I've seen anyone like that. I'll keep an eye out, though.
        PICKPOCKET_PEPIGORT           = 11502, -- A pickpocket? Hey, I wonder if you mean that lady running helter-skelter over there just now...
        PICKPOCKET_GILIPESE           = 11503, -- A pickpocket? I did just see an undignified sort of woman just now. She was running toward Ranperre Gate.
        MAURINNE_DIALOG               = 11504, -- This part of town is so lively, I like watching everybody just go about their business.
        PICKPOCKET_MAURINNE           = 11505, -- A pickpocket?
        PICKPOCKET_RODAILLECE         = 11507, -- A pickpocket? Maybe it was that foul-mouthed woman just now. She called me a spoony bard! Unthinkable!
        AIVEDOIR_DIALOG               = 11538, -- That's funny. I could have sworn she asked me to meet her here...
        CAPIRIA_DIALOG                = 11539, -- He's late! I do hope he hasn't forgotten.
        BERTENONT_DIALOG              = 11540, -- Stars are more beautiful up close. Don't you agree?
        GILIPESE_DIALOG               = 11561, -- Nothing to report!
        DOGGOMEHR_SHOP_DIALOG         = 11574, -- Welcome to the Blacksmiths' Guild shop.
        LUCRETIA_SHOP_DIALOG          = 11575, -- Blacksmiths' Guild shop, at your service!
        CAUZERISTE_SHOP_DIALOG        = 11642, -- Welcome! San d'Oria Carpenters' Guild shop, at your service.
        THE_EMISSARY_PLACEHOLDER      = 11649, -- I'm glad you brought a letter of introduction, but you haven't finished your duty to Consul Melek yet. You'll need to come back once that's out of the way.
        ANTONIAN_OPEN_DIALOG          = 11657, -- Interested in goods from Aragoneu?
        BONCORT_SHOP_DIALOG           = 11658, -- Welcome to the Phoenix Perch!
        PIRVIDIAUCE_SHOP_DIALOG       = 11659, -- Care to see what I have?
        PALGUEVION_OPEN_DIALOG        = 11660, -- I've got a shipment straight from Valdeaunia!
        VICHUEL_OPEN_DIALOG           = 11661, -- Fauregandi produce for sale!
        ARLENNE_SHOP_DIALOG           = 11662, -- Welcome to the Royal Armory!
        TAVOURINE_SHOP_DIALOG         = 11663, -- Looking for a weapon? We've got many in stock!
        JUSTI_SHOP_DIALOG             = 11665, -- Hello!
        ANTONIAN_CLOSED_DIALOG        = 11667, -- The Kingdom's influence is waning in Aragoneu. I cannot import goods from that region, though I long to.
        PALGUEVION_CLOSED_DIALOG      = 11668, -- Would that Valdeaunia came again under San d'Orian dominion, I could then import its goods!
        VICHUEL_CLOSED_DIALOG         = 11669, -- I'd make a killing selling Fauregandi produce here, but that region's not under San d'Orian control!
        ATTARENA_CLOSED_DIALOG        = 11670, -- Once all of Li'Telor is back under San d'Orian influence, I'll fill my stock with unique goods from there!
        EUGBALLION_CLOSED_DIALOG      = 11671, -- I'd be making a fortune selling goods from Qufim Island...if it were only under San d'Orian control!
        EUGBALLION_OPEN_DIALOG        = 11672, -- Have a look at these goods imported direct from Qufim Island!
        CHAUPIRE_SHOP_DIALOG          = 11673, -- San d'Orian woodcraft is the finest in the land!
        CONQUEST                      = 11739, -- You've earned conquest points!
        FFR_BONCORT                   = 12086, -- Hmm... With magic, I could get hold of materials a mite easier. I'll have to check this mart out.
        FFR_CAPIRIA                   = 12087, -- A flyer? For me? Some reading material would be a welcome change of pace, indeed!
        FFR_VILLION                   = 12088, -- Opening a shop of magic, without consulting me first? I must pay this Regine a visit!
        FFR_COULLENE                  = 12089, -- Magic could be of use on my journey to Paradise. Thank you so much!
        FLYER_ACCEPTED                = 12090, -- Your flyer is accepted!
        FLYER_ALREADY                 = 12091, -- This person already has a flyer.
        MOGHOUSE_EXIT                 = 12390, -- You have learned your way through the back alleys of San d'Oria! Now you can exit to any area from your residence.
        AILBECHE_WHEN_FISHING         = 12410, -- Oh, when will my father take me fishing...
        OH_I_WANT_MY_ITEM             = 12649, -- Oh, I want my <item>.
        GAUDYLOX_SHOP_DIALOG          = 12650, -- <Phssshooooowoooo> You never see Goblinshhh from underworld? Me no bad. Me sell chipshhh. You buy. Use with shhhtone heart. You get lucky!
        MILLECHUCA_CLOSED_DIALOG      = 12651, -- I've been trying to import goods from Vollbow, but it's so hard to get items from areas that aren't under San d'Orian control.
        ATTARENA_OPEN_DIALOG          = 12736, -- Good day! Take a look at my selection from Li'Telor!
        MILLECHUCA_OPEN_DIALOG        = 12737, -- Specialty goods from Vollbow! Specialty goods from Vollbow!
        SHIVA_UNLOCKED                = 12838, -- You are now able to summon [Ifrit/Titan/Leviathan/Garuda/Shiva/Ramuh].
        ARACHAGNON_SHOP_DIALOG        = 12945, -- Would you be interested in purchasing some adventurer-issue armor? Be careful when selecting, as we accept no refunds.
        TRICK_OR_TREAT                = 13088, -- Trick or treat...
        THANK_YOU_TREAT               = 13089, -- Thank you... And now for your treat...
        HERE_TAKE_THIS                = 13090, -- Here, take this...
        IF_YOU_WEAR_THIS              = 13091, -- If you put this on and walk around, something...unexpected might happen...
        THANK_YOU                     = 13092, -- Thank you...
        EGG_HUNT_OFFSET               = 13127, -- Egg-cellent! Here's your prize, kupo! Now if only somebody would bring me a super combo... Oh, egg-scuse me! Forget I said that, kupo!
        FFR_LOOKS_CURIOUSLY_BASE      = 13416, -- Coullene looks over curiously for a moment.
        FRAGMENT_FAR_TOO_SMALL        = 18124, -- You obtain <keyitem>. However, it is far too small to house an adequate amount of energy. Alone, it serves no purpose.
        FRAGMENTS_MELD                = 18125, -- The tiny fragments of Lilisette's memory meld together to form <keyitem>!
        RETRIEVE_DIALOG_ID            = 18160, -- You retrieve <item> from the porter moogle's care.
        COMMON_SENSE_SURVIVAL         = 18506, -- It appears that you have arrived at a new survival guide provided by the Adventurers' Mutual Aid Network. Common sense dictates that you should now be able to teleport here from similar tomes throughout the world.
        MAP_MARKER_TUTORIAL           = 18628, -- Selecting Map from the main menu opens the map of the area in which you currently reside. Select Markers and press the right arrow key to see all the markers placed on your map.
    },
    mob =
    {
    },
    npc =
    {
        HALLOWEEN_SKINS =
        {
            [17723487] = 53, -- Vichuel
            [17723492] = 52, -- Antonian
            [17723497] = 51, -- Attarena
        },
        EXPLORER_MOOGLE = GetFirstID('Explorer_Moogle'),
    },
}

return zones[xi.zone.NORTHERN_SAN_DORIA]
