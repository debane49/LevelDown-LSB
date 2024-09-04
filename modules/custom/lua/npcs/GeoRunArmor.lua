-- provide a means to obtain geo / run reforged AF, Relic, Emp
-----------------------------------
require('modules/module_utils')
-----------------------------------
local m = Module:new('GeoRunArmor')

m:addOverride('xi.zones.Port_Jeuno.Zone.onInitialize', function(zone)
    super(zone)
    local Rezyn = zone:insertDynamicEntity({
        objtype = xi.objType.NPC,
        name = 'Rezyn',
        look = '01000f0234113421343134413451006000707180',
        x         = -4.1893,
        y         = 0.0010,
        z         = -10.5578,
        rotation = 189,
        widescan = 1,
   onTrade = function(player, npc, trade)
local GRArmorUpgrade =
{
-- AF to reforged stage 1 Geo
    [ 1] = { trade = { 13856, 1936, 1937, 1993, {1875, 25 }}, reward = 15228 }, -- wizards_petasos_+1
    [ 2] = { trade = { 12641, 1936, 1937, 1993, {1875, 25 }}, reward = 14476 }, -- wizards_coat_+1
    [ 3] = { trade = { 13964, 1936, 1937, 1993, {1875, 15 }}, reward = 14893 }, -- wizards_gloves_+1
    [ 4] = { trade = { 14217, 1936, 1937, 1994, {1875, 30 }}, reward = 15564 }, -- wizards_tonban_+1
    [ 5] = { trade = { 14092, 1936, 1937, 1995, {1875, 20 }}, reward = 15355 }, -- wizards_sabots_+1
-- AF to reforged stage 2 Geo
    [ 6] = { trade = {15228, 2927, 844 , {4064, 10}}, reward = 27926},  -- Geomancy Galero
    [ 7] = { trade = {14476, 2927, 837,  {4065, 10}}, reward = 27926},  -- Geomancy Tunic
    [ 8] = { trade = {14893, 2927, 1110, {4066, 10}}, reward = 28066},  -- Geomancy Mitaines
    [ 9] = { trade = {15564, 2927, 836,  {4067, 10}}, reward = 28206},  -- Geomancy Pants
    [10] = { trade = {15355, 2927, 1311, {4068, 10}}, reward = 28346},  -- Geomancy Sandals

-- Relic to reforged stage 1 Geo
    [11] = { trade = { 15075, 2048, 1993, { 1449, 28 } }, reward = 15248 }, -- sorcerers_petasos_+1
    [12] = { trade = { 15090, 2049, 1993, { 1449, 28 } }, reward = 14503 }, -- sorcerers_coat_+1
    [13] = { trade = { 15105, 2050, 1993, { 1449, 28 } }, reward = 14912 }, -- sorcerers_gloves_+1
    [14] = { trade = { 15120, 2051, 1994, { 1449, 28 } }, reward = 15583 }, -- sorcerers_tonban_+1
    [15] = { trade = { 15135, 2052, 1995, { 1449, 28 } }, reward = 15668 }, -- sorcerers_sabots_+1

-- Relic to reforged stage 2 Geo
    [16] = { trade = {15248, 1470, 844, 1450,  {4064, 10}}, reward =  26664}, -- Bagua Galero
    [17] = { trade = {14503, 1470, 837, 1450,  {4065, 10}}, reward =  26840}, -- Bagua Tunic
    [18] = { trade = {14912, 1470, 1311,1450,  {4068, 10}}, reward =  27016}, -- Bagua Mitaines
    [19] = { trade = {15583, 1470, 836, 1450,  {4067, 10}}, reward =  27192}, -- Bagua Pants
    [20] = { trade = {15668, 1470, 1110,1450,  {4066, 10}}, reward =  27368}, -- Bagua Sandals

-- Empy to reforged Emp stage 1 Geo
    [21] = { trade = { 12011, { 3113,  8 } }, reward = 11167 }, -- Goetia Petasos +1
    [22] = { trade = { 12031, { 3133, 10 } }, reward = 11187 }, -- Goetia Coat +1
    [23] = { trade = { 12051, { 3153,  8 } }, reward = 11207 }, -- Goetia Gloves +1
    [24] = { trade = { 12071, { 3173,  8 } }, reward = 11227 }, -- Goetia Chausses +1
    [25] = { trade = { 12091, { 3193,  8 } }, reward = 11247 }, -- Goetia Sabots +1

-- Empy to reforged Emp stage 2 Geo
    [26] = { trade = { 11167, { 3211, 6 } }, reward = 11067 }, -- Goetia Petasos +2
    [27] = { trade = { 11187, { 3216, 9 } }, reward = 11087 }, -- Goetia Coat +2
    [28] = { trade = { 11207, { 3220, 6 } }, reward = 11107 }, -- Goetia Gloves +2
    [29] = { trade = { 11227, { 3222, 6 } }, reward = 11127 }, -- Goetia Chausses +2
    [30] = { trade = { 11247, { 3229, 6 } }, reward = 11147 }, -- Goetia Sabots +2
-- Empy to reforged Empy stage 3 Geo
    [31] = { trade = {11067, 2927, 844,  {4064, 10}}, reward = 26780}, -- Azimuth Hood
    [32] = { trade = {11087, 2927, 837,  {4065, 10}}, reward = 26938}, -- Azimuth Coat
    [33] = { trade = {11107, 2927, 1110, {4066, 10}}, reward = 27092}, -- Azimuth Gloves
    [34] = { trade = {11127, 2927, 836,  {4067, 10}}, reward = 27277}, -- Azimuth Tights
    [35] = { trade = {11147, 2927, 1311, {4068, 10}}, reward = 27451}, -- Azimuth Gaiters

-- AF to reforged Run stage 1
    [36] = { trade = { 12515, 1942, 1943,  745, {1875, 25 }}, reward = 15231 }, -- gallant_coronet_+1
    [37] = { trade = { 12644, 1942, 1943, 1999, {1875, 30 }}, reward = 14479 }, -- gallant_surcoat_+1
    [38] = { trade = { 13967, 1942, 1943,  667, {1875, 20 }}, reward = 14896 }, -- gallant_gauntlets_+1
    [39] = { trade = { 14220, 1942, 1943,  667, {1875, 20 }}, reward = 15567 }, -- gallant_breeches_+1
    [40] = { trade = { 14095, 1942, 1943,  667, {1875, 20 }}, reward = 15358 }, -- gallant_leggings_+1

-- AF to reforged RUN stage 2
    [41] = { trade = {15231, 2927, 844 , {4064, 10}}, reward = 27787},  -- Runeist Bandeau
    [42] = { trade = {14479, 2927, 837,  {4065, 10}}, reward = 27927},  -- Runeist Coat
    [43] = { trade = {14896, 2927, 1110, {4066, 10}}, reward = 28067},  -- Runeist Mitons
    [44] = { trade = {15567, 2927, 836,  {4067, 10}}, reward = 28207},  -- Runeist Trousers
    [45] = { trade = {15358, 2927, 1311, {4068, 10}}, reward = 28347},  -- Runeist Bottes

-- Relic to reforged Run stage 1
    [46] = { trade = { 15078, 2063,  745, { 1452, 20 } }, reward = 15251 }, -- Valor Cornet +1
    [47] = { trade = { 15093, 2064, 1999, { 1452, 20 } }, reward = 14506 }, -- Valor Sucoat +1
    [48] = { trade = { 15108, 2065,  667, { 1452, 30 } }, reward = 14915 }, -- Valor Gauntlets +1
    [49] = { trade = { 15123, 2066,  667, { 1452, 30 } }, reward = 15586 }, -- Valor Breeches +1
    [50] = { trade = { 15138, 2067,  667, { 1452, 30 } }, reward = 15671 }, -- Valor Leggings +1

-- Relic to reforged Run stage 2
    [51] = { trade = {15251, 1469, 844, 1453,  {4064, 10}}, reward =  26666}, -- Futhark Bandeau
    [52] = { trade = {14506, 1469, 837, 1453,  {4065, 10}}, reward =  26842}, -- Futhark Coat
    [53] = { trade = {14915, 1469, 1110,1453,  {4066, 10}}, reward =  27018}, -- Futhark Mitons
    [54] = { trade = {15586, 1469, 836, 1453,  {4067, 10}}, reward =  27194}, -- Futhark Trousers
    [55] = { trade = {15671, 1469, 1311,1453,  {4068, 10}}, reward =  27370}, -- Futhark Boots

-- Empy to reforged Emp stage 1 Run
    [56] = { trade = { 12014, { 3116,  8 } }, reward = 11170 }, -- Creed Armet +1
    [57] = { trade = { 12034, { 3136, 10 } }, reward = 11190 }, -- Creed Cuirass +1
    [58] = { trade = { 12054, { 3156,  8 } }, reward = 11210 }, -- Creed Gauntlets +1
    [59] = { trade = { 12074, { 3176,  8 } }, reward = 11230 }, -- Creed Cuisses +1
    [60] = { trade = { 12094, { 3196,  8 } }, reward = 11250 }, -- Creed Sabatons +1

-- Empy to reforged Emp stage 2 Run
    [61] = { trade = { 11170, { 3213, 6 } }, reward = 11070 }, -- Creed Armet +2
    [62] = { trade = { 11190, { 3214, 9 } }, reward = 11090 }, -- Creed Cuirass +2
    [63] = { trade = { 11210, { 3221, 6 } }, reward = 11110 }, -- Creed Gauntlets +2
    [64] = { trade = { 11230, { 3223, 6 } }, reward = 11130 }, -- Creed Cuisses +2
    [65] = { trade = { 11250, { 3226, 6 } }, reward = 11150 }, -- Creed Sabatons +2

-- Empy to reforged Emp stage 3 Run
    [66] = { trade = {11070, 2932, 844 , {4064, 10}}, reward = 26782}, -- Erilaz Galea
    [67] = { trade = {11090, 2932, 837,  {4065, 10}}, reward = 26940}, -- Erilaz Surcoat
    [68] = { trade = {11110, 2932, 1110, {4066, 10}}, reward = 27094}, -- Erilaz Gauntlets
    [69] = { trade = {11130, 2932, 836,  {4067, 10}}, reward = 27279}, -- Erilaz Leg Guards
    [70] = { trade = {11150, 2932, 1311, {4068, 10}}, reward = 27453}, -- Erilaz greaves
}
-------------------------------------ArmorUpgrade-------------------------------------------------
           local handleMainEvent = function(player, option, coinAmount)
                local grUpgrade = player:getCharVar('GRupgrade')
                local info = GRArmorUpgrade[grUpgrade]
                    -- found a valid reward
                      if info and npcUtil.giveItem(player, info.reward) then
                         player:setCharVar('GRupgrade', 0)
                      end
           end

        local grUpgrade = player:getCharVar('GRupgrade')
        local tradedCombo = 0
        -- check for armor upgrade trades
        if tradedCombo == 0 then
            for k, v in pairs(GRArmorUpgrade) do
                if npcUtil.tradeHasExactly(trade, v.trade) then
                    tradedCombo = k
                    break
                end
            end
        end
        -- found a match
        if tradedCombo > 0 then
            player:confirmTrade()
            player:setCharVar('GRupgrade', tradedCombo)
            handleMainEvent(player, option, coinAmount)
            player:printToPlayer('Congratulations! Here is your new armor.', 0 , npc:getPacketName())
        end
   end,

        onTrigger = function(player, npc)
            player:printToPlayer('Greetings! I am here to help you obtain your RUN / GEO reforged armor. Please see our wiki for more details!', 0 , npc:getPacketName())
        end,
    })
    utils.unused(Rezyn)
end)

return m

