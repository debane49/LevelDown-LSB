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

-- AF to reforged stage 1 Geo ( NQ AF to reforged 109 af)
    [ 1] = { trade = {13856, 2288, 844 , {4064, 10}}, reward = 27786},  -- Geomancy Galero
    [ 2] = { trade = {12641, 2288, 837,  {4065, 10}}, reward = 27926},  -- Geomancy Tunic
    [ 3] = { trade = {13964, 2288, 1110, {4066, 10}}, reward = 28066},  -- Geomancy Mitaines
    [ 4] = { trade = {14217, 2288, 836,  {4067, 10}}, reward = 28206},  -- Geomancy Pants
    [ 5] = { trade = {14092, 2288, 1311, {4068, 10}}, reward = 28346},  -- Geomancy Sandals

-- Relic to reforged stage 1 Geo (NQ relic to reforged 109 relic)
    [ 6] = { trade = {15075, 1470, 844, {1450, 2}, {4064, 10}}, reward =  26664}, -- Bagua Galero
    [ 7] = { trade = {15090, 1470, 837, {1450, 2}, {4065, 10}}, reward =  26840}, -- Bagua Tunic
    [ 8] = { trade = {15105, 1470, 1311,{1450, 2}, {4068, 10}}, reward =  27016}, -- Bagua Mitaines
    [ 9] = { trade = {15120, 1470, 836, {1450, 2}, {4067, 10}}, reward =  27192}, -- Bagua Pants
    [10] = { trade = {15135, 1470, 1110,{1450, 2}, {4066, 10}}, reward =  27368}, -- Bagua Sandals

-- Empy to reforged Empy stage 1 Geo ( +2 emp to reforged 109 emp)
    [11] = { trade = {11067, 2927, 844,  {4064,  5}}, reward = 26780}, -- Azimuth Hood
    [12] = { trade = {11087, 2927, 837,  {4065,  5}}, reward = 26938}, -- Azimuth Coat
    [13] = { trade = {11107, 2927, 1110, {4066,  5}}, reward = 27092}, -- Azimuth Gloves
    [14] = { trade = {11127, 2927, 836,  {4067,  5}}, reward = 27277}, -- Azimuth Tights
    [15] = { trade = {11147, 2927, 1311, {4068,  5}}, reward = 27451}, -- Azimuth Gaiters

-- AF to reforged RUN stage 1 ( NQ AF to reforged 109 af)
    [16] = { trade = {12515,  752, 844 , {4064, 10}}, reward = 27787},  -- Runeist Bandeau
    [17] = { trade = {12644,  752, 837,  {4065, 10}}, reward = 27927},  -- Runeist Coat
    [18] = { trade = {13967,  752, 1110, {4066, 10}}, reward = 28067},  -- Runeist Mitons
    [19] = { trade = {14220,  752, 836,  {4067, 10}}, reward = 28207},  -- Runeist Trousers
    [20] = { trade = {14095,  752, 1311, {4068, 10}}, reward = 28347},  -- Runeist Bottes

-- Relic to reforged Run stage 1 (NQ relic to reforged 109 relic)
    [21] = { trade = {15078, 1469, 844,  {1453, 2}, {4064, 10}}, reward =  26666}, -- Futhark Bandeau
    [22] = { trade = {15093, 1469, 837,  {1453, 2}, {4065, 10}}, reward =  26842}, -- Futhark Coat
    [23] = { trade = {15108, 1469, 1110, {1453, 2}, {4066, 10}}, reward =  27018}, -- Futhark Mitons
    [24] = { trade = {15123, 1469, 836,  {1453, 2}, {4067, 10}}, reward =  27194}, -- Futhark Trousers
    [25] = { trade = {15138, 1469, 1311, {1453, 2}, {4068, 10}}, reward =  27370}, -- Futhark Boots

-- Empy to reforged Emp stage 1 Run ( +2 emp to reforged 109 emp)
    [26] = { trade = {11070, 2932, 844 , {4064,  5}}, reward = 26782}, -- Erilaz Galea
    [27] = { trade = {11090, 2932, 837,  {4065,  5}}, reward = 26940}, -- Erilaz Surcoat
    [28] = { trade = {11110, 2932, 1110, {4066,  5}}, reward = 27094}, -- Erilaz Gauntlets
    [29] = { trade = {11130, 2932, 836,  {4067,  5}}, reward = 27279}, -- Erilaz Leg Guards
    [30] = { trade = {11150, 2932, 1311, {4068,  5}}, reward = 27453}, -- Erilaz greaves
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