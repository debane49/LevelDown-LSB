-----------------------------------
require("modules/module_utils")
-----------------------------------
local m = Module:new("gmeventnpc")

local menu  = {}
local page1 = {}
local page2 = {}
local page3 = {}
local page4 = {}
local page5 = {}
local page6 = {}
local page7 = {}
local page8 = {}
local delaySendMenu = function(player)
      player:timer(50, function(playerArg)
        playerArg:customMenu(menu)
    end)
end

menu =
{
    title = 'What whould you like to do?',
    options = {},
}
page1 =
{
    {
        'Nothing!',
        function(player)
        end,
    },
    {
        'Hide and Seek Rewards',
         function(player)
         if player:getCharVar('[GMEvent]HS') == 1 then
                    menu.options = page2
                    delaySendMenu(player)
         else
            player:printToPlayer('You are not a winner in this event!. ', 0, 'General')                    
         end
         end,
    },
    {
        'Naked run to Jeuno',
         function(player)
         if player:getCharVar('[GMEvent]NR') == 1 then
                    menu.options = page2
                    delaySendMenu(player)
         else
            player:printToPlayer('You are not a winner in this event!. ', 0, 'General')                    
         end
         end,
    },
    --[[
    {
        'Another Event!',
         function(player)              
         end,
    },
    {
        'Next Page!',
         function(player)          
         end,
    },
    ]]--
}
page2 =
{
    {
        '5,000,000 Gil!',
         function(player)
           player:setCharVar('GMEitem', 65535 )
                    menu.options = page3
                    delaySendMenu(player)  
         end
    },
    {
        'Tokko Weapon!',
        function(player)
                    menu.options = page4
                    delaySendMenu(player)          
        end,
    },
    {
        'Level Craft to 100!',
        function(player)
                    menu.options = page7
                    delaySendMenu(player)          
        end,
    },
    {
        'Level Current job to 99!',
        function(player)
           player:setCharVar('GMEitem', 99 )
                    menu.options = page3
                    delaySendMenu(player)          
        end,
    },
    {
        'Back!',
        function(player)
                    menu.options = page1
                    delaySendMenu(player)           
        end,
    },
}
page3 =
{
    {
        'Yes',
         function(player)
         if player:getCharVar('GMEitem') == 65535 then
         npcUtil.giveItem(player, { { 65535, 5000000 } })
         player:setCharVar('GMEitem', 0)
         player:setCharVar('[GMEvent]HS', 0)
         end
         if player:getCharVar('GMEitem') == 99 then
         player:setLevel(99)
         player:setCharVar('GMEitem', 0)
         player:setCharVar('[GMEvent]HS', 0)
         end
         if player:getCharVar('GMEitem') == 21515 then
            npcUtil.giveItem(player, { { 21515, 1 } })
            player:setCharVar('GMEitem', 0)
            player:setCharVar('[GMEvent]HS', 0)
         elseif player:getCharVar('GMEitem') == 21561 then
                npcUtil.giveItem(player, { { 21561, 1 } })
                player:setCharVar('GMEitem', 0)
                player:setCharVar('[GMEvent]HS', 0)
         elseif player:getCharVar('GMEitem') == 21617 then
                npcUtil.giveItem(player, { { 21617, 1 } })
                player:setCharVar('GMEitem', 0)
                player:setCharVar('[GMEvent]HS', 0)
         elseif player:getCharVar('GMEitem') == 21670 then
                npcUtil.giveItem(player, { { 21670, 1 } })
                player:setCharVar('GMEitem', 0)
                player:setCharVar('[GMEvent]HS', 0)
         elseif player:getCharVar('GMEitem') == 21718 then
                npcUtil.giveItem(player, { { 21718, 1 } })
                player:setCharVar('GMEitem', 0)
                player:setCharVar('[GMEvent]HS', 0)
         elseif player:getCharVar('GMEitem') == 21775 then
                npcUtil.giveItem(player, { { 21775, 1 } })
                player:setCharVar('GMEitem', 0)
                player:setCharVar('[GMEvent]HS', 0)
         elseif player:getCharVar('GMEitem') == 21826 then
                npcUtil.giveItem(player, { { 21826, 1 } })
                player:setCharVar('GMEitem', 0)
                player:setCharVar('[GMEvent]HS', 0)
         elseif player:getCharVar('GMEitem') == 21827 then
                npcUtil.giveItem(player, { { 21827, 1 } })
                player:setCharVar('GMEitem', 0)
                player:setCharVar('[GMEvent]HS', 0)
         elseif player:getCharVar('GMEitem') == 21918 then
                npcUtil.giveItem(player, { { 21918, 1 } })
                player:setCharVar('GMEitem', 0)
                player:setCharVar('[GMEvent]HS', 0)
         elseif player:getCharVar('GMEitem') == 21971 then
                npcUtil.giveItem(player, { { 21971, 1 } })
                player:setCharVar('GMEitem', 0)
                player:setCharVar('[GMEvent]HS', 0)
         elseif player:getCharVar('GMEitem') == 22027 then
                npcUtil.giveItem(player, { { 22027, 1 } })
                player:setCharVar('GMEitem', 0)
                player:setCharVar('[GMEvent]HS', 0)
         elseif player:getCharVar('GMEitem') == 22082 then
                npcUtil.giveItem(player, { { 22082, 1 } })
                player:setCharVar('GMEitem', 0)
                player:setCharVar('[GMEvent]HS', 0)
         elseif player:getCharVar('GMEitem') == 22108 then
                npcUtil.giveItem(player, { { 22108, 1 } })
                player:setCharVar('GMEitem', 0)
                player:setCharVar('[GMEvent]HS', 0)
         elseif player:getCharVar('GMEitem') == 22214 then
                npcUtil.giveItem(player, { { 22214, 1 } })
                player:setCharVar('GMEitem', 0)
                player:setCharVar('[GMEvent]HS', 0)
         end
         if player:getCharVar('GMEitem') == 90000 then
            player:setSkillRank(49, 10)
            player:setSkillLevel(49, 1000)
            player:setCharVar('GMEitem', 0)
            player:setCharVar('[GMEvent]HS', 0)
         elseif player:getCharVar('GMEitem') == 90001 then
                player:setSkillRank(53, 10)
                player:setSkillLevel(53, 1000)
                player:setCharVar('GMEitem', 0)
                player:setCharVar('[GMEvent]HS', 0)
         elseif player:getCharVar('GMEitem') == 90002 then
                player:setSkillRank(51, 10)
                player:setSkillLevel(51, 1000)
                player:setCharVar('GMEitem', 0)
                player:setCharVar('[GMEvent]HS', 0)
         elseif player:getCharVar('GMEitem') == 90003 then
                player:setSkillRank(50, 10)
                player:setSkillLevel(50, 1000)
                player:setCharVar('GMEitem', 0)
                player:setCharVar('[GMEvent]HS', 0)
         elseif player:getCharVar('GMEitem') == 90004 then
                player:setSkillRank(56, 10)
                player:setSkillLevel(56, 1000)
                player:setCharVar('GMEitem', 0)
                player:setCharVar('[GMEvent]HS', 0)
         elseif player:getCharVar('GMEitem') == 90005 then
                player:setSkillRank(55, 10)
                player:setSkillLevel(55, 1000)
                player:setCharVar('GMEitem', 0)
                player:setCharVar('[GMEvent]HS', 0)
         elseif player:getCharVar('GMEitem') == 90006 then
                player:setSkillRank(54, 10)
                player:setSkillLevel(54, 1000)
                player:setCharVar('GMEitem', 0)
                player:setCharVar('[GMEvent]HS', 0)
         elseif player:getCharVar('GMEitem') == 90007 then
                player:setSkillRank(52, 10)
                player:setSkillLevel(52, 1000)
                player:setCharVar('GMEitem', 0)
                player:setCharVar('[GMEvent]HS', 0)
         elseif player:getCharVar('GMEitem') == 90008 then
                player:setSkillRank(48, 10)
                player:setSkillLevel(48, 1000)
                player:setCharVar('GMEitem', 0)
                player:setCharVar('[GMEvent]HS', 0)
         end

         end
    },
    {
        'No',
        function(player)
                    menu.options = page2
                    delaySendMenu(player)                 
        end,
    },
}
page4 =
{
    {
        'Nothing for now.',
        function(player)
        end
    },
    {
        'Knuckles',
         function(player)
           player:setCharVar('GMEitem', 21515)
           menu.options = page3
            delaySendMenu(player)
         end
    },
    {
        'Knife',
         function(player)
           player:setCharVar('GMEitem', 21561)
           menu.options = page3
            delaySendMenu(player)
         end
    },
    {
        'Sword',
         function(player)
           player:setCharVar('GMEitem', 21617)
           menu.options = page3
            delaySendMenu(player)
         end
    },
    {
        'Claymore',
         function(player)
           player:setCharVar('GMEitem', 21670)
           menu.options = page3
            delaySendMenu(player)
         end
    },
    {
        'Axe',
         function(player)
           player:setCharVar('GMEitem', 21718)
           menu.options = page3
            delaySendMenu(player)
         end
    },
    {
        'Previouse Page',
         function(player)
           menu.options = page2
            delaySendMenu(player)
         end
    },
        {
        'Next Page',
         function(player)
            menu.options = page5
            delaySendMenu(player)
         end
    },
}
page5 =
{
    {
        'Nothing for now.',
        function(player)
        end
    },
    {
        'Chopper',
         function(player)
           player:setCharVar('GMEitem', 21775)
           menu.options = page3
            delaySendMenu(player)
         end
    },
    {
        'Scyth',
         function(player)
           player:setCharVar('GMEitem', 21826)
           menu.options = page3
            delaySendMenu(player)
         end
    },
    {
        'Lance',
         function(player)
           player:setCharVar('GMEitem', 21879)
           menu.options = page3
            delaySendMenu(player)
         end
    },
    {
        'Katana',
         function(player)
           player:setCharVar('GMEitem', 21918)
           menu.options = page3
            delaySendMenu(player)
         end
    },
    {
        'Tachi',
         function(player)
           player:setCharVar('GMEitem', 21971)
           menu.options = page3
            delaySendMenu(player)
         end
    },
    {
        'Previouse Page',
         function(player)
           menu.options = page4
            delaySendMenu(player)
         end
    },
        {
        'Next Page',
         function(player)
            menu.options = page6
            delaySendMenu(player)
         end
    },
}
page6 =
{
    {
        'Nothing for now.',
        function(player)
        end
    },
    {
        'Rod',
         function(player)
           player:setCharVar('GMEitem', 22027)
           menu.options = page3
            delaySendMenu(player)
         end
    },
    {
        'Staff',
         function(player)
           player:setCharVar('GMEitem', 22082)
           menu.options = page3
            delaySendMenu(player)
         end
    },
    {
        'Bow',
         function(player)
           player:setCharVar('GMEitem', 22108)
           menu.options = page3
            delaySendMenu(player)
         end
    },
    {
        'Grip',
         function(player)
           player:setCharVar('GMEitem', 22214)
           menu.options = page3
            delaySendMenu(player)
         end
    },
     {
        'Previouse Page',
         function(player)
           menu.options = page5
            delaySendMenu(player)
         end
    },
}
page7 =
{
    {
        'Nothing for now.',
        function(player)
        end
    },
    {
        'WoodWorking',
         function(player)
           player:setCharVar('GMEitem', 90000)
           menu.options = page3
            delaySendMenu(player)
         end
    },
    {
        'LeatherCraft',
         function(player)
           player:setCharVar('GMEitem', 90001)
           menu.options = page3
            delaySendMenu(player)
         end
    },
    {
        'GoldSmithing',
         function(player)
           player:setCharVar('GMEitem', 90002)
           menu.options = page3
            delaySendMenu(player)
         end
    },
    {
        'Smithing',
         function(player)
           player:setCharVar('GMEitem', 90003)
           menu.options = page3
            delaySendMenu(player)
         end
    },
    {
        'Previouse Page',
         function(player)
           menu.options = page2
            delaySendMenu(player)
         end
    },
    {
        'Next Page',
         function(player)
           menu.options = page8
            delaySendMenu(player)
         end
    },
}
page8 =
{
    {
        'Nothing for now.',
        function(player)
        end
    },
    {
        'Cooking',
         function(player)
           player:setCharVar('GMEitem', 90004)
           menu.options = page3
            delaySendMenu(player)
         end
    },
    {
        'Alchemy',
         function(player)
           player:setCharVar('GMEitem', 90005)
           menu.options = page3
            delaySendMenu(player)
         end
    },
    {
        'BoneCraft',
         function(player)
           player:setCharVar('GMEitem', 90006)
           menu.options = page3
            delaySendMenu(player)
         end
    },
    {
        'ClothCraft',
         function(player)
           player:setCharVar('GMEitem', 90007)
           menu.options = page3
            delaySendMenu(player)
         end
    },
    {
        'Fishing',
         function(player)
           player:setCharVar('GMEitem', 90008)
           menu.options = page3
            delaySendMenu(player)
         end
    },
    {
        'Previouse Page',
         function(player)
           menu.options = page7
            delaySendMenu(player)
         end
    },
}

m:addOverride('xi.zones.Celennia_Memorial_Library.Zone.onInitialize', function(zone)
    -- Call the zone's original function for onInitialize
    super(zone)
    local GMNpc = zone:insertDynamicEntity({

        -- NPC or MOB
        objtype = xi.objType.NPC,
        name = 'GM Event NPC',
        look = 1548,
        x = -114.8606,
        y = -2.1500,
        z = -88.3228,
        rotation = 32,
        widescan = 1,

        onTrigger = function(player, npc)
            if player:getCharVar('[GMEvent]HS') == 0 or
               player:getCharVar('[GMEvent]NR') == 0 then
               player:printToPlayer('I am here to distribute rewards to the winners for the GM Events!. ', 0, 'General')
               player:printToPlayer('I do not show that you have won any events yet, come back after you have won!. ', 0, 'General')
            elseif player:getCharVar('[GMEvent]HS') == 1 or
                   player:getCharVar('[GMEvent]NR') == 1 then
               player:printToPlayer('Congratulations on your win, please select a reward!. ', 0, 'General')
                    menu.options = page1
                    delaySendMenu(player)
            end
        end,

    })
    utils.unused(GMNpc)
end)

m:addOverride('xi.zones.Celennia_Memorial_Library.Zone.onInitialize', function(zone)
    -- Call the zone's original function for onInitialize
    super(zone)
    local GMNpc = zone:insertDynamicEntity({

        -- NPC or MOB
        objtype = xi.objType.NPC,
        name = 'GM Event NPC',
        look = 1548,
        x = -114.8606,
        y = -2.1500,
        z = -88.3228,
        rotation = 32,
        widescan = 1,

        onTrigger = function(player, npc)
            if player:getCharVar('[GMEvent]HS') == 0 or
               player:getCharVar('[GMEvent]NR') == 0 then
               player:printToPlayer('I am here to distribute rewards to the winners for the GM Events!. ', 0, 'General')
               player:printToPlayer('I do not show that you have won any events yet, come back after you have won!. ', 0, 'General')
            elseif player:getCharVar('[GMEvent]HS') == 1 or
                   player:getCharVar('[GMEvent]NR') == 1 then
               player:printToPlayer('Congratulations on your win, please select a reward!. ', 0, 'General')
                    menu.options = page1
                    delaySendMenu(player)
            end
        end,

    })
    utils.unused(GMNpc)
end)


m:addOverride('xi.zones.Batallia_Downs.Zone.onInitialize', function(zone)
    -- Call the zone's original function for onInitialize
    super(zone)
    local npc = zone:insertDynamicEntity({

        -- NPC or MOB
        objtype = xi.objType.NPC,
        name = 'Event NPC',
        look = 2423,
        x = 446.1063,
        y = 8.1920,
        z = -154.1094,
        rotation = 139,
        widescan = 0,

        onTrigger = function(player, npc)
        if player:getCharVar('NakedRun') >= 1 then
        local playerz = player:getName()
        player:printToArea(string.format('GM General : Congratulations %s, you have made it in 1st place!!!!!!', playerz), xi.msg.channel.SYSTEM_3, 0, '')
        player:printToArea(string.format('GM General : Please see the GM Event NPC in the Library to claim your reward!'), xi.msg.channel.SYSTEM_3, 0, '')
        player:printToArea(string.format('GM General : Thank you to everyone who participated in the event!'), xi.msg.channel.SYSTEM_3, 0, '')
        player:setCharVar('[GMEvent] NR', 1)
            local alliance = player:getAlliance()
                for _, partyMember in ipairs(alliance) do
                    if partyMember:getCharVar('NakedRun') >= 1 then
                       partyMember:delStatusEffect(xi.effect.EGG)
                    end
                end
        else
        player:printToPlayer('Your are not a participant in the Run to Jeuno event!')
        end
        end,
    })
    utils.unused(npc)
end)
return m


