-----------------------------------
-- Area: Celennia Memorial Library (284)
-- Reja_Ygridhi
-----------------------------------
require('scripts/enum/item')
require('scripts/globals/shop')
-----------------------------------
local ensureTable = function(str)
    local parts = utils.splitStr(str, '.')
    local table = _G;
    for _, part in ipairs(parts) do
        table[part] = table[part] or {}
        table = table[part]
    end
end
    ensureTable('xi.zones.Celennia_Memorial_Library.npcs.Reja_Ygridhi')

local m = Module:new('freerelic')

local ID = zones[xi.zone.CELENNIA_MEMORIAL_LIBRARY]
local entity = {}

local menu  = {}
local page1 = {}
local page2 = {}
local page3 = {}
local page4 = {}



local delaySendMenu = function(player)
    player:timer(50, function(playerArg)
        playerArg:customMenu(menu)
    end)
end

menu =
{
    title = 'What would you like?',
    options = {},
}

page1 =
{
    {
        'Nothing for now.',
        function(player)
        end
    },
    {
        'Gjallarhorn',
         function(player)
           player:setLocalVar('RelicSelect', 18572)
           menu.options = page4
            delaySendMenu(player)
         end
    },
    {
        'Spharai',
         function(player)
           player:setLocalVar('RelicSelect', 19746)
           menu.options = page4
            delaySendMenu(player)
         end
    },
    {
        'Mandau',
         function(player)
           player:setLocalVar('RelicSelect', 19747)
           menu.options = page4
            delaySendMenu(player)
         end
    },
    {
        'Excalibur',
         function(player)
           player:setLocalVar('RelicSelect', 19748)
           menu.options = page4
            delaySendMenu(player)
         end
    },
    {
        'Ragnarok',
         function(player)
           player:setLocalVar('RelicSelect', 19749)
           menu.options = page4
            delaySendMenu(player)
         end
    },
    {
        'Guttler',
         function(player)
           player:setLocalVar('RelicSelect', 19750)
           menu.options = page4
            delaySendMenu(player)
         end
    },
        {
        'Next Page',
         function(player)
            menu.options = page2
            delaySendMenu(player)
         end
    },
}
page2 =
{
        {
        'Bravura',
         function(player)
           player:setLocalVar('RelicSelect', 19751)
           menu.options = page4
            delaySendMenu(player)
         end
    },
        {
        'Gungnir',
         function(player)
           player:setLocalVar('RelicSelect', 19752)
           menu.options = page4
            delaySendMenu(player)
         end
    },
            {
        'Apocalypse',
         function(player)
           player:setLocalVar('RelicSelect', 19753)
           menu.options = page4
            delaySendMenu(player)
         end
    },
            {
        'Kikoku',
         function(player)
           player:setLocalVar('RelicSelect', 19754)
           menu.options = page4
            delaySendMenu(player)
         end
    },
            {
        'Amanomurakumo',
         function(player)
           player:setLocalVar('RelicSelect', 19755)
           menu.options = page4
            delaySendMenu(player)
         end
    },
            {
        'Mjollnir',
         function(player)
           player:setLocalVar('RelicSelect', 19756)
           menu.options = page4
            delaySendMenu(player)
         end
    },
            {
        'Previous Page',
         function(player)
           menu.options = page1
           delaySendMenu(player)
         end
    },
         {
         'Next Page',
         function(player)
           menu.options = page3
           delaySendMenu(player)
         end
    },
}
page3 =
{
                {
        'Claustrum',
         function(player)
           player:setLocalVar('RelicSelect', 19757)
           menu.options = page4
            delaySendMenu(player)
         end
    },
        {
        'Annihilator',
         function(player)
           player:setLocalVar('RelicSelect', 19758)
           menu.options = page4
            delaySendMenu(player)
         end
    },
        {
        'Yoichinoyumi',
         function(player)
           player:setLocalVar('RelicSelect', 19759)
           menu.options = page4
            delaySendMenu(player)
         end
    },
         {
        'Previous Page',
         function(player)
           menu.options = page2
           delaySendMenu(player)
         end
    },
}

page4 =
{
        {
        'Yes',
         function(player)
         local Relic = player:getLocalVar('RelicSelect')
               if player:hasItem(Relic) or
               player:getFreeSlotsCount() < 1 then
               player:printToPlayer('Please check your inventory and try again!')
               return
               else
               npcUtil.giveItem(player, Relic)
               player:setCharVar('FreeRelic', 2)
               end
         end
    },
        {
        'No',
         function(player)

         end
    },
}

local freeaf =
{
[ 1] = {reward = {27663,27807,27943,28090,28223}},
[ 2] = {reward = {27664,27808,27944,28091,28224}},
[ 3] = {reward = {27665,17809,27945,28092,28225}},
[ 4] = {reward = {27666,27810,27946,28093,28226}},
[ 5] = {reward = {27667,27811,27947,28094,28227}},
[ 6] = {reward = {27668,27812,27948,28095,28228}},
[ 7] = {reward = {27669,27813,27949,28096,28229}},
[ 8] = {reward = {27670,27814,27950,28097,28230}},
[ 9] = {reward = {27671,27815,27951,28098,28231}},
[10] = {reward = {27672,27816,27952,28099,28232}},
[11] = {reward = {27673,27817,27953,28100,28233}},
[12] = {reward = {27674,27818,27954,28101,28234}},
[13] = {reward = {27675,27819,27955,28102,28235}},
[14] = {reward = {27676,27820,27956,28103,28236}},
[15] = {reward = {27677,27821,27957,28104,28237}},
[16] = {reward = {27678,27822,27958,28105,28238}},
[17] = {reward = {27679,27823,27959,28106,28239}},
[18] = {reward = {27680,27824,27960,28107,28240}},
[19] = {reward = {27681,27825,27961,28108,28241}},
[20] = {reward = {27683,27827,27963,28110,28243}},
[21] = {reward = {27786,27926,28066,28206,28346}},
[22] = {reward = {27787,27927,28067,28207,28347}},
}



m:addOverride('xi.zones.Celennia_Memorial_Library.npcs.Reja_Ygridhi.onTrigger', function(player, npc, csid, option)
    if player:getRank(player:getNation()) == 10 and
       player:getCharVar('FreeRelic') ~= 2 then
       player:setCharVar('FreeRelic', 1)
       player:printToPlayer('Congradulations on reaching Rank 10, as a reward you may choose one', 0, npc:getPacketName())
       player:printToPlayer('free Lvl 99 Relic. Choose wisely! Refunds or exchanges will not be offered!', 0, npc:getPacketName())
    end
      if player:getCharVar('FreeRelic') == 1 then
          menu.options = page1
          delaySendMenu(player)
      end
      local lvl = player:getMainLvl()
      local job = player:getMainJob()
      local varName = '[AF] Free - ' .. job

      local lvl = player:getMainLvl()
      local job = player:getMainJob()    
      if lvl == 99 and
            player:getCharVar('FreeAFArmor') ~= 2 then
            player:setCharVar('FreeAFArmor', 1)
      end           
           if player:getCharVar('FreeAFArmor') == 1 and lvl == 99 then
              if player:getFreeSlotsCount() < 5 then
                 player:printToPlayer('Please check your inventory and try again!')
                 return
              else
                 player:printToPlayer('As an achievement award for reaching level 99, We give you, your first Reforged Artifact Armor +1...', 0, npc:getPacketName())
            			for k, v in pairs(freeaf) do
                             if job == k then
                                npcUtil.giveItem(player, v.reward)
                             end
                        end
                                player:setCharVar('FreeAFArmor', 2)
              end
           end

end)

return m

