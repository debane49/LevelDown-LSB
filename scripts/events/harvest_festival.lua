-----------------------------------
-- Harvest Festivals
-----------------------------------
require('scripts/globals/utils')
-----------------------------------
xi = xi or {}
xi.events = xi.events or {}
xi.events.harvestFestival = xi.events.harvestFestival or {}
xi.events.harvestFestival.data = xi.events.harvestFestival.data or {}
xi.events.harvestFestival.npcdata = xi.events.harvestFestival.npcdata or {}
xi.events.harvestFestival.targetdata = xi.events.harvestFestival.targetdata or {}
xi.events.harvestFestival.entitiesmob = xi.events.harvestFestival.entitiesmob or {}
xi.events.harvestFestival.entitiesnpc = xi.events.harvestFestival.entitiesnpc or {}
xi.events.harvestFestival.entitiestargetnpc = xi.events.harvestFestival.entitiestargetnpc or {}
xi.events.harvestFestival.UllegoreMob = xi.events.harvestFestival.UllegoreMob or {}

local event = SeasonalEvent:new('HarvestFestival')

xi.events.harvestFestival.enabledCheck = function()
    local month = tonumber(os.date('%m'))
    return month == 10
end

event:setEnableCheck(xi.events.harvestFestival.enabledCheck)
-- TODO: Convert this to use event handler and cleanup

xi.events.harvestFestival.isHalloweenEnabled = function()
    local option = 0
    local month = tonumber(os.date('%m'))
    local day = tonumber(os.date('%d'))

    if
        month == 10 and day >= 31 or
        month == 11 and day == 1 or
        xi.settings.main.HALLOWEEN_YEAR_ROUND ~= 0
    then
        -- According to wiki Harvest Fest is Oct 20 - Nov 1.
        if xi.settings.main.HALLOWEEN_2005 == 1 then
            option = 1
        -- elseif HALLOWEEN_2008 == 1 then
        --     option = 2
        -- elseif HALLOWEEN_2009 == 1 then
        --     option = 3
        -- elseif HALLOWEEN_2010 == 1 then
        --     option = 4
        end
    end

    return option
end

local musicZones =
{
    xi.zone.SOUTHERN_SAN_DORIA,
    xi.zone.NORTHERN_SAN_DORIA,
    xi.zone.BASTOK_MINES,
    xi.zone.BASTOK_MARKETS,
    xi.zone.PORT_BASTOK,
    xi.zone.WINDURST_WATERS,
    xi.zone.PORT_WINDURST,
    xi.zone.WINDURST_WOODS,
    xi.zone.MOG_GARDEN,
    xi.zone.UPPER_JEUNO,
    xi.zone.LOWER_JEUNO,
    xi.zone.PORT_JEUNO,
}
local harvestFestivalMusic      = 29
local grandDuchyOfJeunoMusic    = 110

xi.events.harvestFestival.setMusic = function(musicId)
    for _, zoneId in pairs(musicZones) do
        local zone = GetZone(zoneId)
        if zone then
            -- TODO: Save the original music into a table

            -- Set the music of the zone, so that players zoning in will
            -- be sent it immediately
            zone:setBackgroundMusicDay(musicId)
            zone:setBackgroundMusicNight(musicId)

            -- Set the music for players already in the zone (this is wiped when
            -- they zone out)
            for _, player in pairs(zone:getPlayers()) do
                player:changeMusic(0, musicId)
                player:changeMusic(1, musicId)
            end
        end
    end
end

local function halloweenItemsCheck(player)
    local headSlot = player:getEquipID(xi.slot.HEAD)
    local mainHand = player:getEquipID(xi.slot.MAIN)
    local reward = 0

    -- Normal Quality Rewards
    local pumpkinHead = 13916
    local pumpkinHead2 = 15176
    local trickStaff = 17565
    local trickStaff2 = 17587

    local rewardList = { pumpkinHead, pumpkinHead2, trickStaff, trickStaff2 }

    -- Checks for HQ Upgrade
    for ri = 1, #rewardList do
        if headSlot == rewardList[ri] or mainHand == rewardList[ri] then
            if headSlot == pumpkinHead and not player:hasItem(xi.item.HORROR_HEAD) then
                reward = 13917 -- Horror Head
            elseif headSlot == pumpkinHead2 and not player:hasItem(xi.item.HORROR_HEAD_II) then
                reward = 15177 -- Horror Head II
            elseif mainHand == trickStaff and not player:hasItem(xi.item.TREAT_STAFF) then
                reward =  17566 -- Treat Staff
            elseif mainHand == trickStaff2 and not player:hasItem(xi.item.TREAT_STAFF_II) then
                reward = 17588 -- Treat Staff II
            end

            return reward
        end
    end

    -- Checks the possible item rewards to ensure player doesnt already have the item we are about to give them
    local cnt = #rewardList

    while cnt ~= 0 do
        local picked = rewardList[math.random(1, #rewardList)]
        if not player:hasItem(picked) then
            reward = picked
            cnt = 0
        else
            table.remove(rewardList, picked)
            cnt = cnt - 1
        end
    end

    return reward
end

xi.events.harvestFestival.onHalloweenTrade = function(player, trade, npc)
    local zone = player:getZoneName()
    local ID = zones[player:getZoneID()]

    local contentEnabled = xi.events.harvestFestival.isHalloweenEnabled()
    local item = trade:getItemId()
    -----------------------------------
    -- 2005 edition
    -----------------------------------
    if contentEnabled == 1 then
        -----------------------------------
        -- Treats allowed
        -----------------------------------
        local treatsTable =
        {
            4510, -- Acorn Cookie
            5646, -- Bloody Chocolate
            4496, -- Bubble Chocolate
            4397, -- Cinna-cookie
            4394, -- Ginger Cookie
            4495, -- Goblin Chocolate
            4413, -- Apple Pie
            4488, -- Jack-o'-Pie
            4421, -- Melon Pie
            4563, -- Pamama Tart
            4446, -- Pumpkin Pie
            4414, -- Rolanberry Pie
            4406, -- Baked Apple
            5729, -- Bavarois
            5745, -- Cherry Bavarois
            5653, -- Cherry Muffin
            5655, -- Coffee Muffin
            5718, -- Cream Puff
            5144, -- Crimson Jelly
            5681, -- Cupid Chocolate
            5672, -- Dried Berry
            5567, -- Dried Date
            4556, -- Icecap Rolanberry
            5614, -- Konigskuchen
            5230, -- Love Chocolate
            4502, -- Marron Glace
            4393, -- Orange Kuchen
            5147, -- Snoll Gelato
            4270, -- Sweet Rice Cake
            5645, -- Witch Nougat
            5552, -- Black Pudding  --safe
            5550, -- Buche au Chocolat -- safe @ 43 items
            5616, -- Lebkuchen House --breaks
            5633, -- Chocolate Cake
            5542, -- Gateau aux Fraises
            5572, -- Irmik Helvasi
            5625, -- Maple Cake
            5559, -- Mille Feuille
            5557, -- Mont Blanc
            5629, -- Orange Cake
            5631, -- Pumpkin Cake
            5577, -- Sutlac
            5627, -- Yogurt Cake
        }

        for itemInList = 1, #treatsTable do
            if item == treatsTable[itemInList] then
                local itemReward = halloweenItemsCheck(player)

                -- TODO: These varName values below need to be cleared onGameDay

                local varName = 'harvestFestTreats'
                local harvestFestTreats
                if itemInList < 32 then -- The size of the list is too big for int 32 used that stores the bit mask, as such there are two lists

                    harvestFestTreats = player:getCharVar(varName)
                else

                    varName = 'harvestFestTreats2'
                    harvestFestTreats = player:getCharVar(varName) --  this is the second list
                    itemInList = itemInList - 32
                end

                local alreadyTradedChk = utils.mask.getBit(harvestFestTreats, itemInList)
                if
                    itemReward ~= 0 and
                    player:getFreeSlotsCount() >= 1 and
                    math.random(1, 3) < 2
                then
                    -- Math.random added so you have 33% chance on getting item

                    player:messageSpecial(ID.text.HERE_TAKE_THIS)
                    player:addItem(itemReward)
                    player:messageSpecial(ID.text.ITEM_OBTAINED, itemReward)

                elseif player:canUseMisc(xi.zoneMisc.COSTUME) and not alreadyTradedChk then
                -- Other neat looking halloween type costumes
                -- two dragon skins: @420/421
                -- @422 dancing weapon
                -- @ 433/432 golem
                -- 265 dark eye, 266 Giant version
                -- 290 dark bombs
                -- 301 dark mandy
                -- 313 black spiders
                -- 488 gob
                -- 531 - 548 shade
                -- 564/579 skele

                    -- Possible costume values:
                    local yagudo = math.random(580, 607)
                    local quadav = math.random(644, 671)
                    local shade = math.random(535, 538)
                    local orc = math.random(612, 639)
                    local ghost = 368
                    local hound = 365
                    local skeleton = 564
                    local darkStalker = math.random(531, 534)

                    local halloweenCostumeList = { quadav, orc, yagudo, shade, ghost, hound, skeleton, darkStalker }

                    local costumePicked = halloweenCostumeList[math.random(1, #halloweenCostumeList)] -- will randomly pick one of the costumes in the list
                    player:addStatusEffect(xi.effect.COSTUME, costumePicked, 0, 3600)

                    -- pitchForkCostumeList defines the special costumes per zone that can trigger the pitch fork requirement
                    -- zone, costumeID
                    local pitchForkCostumeList =
                    {
                        234, shade, skeleton, -- Bastok mines
                        235, hound, ghost,    -- Bastok Markets
                        230, ghost, skeleton, -- Southern Sandoria
                        231, hound, skeleton, -- Northern Sandoria
                        241, ghost, shade,    -- Windurst Woods
                        238, shade, hound     -- Windurst Woods
                    }

                    for zi = 1, #pitchForkCostumeList, 3 do
                        if
                            zone == pitchForkCostumeList[zi] and
                            (
                                costumePicked == pitchForkCostumeList[zi + 1] or
                                zone == pitchForkCostumeList[zi] and
                                costumePicked == pitchForkCostumeList[zi + 2]
                            )
                        then -- Gives special hint for pitch fork costume
                            player:messageSpecial(ID.text.IF_YOU_WEAR_THIS)

                        elseif zi == 16 then
                            player:messageSpecial(ID.text.THANK_YOU_TREAT)
                        end
                    end
                else
                    player:messageSpecial(ID.text.THANK_YOU)
                end

                if not alreadyTradedChk then
                    player:setCharVar(varName, utils.mask.setBit(harvestFestTreats, itemInList, true))
                end

                player:tradeComplete()

                break
            end
        end
    end
end

xi.events.harvestFestival.applyHalloweenNpcCostumes = function(zoneid)
    if xi.events.harvestFestival.isHalloweenEnabled() ~= 0 then
        local skins = zones[zoneid].npc.HALLOWEEN_SKINS
        if skins then
            for id, skin in pairs(skins) do
                local npc = GetNPCByID(id)
                if npc then
                    npc:setModelId(skin)
                end
            end
        end
    end
end

local verticalOffset = 1.75

xi.events.harvestFestival.data =
{
    [xi.zone.SOUTHERN_SAN_DORIA] =
    {
        {  0, -277.910, -3.500,  78.470, '0x0000700100000000000000000000000000000000', },
        {  0, -268.574, -3.600,  82.015, '0x0000130200000000000000000000000000000000', },
        { 33, -259.108, -3.595,  77.425, '0x0000140200000000000000000000000000000000', },
        { 23, -279.120, -3.500, 115.110, '0x0000150200000000000000000000000000000000', },
        {  0, -268.681, -3.600, 117.314, '0x0000160200000000000000000000000000000000', },
        { 99, -199.327, -1.002,  45.192, '0x0000170200000000000000000000000000000000', },
        {  0, -166.937, -2.000,  55.714, '0x0000180200000000000000000000000000000000', },
        {  0, -150.206, -2.000,  53.012, '0x0000190200000000000000000000000000000000', },
        { 64,  -98.100, -2.074,  29.115, '0x0000200200000000000000000000000000000000', },
        { 99, -103.950,  2.000, -12.820, '0x0000210200000000000000000000000000000000', },
        {  0,  -80.605,  1.994,   7.681, '0x0000220200000000000000000000000000000000', },
        { 97,  -73.995,  2.000, -54.240, '0x0000230200000000000000000000000000000000', },
        {  0,  -26.506,  2.069, -99.088, '0x0000240200000000000000000000000000000000', },
        { 29,   21.210,  2.215, -93.820, '0x0000250200000000000000000000000000000000', },
        {  0,  -33.286,  1.988, -30.758, '0x0000260200000000000000000000000000000000', },
        {  0,  -24.230,  2.090,  -4.039, '0x0000270200000000000000000000000000000000', },
        { 61,  -12.050,  2.090,  -0.419, '0x00003B0200000000000000000000000000000000', },
        {  0,  -15.542,  2.090,  13.174, '0x00003C0200000000000000000000000000000000', },
        { 30,   15.009,  2.090,  13.172, '0x00003D0200000000000000000000000000000000', },
        {  3,   13.030,  2.090,  -1.089, '0x00003E0200000000000000000000000000000000', },
        { 25,   24.820,  2.090,  -4.169, '0x00003F0200000000000000000000000000000000', },
        { 42,   34.944,  2.069, -30.738, '0x0000400200000000000000000000000000000000', },
        {  0,   77.994,  1.878,   5.711, '0x0000410200000000000000000000000000000000', },
        { 64,  103.950,  2.000, -14.320, '0x0000420200000000000000000000000000000000', },
        {  0,  103.665,  3.895,  18.656, '0x0000430200000000000000000000000000000000', },
        { 29,   94.510,  4.035,  70.780, '0x0000190200000000000000000000000000000000', },
        { 29,  127.710,  0.000,  70.280, '0x0000700100000000000000000000000000000000', },
        { 40,  152.600, -1.991, 157.099, '0x00003D0200000000000000000000000000000000', },
        {  0,  173.410, -2.272, 201.179, '0x0000700100000000000000000000000000000000', },
        { 29,  127.710,  0.000,  70.280, '0x0000150200000000000000000000000000000000', },
        { 40,  152.600, -1.991, 157.099, '0x0000700100000000000000000000000000000000', },
    },

    [xi.zone.NORTHERN_SAN_DORIA] =
    {
        { 64,    0.000, -2.500, 29.000, '0x0000700100000000000000000000000000000000', },
        { 64,    0.000, -2.500, 40.000, '0x0000140200000000000000000000000000000000', },
        { 64,    0.000, -2.500, 51.000, '0x0000200200000000000000000000000000000000', },
        {  0, -142.900, -0.199, 79.700, '0x00003E0200000000000000000000000000000000', },
        {  0, -114.601, -0.199, 73.632, '0x0000260200000000000000000000000000000000', },
        {  0, -117.600, -0.199, 56.650, '0x0000150200000000000000000000000000000000', },
        {  0,  -86.200, -0.199, 54.200, '0x0000420200000000000000000000000000000000', },
        {  0,  -53.000, -0.199, 68.000, '0x00003F0200000000000000000000000000000000', },
        {  0,  -37.000, -0.199, 53.000, '0x0000700100000000000000000000000000000000', },
        {  0,  -34.100, -0.199, 24.000, '0x00003D0200000000000000000000000000000000', },
        {  0,  -11.800, -0.199,  8.000, '0x0000130200000000000000000000000000000000', },
        {  0,  -11.000, -0.199, -8.000, '0x0000170200000000000000000000000000000000', },
        {  0,   11.000, -0.199, -8.000, '0x0000700100000000000000000000000000000000', },
        {  0,   13.300, -0.199,  7.500, '0x0000420200000000000000000000000000000000', },
        {  0,  -20.000, -0.199, 84.000, '0x0000240200000000000000000000000000000000', },
        {  0,   15.507, -0.199, 80.767, '0x0000190200000000000000000000000000000000', },
        {  0,   37.141, -0.199, 60.419, '0x0000700100000000000000000000000000000000', },
        {  0,   44.300, -0.199, 24.100, '0x0000190200000000000000000000000000000000', },
        {  0,   59.000, -0.199, 71.000, '0x0000240200000000000000000000000000000000', },
        {  0,   73.911, -0.199, 45.529, '0x0000170200000000000000000000000000000000', },
        {  0,   80.811, -0.199, 28.629, '0x0000700100000000000000000000000000000000', },
    },

    -- Note: These are slighly elevated, so a small vertical offset has been added
    [xi.zone.BASTOK_MINES] =
    {
        { 0, -20.979, -3.000 + verticalOffset, -61.813, '0x0000700100000000000000000000000000000000', },
        { 0, -12.124, -3.000 + verticalOffset, -64.650, '0x0000130200000000000000000000000000000000', },
        { 0,  -4.769, -3.000 + verticalOffset, -65.301, '0x0000240200000000000000000000000000000000', },
        { 0,   4.749, -3.000 + verticalOffset, -65.382, '0x0000190200000000000000000000000000000000', },
        { 0,  12.071, -3.000 + verticalOffset, -64.690, '0x0000200200000000000000000000000000000000', },
        { 0,  20.946, -3.000 + verticalOffset, -61.886, '0x0000700100000000000000000000000000000000', },
    },

    -- Note: These are slighly elevated, so a small vertical offset has been added
    [xi.zone.BASTOK_MARKETS] =
    {
        { 0, -343.894, -10.004 + verticalOffset, -158.219, '0x0000700100000000000000000000000000000000', },
        { 0, -333.456, -10.004 + verticalOffset, -147.542, '0x00003D0200000000000000000000000000000000', },
        { 0, -327.166, -10.004 + verticalOffset, -141.216, '0x0000240200000000000000000000000000000000', },
        { 0, -316.577, -10.004 + verticalOffset, -130.499, '0x0000160200000000000000000000000000000000', },
        { 0, -310.195, -10.004 + verticalOffset, -124.245, '0x0000400200000000000000000000000000000000', },
        { 0, -320.630, -15.001 + verticalOffset,  -89.007, '0x0000430200000000000000000000000000000000', },
        { 0, -317.792, -15.001 + verticalOffset,  -80.152, '0x0000700100000000000000000000000000000000', },
        { 0, -317.142, -15.001 + verticalOffset,  -72.797, '0x0000190200000000000000000000000000000000', },
        { 0, -317.060, -15.001 + verticalOffset,  -63.279, '0x00003F0200000000000000000000000000000000', },
        { 0, -317.752, -15.001 + verticalOffset,  -55.957, '0x00003D0200000000000000000000000000000000', },
        { 0, -320.556, -15.001 + verticalOffset,  -47.081, '0x00003F0200000000000000000000000000000000', },
        { 0, -224.074,  -2.000 + verticalOffset,   60.103, '0x00003F0200000000000000000000000000000000', },
        { 0, -210.960,  -2.000 + verticalOffset,   59.878, '0x0000700100000000000000000000000000000000', },
        { 0, -200.678,  -6.000 + verticalOffset,  -78.527, '0x0000190200000000000000000000000000000000', },
        { 0, -163.338,  -4.000 + verticalOffset,  -84.524, '0x0000400200000000000000000000000000000000', },
        { 0, -155.791,  -4.000 + verticalOffset,  -88.348, '0x0000430200000000000000000000000000000000', },
        { 0, -147.569,  -4.000 + verticalOffset, -103.741, '0x0000700100000000000000000000000000000000', },
        { 0, -140.203,  -4.000 + verticalOffset, -107.486, '0x0000160200000000000000000000000000000000', },
        { 0,  -98.607,  -4.000 + verticalOffset, -102.536, '0x00003D0200000000000000000000000000000000', },
        { 0,  -93.292,  -4.000 + verticalOffset, -102.557, '0x0000190200000000000000000000000000000000', },
        { 0,  -58.862,  -6.000 + verticalOffset,  -78.927, '0x0000400200000000000000000000000000000000', },
        { 0,  -50.816,  -6.000 + verticalOffset,  -87.027, '0x0000700100000000000000000000000000000000', },
    },

    -- Note: These are slighly elevated, so a small vertical offset has been added
    [xi.zone.PORT_BASTOK] =
    {
        { 0,  116.000,  8.510 + verticalOffset, -40.000, '0x0000700100000000000000000000000000000000', },
        { 0, -170.000, -6.000 + verticalOffset, -16.078, '0x0000240200000000000000000000000000000000', },
        { 0, -182.255, -6.000 + verticalOffset, -12.077, '0x0000240200000000000000000000000000000000', },
        { 0, -178.841, -6.000 + verticalOffset,  -7.457, '0x0000160200000000000000000000000000000000', },
        { 0, -171.058, -6.000 + verticalOffset,  -0.132, '0x0000700100000000000000000000000000000000', },
        { 0, -166.878, -6.000 + verticalOffset,  -4.330, '0x0000430200000000000000000000000000000000', },
        { 0, -162.578, -6.000 + verticalOffset,  -8.301, '0x00003D0200000000000000000000000000000000', },
        { 0, -151.440, -6.000 + verticalOffset,  -2.889, '0x00003F0200000000000000000000000000000000', },
        { 0, -145.322, -6.000 + verticalOffset,   3.497, '0x0000240200000000000000000000000000000000', },
        { 0, -159.493, -6.000 + verticalOffset, -29.817, '0x0000190200000000000000000000000000000000', },
        { 0, -130.833, -0.999 + verticalOffset, -41.166, '0x0000700100000000000000000000000000000000', },
        { 0, -122.667, -0.999 + verticalOffset, -33.000, '0x0000160200000000000000000000000000000000', },
        { 0,  -97.815, -2.100 + verticalOffset, -13.741, '0x0000400200000000000000000000000000000000', },
        { 0,  -97.815, -2.100 + verticalOffset,  -2.145, '0x00003D0200000000000000000000000000000000', },
        { 0,  -84.600, -2.100 + verticalOffset,   6.669, '0x0000190200000000000000000000000000000000', },
        { 0,  -75.297, -2.100 + verticalOffset,   6.891, '0x0000400200000000000000000000000000000000', },
        { 0,  -57.900, -2.100 + verticalOffset,   8.916, '0x00003F0200000000000000000000000000000000', },
        { 0,  -50.563, -2.100 + verticalOffset,   8.916, '0x0000700100000000000000000000000000000000', },
        { 0,  -27.870, -3.300 + verticalOffset,   3.520, '0x0000430200000000000000000000000000000000', },
        { 0,  -32.975, -3.300 + verticalOffset,  28.154, '0x0000160200000000000000000000000000000000', },
        { 0,  -22.845, -3.300 + verticalOffset,  27.941, '0x00003D0200000000000000000000000000000000', },
        { 0,    1.973, -2.100 + verticalOffset,   9.159, '0x0000240200000000000000000000000000000000', },
        { 0,   17.973, -2.100 + verticalOffset,   9.159, '0x0000190200000000000000000000000000000000', },
        { 0,   40.550, -4.100 + verticalOffset,  25.986, '0x0000700100000000000000000000000000000000', },
        { 0,   41.467, -4.100 + verticalOffset,  29.382, '0x0000430200000000000000000000000000000000', },
        { 0,   43.265, -4.100 + verticalOffset,  32.067, '0x0000400200000000000000000000000000000000', },
        { 0,   39.040, -6.100 + verticalOffset,  54.006, '0x00003F0200000000000000000000000000000000', },
    },

    [xi.zone.WINDURST_WATERS] =
    {
        { 255, -125.921, -1.194, -163.106, '0x0000700100000000000000000000000000000000', },
        {   0,  -84.583, -1.178, -169.583, '0x0000240200000000000000000000000000000000', },
        {   0,  -46.075, -1.000, -166.281, '0x0000160200000000000000000000000000000000', },
        {  57,   -8.966, -4.000, -158.335, '0x00003D0200000000000000000000000000000000', },
        {   0,    4.539, -1.000,   37.044, '0x0000430200000000000000000000000000000000', },
        { 188,  -35.741, -3.500,   58.036, '0x0000700100000000000000000000000000000000', },
        { 176,  -43.700, -3.500,   57.953, '0x0000400200000000000000000000000000000000', },
        { 243,  -61.945, -3.500,   74.746, '0x00003D0200000000000000000000000000000000', },
        {   0,  -85.583, -5.000,   89.591, '0x00003F0200000000000000000000000000000000', },
        { 111,  -18.078, -3.500,   74.383, '0x0000700100000000000000000000000000000000', },
        {   0,    1.244, -5.000,   92.761, '0x0000190200000000000000000000000000000000', },
        { 246,  -50.166, -5.000,  132.575, '0x00003F0200000000000000000000000000000000', },
        {  99,  -29.833, -5.000,  132.575, '0x0000400200000000000000000000000000000000', },
        { 255,  116.985, -2.187,   62.020, '0x0000430200000000000000000000000000000000', },
        {   8,  142.000,  0.000,  150.000, '0x00003D0200000000000000000000000000000000', },
        { 120,  154.000,  0.000,  150.000, '0x0000190200000000000000000000000000000000', },
        {  50,  157.750, -2.500,  202.000, '0x0000160200000000000000000000000000000000', },
        {  87,  134.000, -2.500,  222.000, '0x0000700100000000000000000000000000000000', },
        { 199,  116.929, -2.500,  202.000, '0x0000190200000000000000000000000000000000', },
        {   0,   98.761, -2.500,  205.072, '0x00003D0200000000000000000000000000000000', },
    },

    [xi.zone.PORT_WINDURST] =
    {
        {   0, -185.773, -4.000,  93.305, '0x0000700100000000000000000000000000000000', },
        { 135, -130.000, -4.000, 134.000, '0x0000240200000000000000000000000000000000', },
        {   0, -139.260, -5.500, 162.123, '0x0000190200000000000000000000000000000000', },
        {  48, -129.664, -5.500, 173.436, '0x0000700100000000000000000000000000000000', },
        {   0, -105.875, -5.125, 174.000, '0x0000160200000000000000000000000000000000', },
        {  36,  -94.000, -4.000, 134.000, '0x0000430200000000000000000000000000000000', },
        {  97,  -78.000, -5.000, 146.000, '0x0000400200000000000000000000000000000000', },
        {   0,  -14.971, -4.000, 109.261, '0x00003F0200000000000000000000000000000000', },
        {   0,   11.126, -4.000, 106.207, '0x0000190200000000000000000000000000000000', },
        {  88,   33.238, -5.000, 137.268, '0x00003F0200000000000000000000000000000000', },
        {   0,  147.005, -3.728, 130.679, '0x0000400200000000000000000000000000000000', },
        {  28,  165.585, -5.000, 155.864, '0x0000700100000000000000000000000000000000', },
        {  26,  177.722, -5.000, 159.157, '0x0000190200000000000000000000000000000000', },
        {  77,  188.611, -4.784, 127.276, '0x0000160200000000000000000000000000000000', },
        {   0,  201.785, -4.427, 140.265, '0x0000430200000000000000000000000000000000', },
    },

    [xi.zone.WINDURST_WOODS] =
    {
        {  14, -16.000, -1.300,  -64.000, '0x0000700100000000000000000000000000000000', },
        {   0,   0.937, -3.883, -164.015, '0x0000240200000000000000000000000000000000', },
        {   0, -58.062, -1.000, -110.219, '0x0000190200000000000000000000000000000000', },
        {   0, -59.408,  1.000,  -55.905, '0x0000160200000000000000000000000000000000', },
        {  45, -30.250,  1.098,  -38.000, '0x0000700100000000000000000000000000000000', },
        {   0, -46.368,  0.531,  -20.585, '0x0000430200000000000000000000000000000000', },
        {   0,  14.125, -2.500,    5.968, '0x0000400200000000000000000000000000000000', },
        {  67,  27.170,  2.000,  -33.669, '0x0000190200000000000000000000000000000000', },
        { 162,  26.674,  1.834,  -45.900, '0x0000160200000000000000000000000000000000', },
        {   0,  53.110, -2.049, -102.427, '0x0000400200000000000000000000000000000000', },
        { 177,  98.243, -5.000,  -60.322, '0x0000430200000000000000000000000000000000', },
        {  44, 117.251, -5.000,  -99.301, '0x0000700100000000000000000000000000000000', },
        {   0, 107.025, -5.000, -125.327, '0x0000190200000000000000000000000000000000', },
    },

    [xi.zone.MOG_GARDEN] =
    {
        { 230,  -1.028, -1.028, -582.278, '0x0000700100000000000000000000000000000000', },
        { 178, 362.770, -3.350, -564.698, '0x0000240200000000000000000000000000000000', },
        { 155, 351.121, -3.157, -556.632, '0x0000190200000000000000000000000000000000', },
        { 112, 334.477, -2.756, -561.386, '0x0000160200000000000000000000000000000000', },
        { 105, 317.831, -2.826, -570.246, '0x0000700100000000000000000000000000000000', },
        {  70, 313.014,  0.277, -590.234, '0x0000430200000000000000000000000000000000', },
        {   3, 326.742,  0.300, -593.485, '0x0000400200000000000000000000000000000000', },
        {  24, 338.534,  0.300, -603.768, '0x0000190200000000000000000000000000000000', },
        { 221, 370.401,  0.300, -596.290, '0x0000160200000000000000000000000000000000', },
    },
}
--[[
  0x0000160500000000000000000000000000000000 = green pumpkin decor 1302 
  0x0000140500000000000000000000000000000000 = red pumpkin decor 1300 
  0x00000F0500000000000000000000000000000000 = blue pumpkin decor 1295 
  0x00000E0500000000000000000000000000000000 - bomb stand - windy 1293
  0x00000D0500000000000000000000000000000000 - bomb stand sandy 1294
  0x0000070500000000000000000000000000000000 - bomb stand bastok 1287
  0x00000C0800000000000000000000000000000000 - haloween blob
  ]]--
xi.events.harvestFestival.npcdata =
{
    [xi.zone.SOUTHERN_SAN_DORIA] =
    {
        {  69,    7.2633,  0.0000,   26.0808, '0x00000D0500000000000000000000000000000000', },
        {  63,   -7.3279,  0.0000,   26.0628, '0x00000D0500000000000000000000000000000000', },
        {  60,  -25.9789,  0.0000,   30.1732, '0x0000140500000000000000000000000000000000', },
        {  65,   25.8421,  0.0000,   30.2967, '0x0000140500000000000000000000000000000000', },
    },

    [xi.zone.NORTHERN_SAN_DORIA] =
    {
        {  95,   19.6738, -0.1990,   59.8912, '0x00000D0500000000000000000000000000000000', },
        {  30,  -18.1595, -0.1990,   62.7182, '0x00000D0500000000000000000000000000000000', },
        { 236,  -20.5554, -0.1992,   20.2527, '0x00000D0500000000000000000000000000000000', },
        { 141,   20.8799, -0.1992,   20.1807, '0x00000D0500000000000000000000000000000000', },
        {  17,   24.0423, -0.1992,   73.8029, '0x0000140500000000000000000000000000000000', },
        {  43,  -16.0019, -0.1990,   74.8611, '0x0000140500000000000000000000000000000000', },
    },

    -- Note: These are slighly elevated, so a small vertical offset has been added
    [xi.zone.BASTOK_MINES] =
    {
        { 253,   99.5792,  0.9944,  -61.9726, '0x0000070500000000000000000000000000000000', },
        {   0,   99.6645,  0.9944,  -82.0026, '0x0000070500000000000000000000000000000000', },
        {  19,   23.9753,  0.0000,  -65.6047, '0x0000070500000000000000000000000000000000', },
        { 110,  -23.2796,  0.0000,  -65.1768, '0x0000070500000000000000000000000000000000', },
        { 161,   19.7588,  0.0000, -121.7904, '0x0000070500000000000000000000000000000000', },
        {  92,   -0.2657, -1.0008, -108.5968, '0x00000F0500000000000000000000000000000000', },
        {  29,  -27.5834, -1.0008, -112.3657, '0x00000F0500000000000000000000000000000000', },
    },

    -- Note: These are slighly elevated, so a small vertical offset has been added
    [xi.zone.BASTOK_MARKETS] =
    {
        { 222, -261.1407, -12.0200,  -53.0632, '0x0000070500000000000000000000000000000000', },
        { 160, -291.0661, -12.0200,  -53.0944, '0x0000070500000000000000000000000000000000', },
        {  99, -291.3856, -12.0200,  -83.1460, '0x0000070500000000000000000000000000000000', },
        {  31, -261.0999, -12.0200,  -83.1129, '0x0000070500000000000000000000000000000000', },
        {  27, -291.5587, -10.0000, -104.6508, '0x00000F0500000000000000000000000000000000', },
        { 105, -269.6774, -10.0000, -104.5679, '0x00000F0500000000000000000000000000000000', },
    },

    -- Note: These are slighly elevated, so a small vertical offset has been added
    [xi.zone.PORT_BASTOK] =
    {
        {  70,   70.7940,   8.5000, -221.3671, '0x0000070500000000000000000000000000000000', },
        {  65,   49.1439,   8.5000, -221.0409, '0x0000070500000000000000000000000000000000', },
        { 126,  100.2290,   8.4570,  -40.0332, '0x0000070500000000000000000000000000000000', },
        {  64,  116.0131,   8.4570,  -55.4570, '0x0000070500000000000000000000000000000000', },
        { 254,  131.5254,   8.4570,  -40.0042, '0x0000070500000000000000000000000000000000', },
        { 192,  115.9899,   8.4570,  -24.5782, '0x0000070500000000000000000000000000000000', },
        { 162,  -97.2790,   6.0000,  -58.5630, '0x0000070500000000000000000000000000000000', },
        { 192, -119.9300,   6.0000,  -68.9084, '0x0000070500000000000000000000000000000000', },
        { 125,   83.5706,   7.5000, -191.7875, '0x00000F0500000000000000000000000000000000', },
        { 255,   38.7301,   7.5000, -194.0169, '0x00000F0500000000000000000000000000000000', },
        {  61,  119.7267,   8.5000,    9.8809, '0x00000F0500000000000000000000000000000000', },
        { 148,  148.3336,   8.5000,  -50.0408, '0x00000F0500000000000000000000000000000000', },
        { 224,   67.3975,  -8.1000,   14.0772, '0x00000F0500000000000000000000000000000000', },
    },

    [xi.zone.WINDURST_WATERS] =
    {
        {  49,  -48.5792,  -5.0000,   93.1644, '0x00000E0500000000000000000000000000000000', },
        { 106,  -31.2196,  -5.0000,   91.0379, '0x00000E0500000000000000000000000000000000', },
        { 220,  -13.0147,  -1.0000,   19.5772, '0x00000E0500000000000000000000000000000000', },
        { 245, -117.6444,  -2.0000,   43.4154, '0x00000E0500000000000000000000000000000000', },
        { 250,  -63.2503, -10.7500,  103.8288, '0x00000E0500000000000000000000000000000000', },
        { 189,   -8.0057,  -2.0000,  -23.9614, '0x00000E0500000000000000000000000000000000', },
        { 196,  -35.8688,  -2.5000, -105.2061, '0x00000E0500000000000000000000000000000000', },
        { 131,   10.8957,  -4.0000, -173.6779, '0x00000E0500000000000000000000000000000000', },
        { 138,   11.2069,  -4.0000, -185.7742, '0x00000E0500000000000000000000000000000000', },
        { 112,   -5.0868,  -5.0000,   89.2507, '0x0000160500000000000000000000000000000000', },
        { 136,   10.5076,  -1.0000,   25.8430, '0x0000160500000000000000000000000000000000', },
        { 140,  -88.4646,  -2.0000,   46.2632, '0x0000160500000000000000000000000000000000', },
        { 188,  -23.0127, -10.7500,   93.2043, '0x0000160500000000000000000000000000000000', },
        { 130,  -44.1805,  -1.0000, -171.8527, '0x0000160500000000000000000000000000000000', },
        {  94,   75.9601,  -2.7500, -167.3703, '0x0000160500000000000000000000000000000000', },
    },
 
    [xi.zone.PORT_WINDURST] =
    {
        { 109,  220.5677, -12.0000,  228.2874, '0x00000E0500000000000000000000000000000000', },
        {  15,  178.2228, -12.0000,  228.1644, '0x00000E0500000000000000000000000000000000', },
        {  67,   78.1059,  -5.0000,  116.9423, '0x00000E0500000000000000000000000000000000', },
        { 197,   42.0537,  -5.0000,  117.1808, '0x00000E0500000000000000000000000000000000', },
        { 133,   20.7606,  -2.0000,   20.0276, '0x00000E0500000000000000000000000000000000', },
        { 227, -227.5843,  -8.0000,  180.7608, '0x00000E0500000000000000000000000000000000', },
        {  87, -192.5964,  -2.0000,   56.7066, '0x00000E0500000000000000000000000000000000', },
        {  93,  184.8305,  -4.0000,  151.3491, '0x0000160500000000000000000000000000000000', },
        { 170,    7.3714,  -4.0000,  113.3689, '0x0000160500000000000000000000000000000000', },
        { 190,  -72.3204,  -4.0000,  114.4296, '0x0000160500000000000000000000000000000000', },
        { 192, -145.2195,  -4.0000,  115.1400, '0x0000160500000000000000000000000000000000', },
        {  25, -225.9092,  -8.0000,  216.3033, '0x0000160500000000000000000000000000000000', },
    },

    [xi.zone.WINDURST_WOODS] =
    {
        {  39,  -45.2961,  -3.5000,   60.8783, '0x00000E0500000000000000000000000000000000', },
        {  27,  -42.1750,   1.0390,  -36.6673, '0x00000E0500000000000000000000000000000000', },
        {   5,  -57.0385,   1.0289,  -53.9305, '0x00000E0500000000000000000000000000000000', },
        { 118,  -21.6452,   2.2862,  -66.6530, '0x00000E0500000000000000000000000000000000', },
        { 224,  -10.3755,   2.2386,  -61.4359, '0x00000E0500000000000000000000000000000000', },
        { 169,  102.3342,  -5.0000,  -56.8618, '0x00000E0500000000000000000000000000000000', },
        {  70,  101.3791,  -5.0000,  -20.4006, '0x00000E0500000000000000000000000000000000', },
        { 103,  -86.3240,  -5.0000,   58.8803, '0x0000160500000000000000000000000000000000', },
        { 187,  -93.7072,  -5.0000,   17.6749, '0x0000160500000000000000000000000000000000', },
        {  61,  -28.5023,  -2.5000,   19.2368, '0x0000160500000000000000000000000000000000', },
        {  28,  -22.5187,  -2.5000,  -35.6238, '0x0000160500000000000000000000000000000000', },
        { 142,    7.5175,   3.0000,  -69.0763, '0x0000160500000000000000000000000000000000', },

    },

    [xi.zone.MOG_GARDEN] =
    {
        { 255,  317.3338,  -0.4502, -585.5020, '0x0000070500000000000000000000000000000000', },
        {   8,  316.7954,  -3.0011, -568.8443, '0x00000D0500000000000000000000000000000000', },
        {  54,  332.7911,  -3.0659, -555.0939, '0x00000E0500000000000000000000000000000000', },
    },
}

xi.events.harvestFestival.targetdata =
{
    [xi.zone.SOUTHERN_SAN_DORIA] =
    {
        {  63,   -0.0795,  0.0000,   17.5303, '0x00000C0800000000000000000000000000000000', },
    },

    -- Note: These are slighly elevated, so a small vertical offset has been added
    [xi.zone.BASTOK_MARKETS] =
    {
        {  64, -280.2567, -12.0987,  -92.4757, '0x00000C0800000000000000000000000000000000', },
    },

    [xi.zone.WINDURST_WATERS] =
    {
        { 191,  -41.0276,  -5.0000,   78.9636, '0x00000C0800000000000000000000000000000000', },
    },

    [xi.zone.MOG_GARDEN] =
    {
        {  98,  368.8202,  -2.6759, -550.4912, '0x00000C0800000000000000000000000000000000', },
    },
}
xi.events.harvestFestival.showEntities = function(enabled)
    if enabled and #xi.events.harvestFestival.entitiesnpc == 0 or
                   #xi.events.harvestFestival.entitiesmob == 0 then
        xi.events.harvestFestival.generateEntities()
    end

    for _, entityIDs in pairs(xi.events.harvestFestival.entitiesmob) do
       local entitys = GetMobByID(entityIDs)      
        if entitys then
            if enabled then
                entitys:setStatus(xi.status.NORMAL)
            else
                -- TODO: Why doesn't DISAPPEAR work here?
                -- entity:setStatus(xi.status.DISAPPEAR)

                entitys:setStatus(xi.status.INVISIBLE)
            end
        end
    end
    for _, entityID in pairs(xi.events.harvestFestival.entitiesnpc) do
       local entity = GetNPCByID(entityID)      
        if entity then
            if enabled then
                entity:setStatus(xi.status.NORMAL)
            else
                -- TODO: Why doesn't DISAPPEAR work here?
                -- entity:setStatus(xi.status.DISAPPEAR)

                entity:setStatus(xi.status.INVISIBLE)
            end
        end
    end
    for _, entityIDt in pairs(xi.events.harvestFestival.entitiestargetnpc) do
       local entityt = GetNPCByID(entityIDt)      
        if entityt then
            if enabled then
                entityt:setStatus(xi.status.NORMAL)
            else
                -- TODO: Why doesn't DISAPPEAR work here?
                -- entity:setStatus(xi.status.DISAPPEAR)

                entityt:setStatus(xi.status.INVISIBLE)
            end
        end
    end
    if not enabled then
        xi.events.harvestFestival.entitiesmob = {}
        xi.events.harvestFestival.entitiesnpc = {}
        xi.events.harvestFestival.entitiestargetnpc = {}
    end
end

xi.events.harvestFestival.generateEntities = function()
    for zoneId, data in pairs(xi.events.harvestFestival.data) do
        local zone = GetZone(zoneId)
        if zone then
            for _, entry in pairs(data) do
                local rot  = entry[1]
                local x    = entry[2]
                local y    = entry[3]
                local z    = entry[4]
                local look = entry[5]

                local mob = zone:insertDynamicEntity({
                    -- objtype = xi.objType.NPC,
                    objtype = xi.objType.MOB,
                    name = '     ',
                    look = look,
                    x = x,
                    y = y,
                    z = z,
                    rotation = rot,
                    widescan = 0,
                    entityFlags = 2075,
                    namevis = 64,
                    groupId  =  2,  
                    groupZoneId  =  175,
                    releaseIdOnDisappear = true,

        onMobSpawn  =  function(mob,   playerArg,   optParams)
            mob:setMobMod(xi.mobMod.ROAM_DISTANCE,   35)
            mob:setMobMod(xi.mobMod.NO_AGGRO, 1)
            mob:hideName(true)
        end, 
                })
    mob:setSpawn(x, y, z, rot)
    mob:setDropID(0) -- loot id
    mob:setUntargetable(true)
    mob:spawn()
                if mob then
                    table.insert(xi.events.harvestFestival.entitiesmob, mob:getID())
                end
            end
        end
    end
    for zoneId, data in pairs(xi.events.harvestFestival.npcdata) do
        local zone = GetZone(zoneId)
        if zone then
            for _, entry in pairs(data) do
                local rot  = entry[1]
                local x    = entry[2]
                local y    = entry[3]
                local z    = entry[4]
                local look = entry[5]

                local npc = zone:insertDynamicEntity({
                    objtype = xi.objType.NPC,
                    name = '     ',
                    look = look,
                    x = x,
                    y = y,
                    z = z,
                    rotation = rot,
                    widescan = 0,
                    entityFlags = 2075,
                    namevis = 64,
                    releaseIdOnDisappear = true,

         onTrade = function(player, npc, trade)
         end,
         onTrigger = function(player, npc)
         end,
                })
    npc:hideName(true)
    npc:setUntargetable(true)
    utils.unused(npc)

                if npc then
                    table.insert(xi.events.harvestFestival.entitiesnpc, npc:getID())
                end
            end
        end
    end
    for zoneId, data in pairs(xi.events.harvestFestival.targetdata) do
        local zone = GetZone(zoneId)
        if zone then
            for _, entry in pairs(data) do
                local rot  = entry[1]
                local x    = entry[2]
                local y    = entry[3]
                local z    = entry[4]
                local look = entry[5]

                local npc = zone:insertDynamicEntity({
                    objtype = xi.objType.NPC,
                    name = 'Candy Merchant',
                    look = look,
                    x = x,
                    y = y,
                    z = z,
                    rotation = rot,
                    widescan = 0,
                    releaseIdOnDisappear = true,

         onTrade = function(player, npc, trade)
                    local candyPoints = {
                        [6187] = 1,  -- Candy ID 6187 gives 1 point
                        [6188] = 3,  -- Candy ID 6188 gives 5 points
                        [6189] = 5,  -- Candy ID 6189 gives 10 points
                    }
                    local totalPoints = npc:getLocalVar('[CandyTraded]')  -- Total points to be rewarded
                    
                        for itemId, points in pairs(candyPoints) do
                            local count = trade:getItemQty(itemId)  -- Get the number of items traded with this ID
                            if count > 0 then
                                totalPoints = totalPoints + (count * points)  -- Calculate points based on item-specific values
                            end
                        end

                    if totalPoints > 0 then
                        -- Add the login points to the player's currency
                        player:addCurrency('Login_points', totalPoints)
                        player:tradeComplete()
                        -- Get the new total amount of login points
                        local newAmount = player:getCurrency('Login_points')

                        -- Notify the player of their new login points total
                        player:printToPlayer(string.format('You have received %d login point(s)! Total login points: %d', totalPoints, newAmount), xi.msg.channel.SYSTEM_3, '')
                    else
                        player:printToPlayer('You need to trade The correct type of candy to receive login points!', xi.msg.channel.SYSTEM_3, '')
                    end
         end,
         onTrigger = function(player, npc)
                local candyItems =
                {
                    [6187] = { -- Slimeulation Candy
					    {item = 5644, cost = 1, name = "Jack-o'-Pie"},
                        {item = 18103, cost = 20, name = "Pitchfork +1"},
                        {item = 17566, cost = 20, name = "Treat Staff +1"},
						{item = 20533, cost = 20, name = "Worm Feelers +1"},
						{item = 21154, cost = 20, name = "Mal. Masher +1"},
						{item = 21821, cost = 20, name = "Lost Sickle +1"},
                        {item = 203, cost = 10, name = "Bomb Lantern"},
                        {item = 204, cost = 10, name = "Pumpkin Lantern"},
                        {item = 205, cost = 10, name = "Mandra Lantern"},
                        {item = 456, cost = 10, name = "Pepo Lantern"},
                        {item = 457, cost = 10, name = "Cushaw Lantern"},
                        {item = 458, cost = 10, name = "Calabazilla Lant."},
                        {item = 3622, cost = 10, name = "Jack-o'-Pricket"},
                        {item = 3623, cost = 10, name = "Djinn Pricket"},
                        {item = 3624, cost = 10, name = "Korrigan Pricket"},
                        {item = 3646, cost = 10, name = "Mandra. Pricket"},
						{item = 4488, cost = 10, name = "Jack-o'-Lantern"},
                             },
                    [6188] = { -- She-Slime Candy
                        {item = 27718, cost = 10, name = "Worm Masque +1"},
                        {item = 10447, cost = 10, name = "Pyracmon Cap"},
                        {item = 26708, cost = 10, name = "Flan Masque +1"},
                        {item = 25587, cost = 10, name = "Kakai Cap +1"},
                        {item = 15176, cost = 10, name = "Pumpkin Head II"},
                        {item = 15177, cost = 10, name = "Horror Head II"},
                        {item = 16076, cost = 10, name = "Coven Hat"},
						{item = 27758, cost = 10, name = "Bomb Masque +1"},
                        {item = 26799, cost = 20, name = "Behe. Masque +1"},
                        {item = 25658, cost = 20, name = "Wyrm. Masque +1"},
                        {item = 25910, cost = 20, name = "Cait Sith Subligar"},
                             },
                    [6189] = { -- Metal Slime Candy
                        {item = 11482, cost = 5, name = "Eyepatch"},
						{item = 25606, cost = 5, name = "Agent Hood"},
						{item = 26975, cost = 5, name = "Agent Coat"},
                        {item = 27296, cost = 5, name = "Agent Pants"},
						{item = 27111, cost = 5, name = "Agent Cuffs"},
						{item = 27467, cost = 5, name = "Agent Boots"},
                        {item = 26799, cost = 5, name = "Behe. Masque +1"},
						{item = 25658, cost = 5, name = "Wyrm. Masque +1"},
						{item = 26955, cost = 10, name = "Behe. Suit +1"},
						{item = 25757, cost = 10, name = "Wyrm. Suit +1"},
						{item = 11301, cost = 10, name = "Eerie Cloak +1"},
						{item = 25712, cost = 10, name = "Botulus Suit +1"},
                        {item = 10178, cost = 50, name = "Cipher: Ullegore"},
                        -- Add more items here for Metal Slime Candy
                             }
                }

                        -- Helper functions for menu management
                        local menuManager = {}

                        function menuManager.delaySendMenu(player)
                                 player:timer(50, function(playerArg)
                                 playerArg:customMenu(menu)
                                 end)
                        end

                        function menuManager.createPages(items, itemsPerPage)
                                 local pages = {}
                                 for i = 1, #items, itemsPerPage do
                                     local page = {}
                                        for j = i, math.min(i + itemsPerPage - 1, #items) do
                                            table.insert(page, items[j])
                                        end
                                     table.insert(pages, page)
                                 end
                                 return pages
                        end

                        function menuManager.showItemMenu(player, currencyId, group, pageIndex)
                                 local itemsPerPage = 3
                                 local pages = menuManager.createPages(group, itemsPerPage)
                                 local totalPages = #pages
                                 local menuTitle = string.format('Select an Item to Purchase (Page %d of %d)', pageIndex, totalPages)
                                 local options = {}
                                 local page = pages[pageIndex] or {}
                                       for _, itemData in ipairs(page) do
                                           table.insert(options, {
                                              string.format('%s %d candy', itemData.name, itemData.cost),
                                                function(player)
                                                        if player:getItemCount(currencyId) >= itemData.cost then
                                                           player:delItem(currencyId, itemData.cost)
                                                           player:addItem(itemData.item)
                                                           -- Notify player of purchase
                                                           player:printToPlayer(string.format('You have received a %s.', itemData.name), xi.msg.channel.SYSTEM_3, '')
                                                        else
                                                           player:printToPlayer('You don\'t have enough candy!', xi.msg.channel.SYSTEM_3, '')
                                                        end
                                                menuManager.showItemMenu(player, currencyId, group, pageIndex)  -- Refresh menu after purchase
                                                end
                                           })
                                       end

                                    -- Add pagination options
                                    if pageIndex > 1 then
                                       table.insert(options, {
                                        'Prev Page',
                                        function(player)
                                            menuManager.showItemMenu(player, currencyId, group, pageIndex - 1)
                                        end
                                       })
                                    end

                                    if pageIndex < totalPages then
                                           table.insert(options, {
                                            'Next Page',
                                            function(player)
                                                menuManager.showItemMenu(player, currencyId, group, pageIndex + 1)
                                            end
                                           })
                                    end

                                    -- Add a "Go back" option to return to the main menu
                                    table.insert(options, {
                                     'Main Menu',
                                        function(player)
                                            print("Candy menu selected")  -- Debugging line
                                            menuManager.showMainMenu(player)  -- Ensure the function is properly called
                                        end
                                    })

                                    menu = {
                                        title = menuTitle,
                                            options = options
                                           }

                                        menuManager.delaySendMenu(player)
                        end

    function menuManager.showMainMenu(player)
    local options = {
        {
            'Nothing for now.',
            function(player)
                -- Exit the menu
            end
        },
        {
            'Items for Slimeulation Candy',
            function(player)
                menuManager.showItemMenu(player, 6187, candyItems[6187], 1)
            end
        },
        {
            'Items for She-Slime Candy',
            function(player)
                menuManager.showItemMenu(player, 6188, candyItems[6188], 1)
            end
        },
        {
            'Items for Metal Slime Candy',
            function(player)
                menuManager.showItemMenu(player, 6189, candyItems[6189], 1)
            end
        }
    }

    menu = {
        title = 'Choose Your Candy',
        options = options
    }

    menuManager.delaySendMenu(player)
end
            player:printToPlayer('You have candy? GIVE ME CANDY!!!!',0, 'Candy Merchant')
            player:printToPlayer('Ahem... i mean check my shop i only take candy not gil.',0, 'Candy Merchant')

            -- Display the main menu with candy options
            menuManager.showMainMenu(player)
         end,
                })
    npc:hideName(true)
    utils.unused(npc)
                if npc then
                    table.insert(xi.events.harvestFestival.entitiestargetnpc, npc:getID())
                end
            end
        end
    end
end
xi.events.harvestFestival.Ullegore = function(player)
local drops = {
    [1] = {reward = 6187, rate = 15},  -- Candy_1 with 15% chance
    [2] = {reward = 6188, rate = 10},  -- Candy_2 with 10% chance
    [3] = {reward = 6189, rate = 5},  -- Candy_3 with 5% chance
}

local affectedPlayers = {}  -- Table to track players affected by the costume effect

-- Define zones with their IDs and spawn locations
local cityZones = {
    {zone = 235, x = -282.5615, y = -10.0000, z = -108.8262, rotation = 212},  -- Bastok Markets
    {zone = 230, x = -0.5752, y = 1.8727, z = 4.6935, rotation = 50},       -- Southern San d'Oria
    {zone = 241, x = -33.5961, y = 3.0000, z = -60.5512, rotation = 241},      -- Windurst Woods
    {zone = 280, x = 354.4912, y = -0.0310, z = -587.1734, rotation = 196},      -- Mog Garden
}

local zoneNames = {
    [235] = 'Bastok Markets',
    [230] = 'Southern San d\'Oria',
    [241] = 'Windurst Woods',
    [280] = 'The Hang Out', -- Mog Garden
}

-- New costume IDs list
local costumeIds = {3661, 260, 261, 263, 281, 368, 1136, 1727, 1728, 1801, 1799, 1841, 2032, 2244, 2372, 2565, 2616}

local function AllAnnouncement(player)
    for _, zoneId in pairs(xi.zone) do
        SendLuaFuncStringToZone(zoneId, string.format([[
            local zoneId = %i
            local ID = zones[zoneId]
            local zone = GetZone(zoneId)
            for _, player in pairs(zone:getPlayers()) do
            player:printToPlayer('The Demon King Ullegore has appeared and is stealing all the candy, Find him and beat him like a pinata to get the candy back!',xi.msg.channel.SYSTEM_3)
            end
        ]], zoneId))
    end
end

----------------------------------- Ullegore ----------------------------------------------
if GetServerVariable('[Halloween]EventRestart') == nil then
   SetServerVariable('[Halloween]EventRestart', os.time() + 1800)
end

                if GetServerVariable('[Halloween]EventRestart') <= os.time() then
                        AllAnnouncement(player)
                        SetServerVariable('[Halloween]EventRestart', os.time() + 1800) -- 30 minutes
                        -- Randomly select one of the predefined city zones
                            local spawnLocation = cityZones[math.random(#cityZones)]
                            local selectedZone = spawnLocation.zone
                        -- Announce the selected zone using the predefined zoneNames table
                            local zoneName = zoneNames[selectedZone] or 'Unknown Zone'
                        -- Retrieve the zone or instance object for the selected zone
                        local zoneOrInstanceObj = GetZone(selectedZone)

                        local mob = zoneOrInstanceObj:insertDynamicEntity({
                            objtype = xi.objType.MOB,
                            name = 'Ullegore',
                            look = 3607,
                            x = spawnLocation.x,
                            y = spawnLocation.y,
                            z = spawnLocation.z,
                            rotation = spawnLocation.rotation,
                            groupId = 41,
                            groupZoneId = 7,
                            allegiance = 0,
                            widescan = 1,
                            onMobSpawn = function(mob, playerArg, optParams)


                        local zoneNamez = mob:getZone():getID()
                            local zoneMask = 0
                            if zoneMask == 0 then
                                for _, zoneString in pairs(zoneNames) do
                                    if zoneNamez == _ then
                                       zoneMask = zoneString
                                    end
                                end
                            end
                            local players = mob:getZone():getPlayers()
                            
                                for _, member in pairs(players) do
                                       member:printToPlayer(string.format('Ullegore is lurking in %s !', zoneMask),xi.msg.channel.SYSTEM_3)
                                end
                                mob:setMobLevel(10)  -- Set mob level
                                mob:setMobMod(xi.mobMod.ROAM_DISTANCE, 50)
                                mob:setMobMod(xi.mobMod.NO_AGGRO, 1)
                                mob:addMod(xi.mod.REGEN, 1000)
                                mob:addMod(xi.mod.MAGIC_DAMAGE, -800)
                                mob:addMod(xi.mod.ACC, -1000)
                                mob:addMod(xi.mod.EVA, -500)
                                mob:addMod(xi.mod.DEF, -500)
                                mob:setUnkillable(true)
                                mob:setLocalVar('UllegoreDespawn', os.time() + 600) -- Set despawn timer to 10 minutes (600 seconds)
                            end,
                            onMobFight = function(mob, target)
                                if mob:getLocalVar('UllegoreDespawn') <= os.time() then
                                    DespawnMob(mob:getID())
                                end
                            end,
                            onMobRoam = function(mob)
                                if mob:getLocalVar('UllegoreDespawn') <= os.time() then
                                    DespawnMob(mob:getID())
                                end
                            end,
                            onMobDespawn = function(mob, playerArg, optParams)
                        local zoneNamez = mob:getZone():getID()
                            local zoneMask = 0
                            if zoneMask == 0 then
                                for _, zoneString in pairs(zoneNames) do
                                    if zoneNamez == _ then
                                       zoneMask = zoneString
                                    end
                                end
                            end
                                local players = mob:getZone():getPlayers()
                                for _, member in pairs(players) do
                                member:printToPlayer('Ullegore has fled ' .. zoneMask .. ' and slinked back into the shadows..... For now.', xi.msg.channel.SYSTEM_3)
                                end
                                -- Remove costume effect from all affected players
                                for _, player in pairs(affectedPlayers) do
                                    player:setCostume2(0)  -- Remove costume
                                    player:printToPlayer('The curse has been lifted from you and you have been transformed back into yourself.', xi.msg.channel.SYSTEM_3)
                                end
                                affectedPlayers = {}  -- Clear the table
                            end,
                            releaseIdOnDisappear = true,
                            specialSpawnAnimation = true,
                        })

                        mob:setSpawn(spawnLocation.x, spawnLocation.y, spawnLocation.z, spawnLocation.rotation)
                        mob:setDropID(0) -- No loot!
                        mob:setMobMod(xi.mobMod.NO_DROPS, 1)
                        mob:setClaimable(false)
                        mob:spawn()

                        mob:setLocalVar('DespawnTime', os.time()) -- Despawn after 10 minutes (600 seconds)
                        mob:setLocalVar('Killed', 0) -- Initialize 'Killed' variable

                        mob:addListener('TICK', 'MOB_DESPAWN_CHECK', function(mob)
                            if mob:getLocalVar('DespawnTime') + 600 <= os.time() then
                                DespawnMob(mob:getID())
                            end
                        end)

                        -- Add a listener to apply the costume effect when a player deals damage to the mob
                        mob:addListener('TAKE_DAMAGE', 'APPLY_COSTUME_EFFECT', function(mob, damage, attacker, attackType, damageType)
                            -- Check if the attacker already has a costume applied
                            if not affectedPlayers[attacker:getID()] then
                                -- Randomly select a costume ID
                                local costumeId = costumeIds[math.random(#costumeIds)]
            
                                -- Apply the selected costume effect to the attacker
                                attacker:setCostume2(costumeId)

                                -- Add attacker to affected players list
                                affectedPlayers[attacker:getID()] = attacker
                            end

                            -- Handle item drops
                            local rand = math.random(1, 100)
                            local itemToDrop = nil
                            if rand <= drops[1].rate then
                                itemToDrop = drops[1].reward
                            elseif rand <= drops[2].rate then
                                itemToDrop = drops[2].reward
                            elseif rand <= drops[3].rate then
                                itemToDrop = drops[3].reward
                            end
                            if itemToDrop then
                                npcUtil.giveItem(attacker, { { itemToDrop, 1 } })
                            end
                        end)
                end
end



event:setStartFunction(function()
    xi.events.harvestFestival.setMusic(harvestFestivalMusic)
    xi.events.harvestFestival.showEntities(true)
end)

event:setEndFunction(function()
    xi.events.harvestFestival.setMusic(grandDuchyOfJeunoMusic)
    xi.events.harvestFestival.showEntities(false)
end)

return event