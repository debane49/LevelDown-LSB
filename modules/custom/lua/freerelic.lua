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
    [ 1] = {reward = {27684, 27828, 27964, 28111, 28244}},
    [ 2] = {reward = {27685, 27829, 27965, 28112, 28245}},
    [ 3] = {reward = {27686, 27830, 27966, 28113, 28246}},
    [ 4] = {reward = {27687, 27831, 27967, 28114, 28247}},
    [ 5] = {reward = {27688, 27832, 27968, 28115, 28248}},
    [ 6] = {reward = {27689, 27833, 27969, 28116, 28249}},
    [ 7] = {reward = {27690, 27834, 27970, 28117, 28250}},
    [ 8] = {reward = {27691, 27835, 27971, 28118, 28251}},
    [ 9] = {reward = {27692, 27836, 27972, 28119, 28252}},
    [10] = {reward = {27693, 27837, 27973, 28120, 28253}},
    [11] = {reward = {27694, 27838, 27974, 28121, 28254}},
    [12] = {reward = {27695, 27839, 27975, 28122, 28255}},
    [13] = {reward = {27696, 27840, 27976, 28123, 28256}},
    [14] = {reward = {27697, 27841, 27977, 28124, 28257}},
    [15] = {reward = {27698, 27842, 27978, 28125, 28258}},
    [16] = {reward = {27699, 27843, 27979, 28126, 28259}},
    [17] = {reward = {27700, 27844, 27980, 28127, 28260}},
    [18] = {reward = {27701, 27845, 27981, 28128, 28261}},
    [19] = {reward = {27702, 27846, 27982, 28129, 28262}},
    [20] = {reward = {27704, 27848, 27984, 28131, 28264}},
    [21] = {reward = {27705, 27849, 27985, 28132, 28265}},
    [22] = {reward = {27706, 27850, 27986, 28133, 28266}},
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

