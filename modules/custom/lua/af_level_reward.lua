-----------------------------------
-- AF Reward
-----------------------------------
require('modules/module_utils')
require('scripts/globals/mobs')
require('scripts/globals/player')
require('scripts/enum/job_names')
-----------------------------------
local m = Module:new('af level reward')

local afarmorTable = {

    [ 160] =    {combo =  160, id = xi.item.FIGHTERS_LORICA,          afitem = 12638}, -- 12638, 60,
    [ 154] =    {combo =  154, id = xi.item.FIGHTERS_MUFFLERS,        afitem = 13961}, -- 13961, 54,
    [ 152] =    {combo =  152, id = xi.item.FIGHTERS_CALLIGAE,        afitem = 14089}, -- 14089, 52,
    [ 158] =    {combo =  158, id = xi.item.FIGHTERS_CUISSES,         afitem = 14214}, -- 14214, 58,
    [ 156] =    {combo =  156, id = xi.item.FIGHTERS_MASK,            afitem = 12511}, -- 12511, 56,
    [ 258] =    {combo =  258, id = xi.item.TEMPLE_CYCLAS,            afitem = 12639}, -- 12639, 58,
    [ 254] =    {combo =  254, id = xi.item.TEMPLE_GLOVES,            afitem = 13962}, -- 13962, 54,
    [ 252] =    {combo =  252, id = xi.item.TEMPLE_GAITERS,           afitem = 14090}, -- 14090, 52,
    [ 260] =    {combo =  260, id = xi.item.TEMPLE_HOSE,              afitem = 14215}, -- 14215, 60,
    [ 256] =    {combo =  256, id = xi.item.TEMPLE_CROWN,             afitem = 12512}, -- 12512, 56,
    [ 358] =    {combo =  358, id = xi.item.HEALERS_BRIAULT,          afitem = 12640}, -- 12640, 58,
    [ 360] =    {combo =  360, id = xi.item.HEALERS_MITTS,            afitem = 13963}, -- 13963, 60,
    [ 352] =    {combo =  352, id = xi.item.HEALERS_DUCKBILLS,        afitem = 14091}, -- 14091, 52,
    [ 356] =    {combo =  356, id = xi.item.HEALERS_PANTALOONS,       afitem = 14216}, -- 14216, 56,
    [ 354] =    {combo =  354, id = xi.item.HEALERS_CAP,              afitem = 13855}, -- 13855, 54,
    [ 458] =    {combo =  458, id = xi.item.WIZARDS_COAT,             afitem = 12641}, -- 12641, 58,
    [ 454] =    {combo =  454, id = xi.item.WIZARDS_GLOVES,           afitem = 13964}, -- 13964, 54,
    [ 452] =    {combo =  452, id = xi.item.WIZARDS_SABOTS,           afitem = 14092}, -- 14092, 52,
    [ 456] =    {combo =  456, id = xi.item.WIZARDS_TONBAN,           afitem = 14217}, -- 14217, 56,
    [ 460] =    {combo =  460, id = xi.item.WIZARDS_PETASOS,          afitem = 13856}, -- 13856, 60,
    [ 558] =    {combo =  558, id = xi.item.WARLOCKS_TABARD,          afitem = 12642}, -- 12642, 58,
    [ 552] =    {combo =  552, id = xi.item.WARLOCKS_BOOTS,           afitem = 14093}, -- 14093, 52,
    [ 556] =    {combo =  556, id = xi.item.WARLOCKS_TIGHTS,          afitem = 14218}, -- 14218, 56,
    [ 560] =    {combo =  560, id = xi.item.WARLOCKS_CHAPEAU,         afitem = 12513}, -- 12513, 60,
    [ 554] =    {combo =  554, id = xi.item.WARLOCKS_GLOVES,          afitem = 13965}, -- 13965, 54,
    [ 658] =    {combo =  658, id = xi.item.ROGUES_VEST,              afitem = 12643}, -- 12643, 58,
    [ 652] =    {combo =  652, id = xi.item.ROGUES_ARMLETS,           afitem = 13966}, -- 13966, 52,
    [ 660] =    {combo =  660, id = xi.item.ROGUES_POULAINES,         afitem = 14094}, -- 14094, 60,
    [ 656] =    {combo =  656, id = xi.item.ROGUES_CULOTTES,          afitem = 14219}, -- 14219, 56,
    [ 654] =    {combo =  654, id = xi.item.ROGUES_BONNET,            afitem = 12514}, -- 12514, 54,
    [ 760] =    {combo =  760, id = xi.item.GALLANT_SURCOAT,          afitem = 12644}, -- 12644, 60,
    [ 754] =    {combo =  754, id = xi.item.GALLANT_GAUNTLETS,        afitem = 13967}, -- 13967, 54,
    [ 752] =    {combo =  752, id = xi.item.GALLANT_LEGGINGS,         afitem = 14095}, -- 14095, 52,
    [ 758] =    {combo =  758, id = xi.item.GALLANT_BREECHES,         afitem = 14220}, -- 14220, 58,
    [ 756] =    {combo =  756, id = xi.item.GALLANT_CORONET,          afitem = 12515}, -- 12515, 56,
    [ 858] =    {combo =  858, id = xi.item.CHAOS_CUIRASS,            afitem = 12645}, -- 12645, 58,
    [ 854] =    {combo =  854, id = xi.item.CHAOS_GAUNTLETS,          afitem = 13968}, -- 13968, 54,
    [ 852] =    {combo =  852, id = xi.item.CHAOS_SOLLERETS,          afitem = 14096}, -- 14096, 52,
    [ 856] =    {combo =  856, id = xi.item.CHAOS_FLANCHARD,          afitem = 14221}, -- 14221, 56,
    [ 860] =    {combo =  860, id = xi.item.CHAOS_BURGEONET,          afitem = 12516}, -- 12516, 60,
    [ 958] =    {combo =  958, id = xi.item.BEAST_JACKCOAT,           afitem = 12646}, -- 12646, 58,
    [ 954] =    {combo =  954, id = xi.item.BEAST_GLOVES,             afitem = 13969}, -- 13969, 54,
    [ 952] =    {combo =  952, id = xi.item.BEAST_GAITERS,            afitem = 14097}, -- 14097, 52,
    [ 960] =    {combo =  960, id = xi.item.BEAST_TROUSERS,           afitem = 14222}, -- 14222, 60,
    [ 956] =    {combo =  956, id = xi.item.BEAST_HELM,               afitem = 12517}, -- 12517, 56,
    [1058] =    {combo = 1058, id = xi.item.CHORAL_JUSTAUCORPS,       afitem = 12647}, -- 12647, 58,
    [1054] =    {combo = 1054, id = xi.item.CHORAL_ROUNDLET,          afitem = 13857}, -- 13857, 54,
    [1060] =    {combo = 1060, id = xi.item.CHORAL_CUFFS,             afitem = 13970}, -- 13970, 60,
    [1052] =    {combo = 1052, id = xi.item.CHORAL_SLIPPERS,          afitem = 14098}, -- 14098, 52,
    [1056] =    {combo = 1056, id = xi.item.CHORAL_CANNIONS,          afitem = 14223}, -- 14223, 56,
    [1158] =    {combo = 1158, id = xi.item.HUNTERS_JERKIN,           afitem = 12648}, -- 12648, 58,
    [1152] =    {combo = 1152, id = xi.item.HUNTERS_BRACERS,          afitem = 13971}, -- 13971, 52,
    [1160] =    {combo = 1160, id = xi.item.HUNTERS_SOCKS,            afitem = 14099}, -- 14099, 60,
    [1156] =    {combo = 1156, id = xi.item.HUNTERS_BRACCAE,          afitem = 14224}, -- 14224, 56,
    [1154] =    {combo = 1154, id = xi.item.HUNTERS_BERET,            afitem = 12518}, -- 12518, 54,
    [1260] =    {combo = 1260, id = xi.item.MYOCHIN_KABUTO,           afitem = 13868}, -- 13868, 60,
    [1256] =    {combo = 1256, id = xi.item.MYOCHIN_KOTE,             afitem = 13972}, -- 13972, 56,
    [1252] =    {combo = 1252, id = xi.item.MYOCHIN_SUNE_ATE,         afitem = 14100}, -- 14100, 52,
    [1254] =    {combo = 1254, id = xi.item.MYOCHIN_HAIDATE,          afitem = 14225}, -- 14225, 54,
    [1258] =    {combo = 1258, id = xi.item.MYOCHIN_DOMARU,           afitem = 13781}, -- 13781, 58,
    [1356] =    {combo = 1356, id = xi.item.NINJA_HATSUBURI,          afitem = 13869}, -- 13869, 56,
    [1360] =    {combo = 1360, id = xi.item.NINJA_TEKKO,              afitem = 13973}, -- 13973, 60,
    [1354] =    {combo = 1354, id = xi.item.NINJA_KYAHAN,             afitem = 14101}, -- 14101, 54,
    [1352] =    {combo = 1352, id = xi.item.NINJA_HAKAMA,             afitem = 14226}, -- 14226, 52,
    [1358] =    {combo = 1358, id = xi.item.NINJA_CHAINMAIL,          afitem = 13782}, -- 13782, 58,
    [1458] =    {combo = 1458, id = xi.item.DRACHEN_MAIL,             afitem = 12649}, -- 12649, 58,
    [1456] =    {combo = 1456, id = xi.item.DRACHEN_FINGER_GAUNTLETS, afitem = 13974}, -- 13974, 56,
    [1454] =    {combo = 1454, id = xi.item.DRACHEN_GREAVES,          afitem = 14102}, -- 14102, 54,
    [1452] =    {combo = 1452, id = xi.item.DRACHEN_BRAIS,            afitem = 14227}, -- 14227, 52,
    [1460] =    {combo = 1460, id = xi.item.DRACHEN_ARMET,            afitem = 12519}, -- 12519, 60,
    [1558] =    {combo = 1558, id = xi.item.EVOKERS_DOUBLET,          afitem = 12650}, -- 12650, 58,
    [1554] =    {combo = 1554, id = xi.item.EVOKERS_BRACERS,          afitem = 13975}, -- 13975, 54,
    [1556] =    {combo = 1556, id = xi.item.EVOKERS_PIGACHES,         afitem = 14103}, -- 14103, 56,
    [1552] =    {combo = 1552, id = xi.item.EVOKERS_SPATS,            afitem = 14228}, -- 14228, 52,
    [1560] =    {combo = 1560, id = xi.item.EVOKERS_HORN,             afitem = 12520}, -- 12520, 60,
    [1656] =    {combo = 1656, id = xi.item.MAGUS_BAZUBANDS,          afitem = 14928}, -- 14928, 56,
    [1660] =    {combo = 1660, id = xi.item.MAGUS_KEFFIYEH,           afitem = 15265}, -- 15265, 60,
    [1654] =    {combo = 1654, id = xi.item.MAGUS_SHALWAR,            afitem = 15600}, -- 15600, 54,
    [1652] =    {combo = 1652, id = xi.item.MAGUS_CHARUQS,            afitem = 15684}, -- 15684, 52,
    [1658] =    {combo = 1658, id = xi.item.MAGUS_JUBBAH,             afitem = 14521}, -- 14521, 58,
    [1858] =    {combo = 1858, id = xi.item.PUPPETRY_TOBE,            afitem = 14523}, -- 14523, 58,
    [1856] =    {combo = 1856, id = xi.item.PUPPETRY_DASTANAS,        afitem = 14930}, -- 14930, 56,
    [1860] =    {combo = 1860, id = xi.item.PUPPETRY_TAJ,             afitem = 15267}, -- 15267, 60,
    [1852] =    {combo = 1852, id = xi.item.PUPPETRY_CHURIDARS,       afitem = 15602}, -- 15602, 52,
    [1854] =    {combo = 1854, id = xi.item.PUPPETRY_BABOUCHES,       afitem = 15686}, -- 15686, 54,
    [1756] =    {combo = 1756, id = xi.item.CORSAIRS_BOTTES,          afitem = 15685}, -- 15685, 56,
    [1758] =    {combo = 1758, id = xi.item.CORSAIRS_FRAC,            afitem = 14522}, -- 14522, 58,
    [1754] =    {combo = 1754, id = xi.item.CORSAIRS_GANTS,           afitem = 14929}, -- 14929, 54,
    [1752] =    {combo = 1752, id = xi.item.CORSAIRS_CULOTTES,        afitem = 15601}, -- 15601, 52,
    [1760] =    {combo = 1760, id = xi.item.CORSAIRS_TRICORNE,        afitem = 15266}, -- 15266, 60,
    [2054] =    {combo = 2054, id = xi.item.SCHOLARS_LOAFERS,         afitem = 15748}, -- 15748, 54,
    [2056] =    {combo = 2056, id = xi.item.SCHOLARS_PANTS,           afitem = 16311}, -- 16311, 56,
    [2052] =    {combo = 2052, id = xi.item.SCHOLARS_BRACERS,         afitem = 15004}, -- 15004, 52,
    [2058] =    {combo = 2058, id = xi.item.SCHOLARS_GOWN,            afitem = 14580}, -- 14580, 58,
    [2060] =    {combo = 2060, id = xi.item.SCHOLARS_MORTARBOARD,     afitem = 16140}, -- 16140, 60,
    [1970] =    {combo = 1970, id = xi.item.DANCERS_CASAQUE_M,        afitem = 14578}, -- 14578, 60,
    [1966] =    {combo = 1966, id = xi.item.DANCERS_TOE_SHOES_M,      afitem = 15746}, -- 15746, 56,
    [1964] =    {combo = 1964, id = xi.item.DANCERS_TIARA_M,          afitem = 16138}, -- 16138, 54,
    [1962] =    {combo = 1962, id = xi.item.DANCERS_BANGLES_M,        afitem = 15002}, -- 15002, 52,
    [1968] =    {combo = 1968, id = xi.item.DANCERS_TIGHTS_M,         afitem = 15659}, -- 15659, 58,
    [1952] =    {combo = 1952, id = xi.item.DANCERS_BANGLES_F,        afitem = 15003}, -- 15003, 52,
    [1960] =    {combo = 1960, id = xi.item.DANCERS_CASAQUE_F,        afitem = 14579}, -- 14579, 60,
    [1956] =    {combo = 1956, id = xi.item.DANCERS_TOE_SHOES_F,      afitem = 15747}, -- 15747, 56,
    [1954] =    {combo = 1954, id = xi.item.DANCERS_TIARA_F,          afitem = 16139}, -- 16139, 54,
    [1958] =    {combo = 1958, id = xi.item.DANCERS_TIGHTS_F,         afitem = 15660}, -- 15660, 58,

}

m:addOverride('xi.player.onPlayerLevelUp', function(player, option, id)
    local levelMilestones = player:getJobLevel(player:getMainJob()) -- player:getMainLvl()
    local gender = player:getGender()                        -- Female: 0, Male: 1
    local job = player:getMainJob()
    local jafl = job * 100 + levelMilestones
    local afRew = afarmorTable
    local mlvl = player:getJobLevel(job)
    local sbjob = player:getSubJob()
    local slvl = player:getJobLevel(sbjob)
            player:capAllSkills()
    if slvl < 50 then
        if slvl < mlvl then
            if slvl >= mlvl - 5 then
               player:setsLevel(slvl + 1)
               player:printToPlayer(string.format('%s attains sublevel %s', player:getName() , slvl +1),xi.msg.channel.SYSTEM_3)
            end
        end
    end
        for k, v in pairs(afarmorTable) do
            if job == 19 then
                if gender == 1 and v.combo == jafl + 10 then -- male
                    if player:getFreeSlotsCount() < 1 then
                       player:printToPlayer('Your inventory is full and the armor has been sent to your delivery box!')
                       SendItemToDeliveryBox(player:getName(), v.afitem, 1,'LevelDown')
                       player:capAllSkills()
                       return
                    else
                       player:printToPlayer(string.format('%s has obtained Artifact Armor as a reward for achieving Level %s.',player:getName(),levelMilestones ))
	                   player:addItem(afRew[jafl + 10], id)
                       player:capAllSkills()
                    return
                    end
               elseif gender == 0 and v.combo == jafl then -- female
                    if player:getFreeSlotsCount() < 1 then
                       player:printToPlayer('Your inventory is full and the armor has been sent to your delivery box!')
                       SendItemToDeliveryBox(player:getName(), v.afitem, 1,'LevelDown')
                       player:capAllSkills()
                       return
                    else
                       player:printToPlayer(string.format('%s has obtained Artifact Armor as a reward for achieving Level %s.',player:getName(),levelMilestones ))
	                   player:addItem(afRew[jafl], id)
                       player:capAllSkills()
                    return
                    end
               end
            end
                if job ~= 19 and v.combo == jafl then
                    if player:getFreeSlotsCount() < 1 then
                       player:printToPlayer('Your inventory is full and the armor has been sent to your delivery box!')
                       SendItemToDeliveryBox(player:getName(), v.afitem, 1,'LevelDown')
                       player:capAllSkills()
                       return
                    else
                       player:printToPlayer(string.format('%s has obtained Artifact Armor as a reward for achieving Level %s.',player:getName(),levelMilestones ))
	                   player:addItem(afRew[jafl], id)
                       player:capAllSkills()
                       return
                    end
		        end
	    end
local buffOff = function(player)
    player:setCharVar('Buff', 0)
    player:setCharVar('BuffLvl', 0)
    player:setCharVar('BuffJob', 0)
    -- Remove bonus effects..
    player:delStatusEffect(xi.effect.REGAIN)
    player:delStatusEffect(xi.effect.DEDICATION)
    player:delStatusEffect(xi.effect.REFRESH)
    player:delStatusEffect(xi.effect.REGEN)
    -- Remove bonus mods..
    player:delMod(xi.mod.ATT, 50)
    player:delMod(xi.mod.RACC, 50)
    player:delMod(xi.mod.RATT, 50)
    player:delMod(xi.mod.ACC, 50)
    player:delMod(xi.mod.MATT, 50)
    player:delMod(xi.mod.MACC, 50)
    player:delMod(xi.mod.RDEF, 50)
    player:delMod(xi.mod.DEF, 50)
    player:delMod(xi.mod.MDEF, 50)
end

local buffOffCap = function(player)
    player:setCharVar('Buff', 0)
    player:setCharVar('BuffLvl', 0)
    player:setCharVar('BuffJob', 0)
    player:delStatusEffect(xi.effect.COMMITMENT)
end
                      if player:getCharVar('BuffLvl') < player:getMainLvl() and
                         player:getCharVar('Buff') == 1 then
                         player:setCharVar('BuffLvl', player:getMainLvl())
                      end
                      if player:getCharVar('BuffLvl') == 99 and
                         player:getCharVar('Buff') == 1 then
                                player:printToPlayer('Buff disabled.')
                                buffOff(player)
                      end
                      if player:getCharVar('BuffJob') ~= player:getMainJob() and
                         player:getCharVar('Buff') == 1 then
                                player:printToPlayer('Buff disabled.')
                                buffOff(player)
                      end
                      if player:getCharVar('BuffJob') ~= player:getMainJob() and
                         player:getCharVar('Buff') == 2 then
                                player:printToPlayer('Buff disabled.')
                                buffOffCap(player)
                      end



    super(player)
end)
return m
-- SendItemToDeliveryBox(target, itemId, amount,'LevelDown')
-- player:getFreeSlotsCount() < 1 then
-- player:printToPlayer('Please check your inventory and try again!', 0, 'Vesca')

-- player:printToPlayer(string.format('%s',player:getJobLevel(player:getMainJob())))