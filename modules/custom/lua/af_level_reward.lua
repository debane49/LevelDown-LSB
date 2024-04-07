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

    [160] =    {combo = 160, id = xi.item.FIGHTERS_LORICA},                     -- 12638, 60,
    [154] =    {combo = 154, id = xi.item.FIGHTERS_MUFFLERS},                   -- 13961, 54,
    [152] =    {combo = 152, id = xi.item.FIGHTERS_CALLIGAE},                   -- 14089, 52,
    [158] =    {combo = 158, id = xi.item.FIGHTERS_CUISSES},                    -- 14214, 58,
    [156] =    {combo = 156, id = xi.item.FIGHTERS_MASK},                       -- 12511, 56,
    [258] =    {combo = 258, id = xi.item.TEMPLE_CYCLAS},                       -- 12639, 58,
    [254] =    {combo = 254, id = xi.item.TEMPLE_GLOVES},                       -- 13962, 54,
    [252] =    {combo = 252, id = xi.item.TEMPLE_GAITERS},                      -- 14090, 52,
    [260] =    {combo = 260, id = xi.item.TEMPLE_HOSE},                         -- 14215, 60,
    [256] =    {combo = 256, id = xi.item.TEMPLE_CROWN},                        -- 12512, 56,
    [358] =    {combo = 358, id = xi.item.HEALERS_BRIAULT},                     -- 12640, 58,
    [360] =    {combo = 360, id = xi.item.HEALERS_MITTS},                       -- 13963, 60,
    [352] =    {combo = 352, id = xi.item.HEALERS_DUCKBILLS},                   -- 14091, 52,
    [356] =    {combo = 356, id = xi.item.HEALERS_PANTALOONS},                  -- 14216, 56,
    [354] =    {combo = 354, id = xi.item.HEALERS_CAP},                         -- 13855, 54,
    [458] =    {combo = 458, id = xi.item.WIZARDS_COAT},                        -- 12641, 58,
    [454] =    {combo = 454, id = xi.item.WIZARDS_GLOVES},                      -- 13964, 54,
    [452] =    {combo = 452, id = xi.item.WIZARDS_SABOTS},                      -- 14092, 52,
    [456] =    {combo = 456, id = xi.item.WIZARDS_TONBAN},                      -- 14217, 56,
    [460] =    {combo = 460, id = xi.item.WIZARDS_PETASOS},                     -- 13856, 60,
    [558] =    {combo = 558, id = xi.item.WARLOCKS_TABARD},                     -- 12642, 58,
    [552] =    {combo = 552, id = xi.item.WARLOCKS_BOOTS},                      -- 14093, 52,
    [556] =    {combo = 556, id = xi.item.WARLOCKS_TIGHTS},                     -- 14218, 56,
    [560] =    {combo = 560, id = xi.item.WARLOCKS_CHAPEAU},                    -- 12513, 60,
    [554] =    {combo = 554, id = xi.item.WARLOCKS_GLOVES},                     -- 13965, 54,
    [658] =    {combo = 658, id = xi.item.ROGUES_VEST},                         -- 12643, 58,
    [652] =    {combo = 652, id = xi.item.ROGUES_ARMLETS},                      -- 13966, 52,
    [660] =    {combo = 660, id = xi.item.ROGUES_POULAINES},                    -- 14094, 60,
    [656] =    {combo = 656, id = xi.item.ROGUES_CULOTTES},                     -- 14219, 56,
    [654] =    {combo = 654, id = xi.item.ROGUES_BONNET},                       -- 12514, 54,
    [760] =    {combo = 760, id = xi.item.GALLANT_SURCOAT},                     -- 12644, 60,
    [754] =    {combo = 754, id = xi.item.GALLANT_GAUNTLETS},                   -- 13967, 54,
    [752] =    {combo = 752, id = xi.item.GALLANT_LEGGINGS},                    -- 14095, 52,
    [758] =    {combo = 758, id = xi.item.GALLANT_BREECHES},                    -- 14220, 58,
    [756] =    {combo = 756, id = xi.item.GALLANT_CORONET},                     -- 12515, 56,
    [858] =    {combo = 858, id = xi.item.CHAOS_CUIRASS},                       -- 12645, 58,
    [854] =    {combo = 854, id = xi.item.CHAOS_GAUNTLETS},                     -- 13968, 54,
    [852] =    {combo = 852, id = xi.item.CHAOS_SOLLERETS},                     -- 14096, 52,
    [856] =    {combo = 856, id = xi.item.CHAOS_FLANCHARD},                     -- 14221, 56,
    [860] =    {combo = 860, id = xi.item.CHAOS_BURGEONET},                     -- 12516, 60,
    [958] =    {combo = 958, id = xi.item.BEAST_JACKCOAT},                      -- 12646, 58,
    [954] =    {combo = 954, id = xi.item.BEAST_GLOVES},                        -- 13969, 54,
    [952] =    {combo = 952, id = xi.item.BEAST_GAITERS},                       -- 14097, 52,
    [960] =    {combo = 960, id = xi.item.BEAST_TROUSERS},                      -- 14222, 60,
    [956] =    {combo = 956, id = xi.item.BEAST_HELM},                          -- 12517, 56,
    [1058] =    {combo = 1058, id = xi.item.CHORAL_JUSTAUCORPS},                  -- 12647, 58,
    [1054] =    {combo = 1054, id = xi.item.CHORAL_ROUNDLET},                     -- 13857, 54,
    [1060] =    {combo = 1060, id = xi.item.CHORAL_CUFFS},                        -- 13970, 60,
    [1052] =    {combo = 1052, id = xi.item.CHORAL_SLIPPERS},                     -- 14098, 52,
    [1056] =    {combo = 1056, id = xi.item.CHORAL_CANNIONS},                     -- 14223, 56,
    [1158] =    {combo = 1158, id = xi.item.HUNTERS_JERKIN},                      -- 12648, 58,
    [1152] =    {combo = 1152, id = xi.item.HUNTERS_BRACERS},                     -- 13971, 52,
    [1160] =    {combo = 1160, id = xi.item.HUNTERS_SOCKS},                       -- 14099, 60,
    [1156] =    {combo = 1156, id = xi.item.HUNTERS_BRACCAE},                     -- 14224, 56,
    [1154] =    {combo = 1154, id = xi.item.HUNTERS_BERET},                       -- 12518, 54,
    [1260] =    {combo = 1260, id = xi.item.MYOCHIN_KABUTO},                      -- 13868, 60,
    [1256] =    {combo = 1256, id = xi.item.MYOCHIN_KOTE},                        -- 13972, 56,
    [1252] =    {combo = 1252, id = xi.item.MYOCHIN_SUNE_ATE},                    -- 14100, 52,
    [1254] =    {combo = 1254, id = xi.item.MYOCHIN_HAIDATE},                     -- 14225, 54,
    [1258] =    {combo = 1258, id = xi.item.MYOCHIN_DOMARU},                      -- 13781, 58,
    [1356] =    {combo = 1356, id = xi.item.NINJA_HATSUBURI},                     -- 13869, 56,
    [1360] =    {combo = 1360, id = xi.item.NINJA_TEKKO},                         -- 13973, 60,
    [1354] =    {combo = 1354, id = xi.item.NINJA_KYAHAN},                        -- 14101, 54,
    [1352] =    {combo = 1352, id = xi.item.NINJA_HAKAMA},                        -- 14226, 52,
    [1358] =    {combo = 1358, id = xi.item.NINJA_CHAINMAIL},                     -- 13782, 58,
    [1458] =    {combo = 1458, id = xi.item.DRACHEN_MAIL},                        -- 12649, 58,
    [1456] =    {combo = 1456, id = xi.item.DRACHEN_FINGER_GAUNTLETS},            -- 13974, 56,
    [1454] =    {combo = 1454, id = xi.item.DRACHEN_GREAVES},                     -- 14102, 54,
    [1452] =    {combo = 1452, id = xi.item.DRACHEN_BRAIS},                       -- 14227, 52,
    [1460] =    {combo = 1460, id = xi.item.DRACHEN_ARMET},                       -- 12519, 60,
    [1558] =    {combo = 1558, id = xi.item.EVOKERS_DOUBLET},                     -- 12650, 58,
    [1554] =    {combo = 1554, id = xi.item.EVOKERS_BRACERS},                     -- 13975, 54,
    [1556] =    {combo = 1556, id = xi.item.EVOKERS_PIGACHES},                    -- 14103, 56,
    [1552] =    {combo = 1552, id = xi.item.EVOKERS_SPATS},                       -- 14228, 52,
    [1560] =    {combo = 1560, id = xi.item.EVOKERS_HORN},                        -- 12520, 60,
    [1656] =    {combo = 1656, id = xi.item.MAGUS_BAZUBANDS},                     -- 14928, 56,
    [1660] =    {combo = 1660, id = xi.item.MAGUS_KEFFIYEH},                      -- 15265, 60,
    [1654] =    {combo = 1654, id = xi.item.MAGUS_SHALWAR},                       -- 15600, 54,
    [1652] =    {combo = 1652, id = xi.item.MAGUS_CHARUQS},                       -- 15684, 52,
    [1658] =    {combo = 1658, id = xi.item.MAGUS_JUBBAH},                        -- 14521, 58,
    [1858] =    {combo = 1858, id = xi.item.PUPPETRY_TOBE},                       -- 14523, 58,
    [1856] =    {combo = 1856, id = xi.item.PUPPETRY_DASTANAS},                   -- 14930, 56,
    [1860] =    {combo = 1860, id = xi.item.PUPPETRY_TAJ},                        -- 15267, 60,
    [1852] =    {combo = 1852, id = xi.item.PUPPETRY_CHURIDARS},                  -- 15602, 52,
    [1854] =    {combo = 1854, id = xi.item.PUPPETRY_BABOUCHES},                  -- 15686, 54,
    [1756] =    {combo = 1756, id = xi.item.CORSAIRS_BOTTES},                     -- 15685, 56,
    [1758] =    {combo = 1758, id = xi.item.CORSAIRS_FRAC},                       -- 14522, 58,
    [1754] =    {combo = 1754, id = xi.item.CORSAIRS_GANTS},                      -- 14929, 54,
    [1752] =    {combo = 1752, id = xi.item.CORSAIRS_CULOTTES},                   -- 15601, 52,
    [1760] =    {combo = 1760, id = xi.item.CORSAIRS_TRICORNE},                   -- 15266, 60,
    [2054] =    {combo = 2054, id = xi.item.SCHOLARS_LOAFERS},                    -- 15748, 54,
    [2056] =    {combo = 2056, id = xi.item.SCHOLARS_PANTS},                      -- 16311, 56,
    [2052] =    {combo = 2052, id = xi.item.SCHOLARS_BRACERS},                    -- 15004, 52,
    [2058] =    {combo = 2058, id = xi.item.SCHOLARS_GOWN},                       -- 14580, 58,
    [2060] =    {combo = 2060, id = xi.item.SCHOLARS_MORTARBOARD},                -- 16140, 60,
    [1970] =    {combo = 1970, id = xi.item.DANCERS_CASAQUE_M},                   -- 14578, 60,
    [1966] =    {combo = 1966, id = xi.item.DANCERS_TOE_SHOES_M},                 -- 15746, 56,
    [1964] =    {combo = 1964, id = xi.item.DANCERS_TIARA_M},                     -- 16138, 54,
    [1962] =    {combo = 1962, id = xi.item.DANCERS_BANGLES_M},                   -- 15002, 52,
    [1968] =    {combo = 1968, id = xi.item.DANCERS_TIGHTS_M},                    -- 15659, 58,
    [1952] =    {combo = 1952, id = xi.item.DANCERS_BANGLES_F},                   -- 15003, 52,
    [1960] =    {combo = 1960, id = xi.item.DANCERS_CASAQUE_F},                   -- 14579, 60,
    [1956] =    {combo = 1956, id = xi.item.DANCERS_TOE_SHOES_F},                 -- 15747, 56,
    [1954] =    {combo = 1954, id = xi.item.DANCERS_TIARA_F},                     -- 16139, 54,
    [1958] =    {combo = 1958, id = xi.item.DANCERS_TIGHTS_F},                    -- 15660, 58,

}

m:addOverride('xi.player.onPlayerLevelUp', function(player, option, id)
    local levelMilestones = player:getMainLvl()
    local gender = player:getGender()                        -- Female: 0, Male: 1
    local job = player:getMainJob()
    local jafl = job * 100 + levelMilestones
    local afRew = afarmorTable

        for k, v in pairs(afarmorTable) do
            if job == 19 then
                if gender == 1 and v.combo == jafl then
               player:printToPlayer(string.format('%s has obtained Artifact Armor as a reward for achieving Level %s.',player:getName(),levelMilestones ))
	           player:addItem(afRew[jafl + 10], id)
               player:capAllSkills()
               return
               elseif gender == 0 and v.combo == jafl then
               player:printToPlayer(string.format('%s has obtained Artifact Armor as a reward for achieving Level %s.',player:getName(),levelMilestones ))
	           player:addItem(afRew[jafl], id)
               player:capAllSkills()
               return end

            end
                if job ~= 19 and v.combo == jafl then
               player:printToPlayer(string.format('%s has obtained Artifact Armor as a reward for achieving Level %s.',player:getName(),levelMilestones ))
	           player:addItem(afRew[jafl], id)
               player:capAllSkills()
               return
		    end
	    end

    super(player)
end)
return m
