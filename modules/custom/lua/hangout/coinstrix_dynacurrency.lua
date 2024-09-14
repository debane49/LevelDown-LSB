-------------------------------
require("modules/module_utils")
-------------------------------

local m = Module:new("coinstrix_dynacurrency")

--[[local menu    = {}
local page1   = {} --landing
local page2   = {} --List Stored singles
local page3   = {} --list stored hundreds
local page4   = {} --list stored 10000s
local page5   = {} --Store, Withdraw, or Trade
local page6   = {} --Withdraw Singles
local page7   = {} --Withdraw 100s
local page8   = {} --Withdraw 10000s

local delaySendMenu = function(player)
    player:timer(50,function(playerArg)
        playerArg:customMenu(menu)
    end)
end

menu =
{
    title   = 'What would you like to do?',
    options = {}
}
page1 =
{
    {
        'Convert Single to 100 Piece',
        function(player)
            player:printToPlayer('Trade 100 Singles for a Hundred Piece.',0,'Coinstrix')
        end
    },
    {
        'Convert 100 to 10,000',
        function(player)
            player:printToPlayer('Trade 100 Hundred Pieces for a 10,000 Piece.',0,'Coinstrix')
        end
    },
    {
        'List Stored Currency',
        function(playerArg)
            menu.options = page2
            delaySendMenu(playerArg)
        end
    },
    {
        'Nothing',
        function(player)
        end
    }
}
page2 =
{
    {
        'T. Whiteshells',
        function(player)
            player:printToPlayer(string.format('You currently have %s T. Whiteshell(s) stored.',player:getCharVar('Whiteshell')),0,'Coinstrix')
        end
    },
    {
        'O. Bronzepiece',
        function(player)
            player:printToPlayer(string.format('You currently have %s O. Bronzepiece(s) stored.',player:getCharVar('Bronzepiece')),0,'Coinstrix')
        end
    },
    {
        'One Byne Bill',
        function(player)
            player:printToPlayer(string.format('You cuurently have %s One Byne Bill(s) stored.',player:getCharVar('Byne')),0,'Coinstrix')
        end
    },
    {
        'Next Page',
        function(playerArg)
            menu.options = page3
            delaySendMenu(playerArg)
        end
    },
    {
        'Go Back',
        function(playerArg)
            menu.options = page1
            delaySendMenu(playerArg)
        end
    }
}
page3 =
{
    {
        'L. Jadeshell',
        function(player)
            player:printToPlayer(string.format('You currently have %s L. Jadeshell(s) stored.',player:getCharVar('Jadeshell')),0,'Coinstrix')
        end
    },
    {
        'M. Silverpiece',
        function(player)
            player:printToPlayer(string.format('You currently have %s M. Silverpiece(s) stored.',player:getCharVar('Silverpiece')),0,'Coinstrix')
        end
    },
    {
        'Hundred Byne Bill',
        function(player)
            player:printToPlayer(string.format('You currently have %s Hundred Byne Bill(s) stored.',player:getCharVar('HundredByne')),0,'Coinstrix')
        end
    },
    {
        'Next Page',
        function(playerArg)
            menu.options = page4
            delaySendMenu(playerArg)
        end
    },
    {
        'Go Back',
        function(playerArg)
            menu.options = page2
            delaySendMenu(playerArg)
        end
    }
}
page4 =
{
    {
        'R. Stripeshell',
        function(player)
            player:printToPlayer(string.format('You currently have %s R. Stripeshell(s) stored.',player:getCharVar('Stripeshell')),0,'Coinstrix')
        end
    },
    {
        'R. Goldpiece',
        function(player)
            player:printToPlayer(string.format('You currently have %s R. Goldpiece(s) stored.',player:getCharVar('Goldpiece')),0,'Coinstrix')
        end
    },
    {
        'Ten Thousand Byne Bill',
        function(player)
            player:printToPlayer(string.format('You currently have %s Ten Thousand Byne Bill(s) stored.',player:getCharVar('TenkByne')),0,'Coinstrix')
        end
    },
    {
        'Go Back',
        function(playerArg)
            menu.options = page3
            delaySendMenu(playerArg)
        end
    },
    {
        'Main Menu',
        function(playerArg)
            menu.options = page1
            delaySendMenu(playerArg)
        end
    }
}
page5 =
{
    {
        'Store',
        function()
        end
    },
    {
        'Withdraw',
        function(playerArg)
            menu.options = page6
            delaySendMenu(playerArg)
        end
    },
    {
        'Convert',
        function()
        end
    },
    {
        'Cancel',
        function(player)
        end
    }
}
page6 =
{
    {
        'T. Whiteshell(s)',
        function()
        end
    },
    {
        'O. Bronzepiece(s)',
        function()
        end
    },
    {
        'One Byne Bill(s)',
        function()
        end
    },
    {
        'Go Back',
        function(playerArg)
            menu.options = page5
            delaySendMenu(playerArg)
        end
    },
    {
        'Next Page',
        function(playerArg)
            menu.options = page7
            delaySendMenu(playerArg)
        end
    },
}
page7 =
{
    {
        'L. Jadeshell(s)',
        function()
        end
    },
    {
        'M. Silverpiece(s)',
        function()
        end
    },
    {
        'Hundred Byne Bill(s)',
        function()
        end
    },
    {
        'Next Page',
        function(playerArg)
            menu.options = page8
            delaySendMenu(playerArg)
        end
    },
    {
        'Go Back',
        function(playerArg)
            menu.options = page6
            delaySendMenu(playerArg)
        end
    }
}
page8 =
{
    {
        'R. Stripeshell(s)',
        function()
        end
    },
    {
        'R. Goldpiece(s)',
        function()
        end
    },
    {
        'Ten Thousand Byne Bill',
        function()
        end
    },
    {
        'Go Back',
        function(playerArg)
            menu.options = page7
            delaySendMenu(playerArg)
        end
    },
    {
        'Cancel',
        function(player)
        end
    }
}]]

m:addOverride('xi.zones.Mog_Garden.Zone.onInitialize', function(zone)
    super(zone)

    local Coinstrix = zone:insertDynamicEntity({
        objType = xi.objType.NPC,
        name    = 'Coinstrix',
        look    = '0x0000550000000000000000000000000000000000',
        x = 318.5695,
        y = -3.0170,
        z = -548.3183,
        rotation = 48,
        widescan = 1,

        onTrigger = function(player,npc)
            player:printToPlayer('Coinstrix gots whats ya needs!',0,'Coinstrix')
            menu.options = page1
            delaySendMenu(player)
        end,

        onTrade = function(player, npc, trade)
            player:printToPlayer('Whaddaya wanna do with these?',0,'Coinstrix')
            menu.options = page5
            delaySendMenu(player)

            --exchange currency
            local tradeQty = trade:getItemCount()
            local tradeableItems =
            {
                [1] = {trade = {{1449,tradeQty}},reward = 1450}, -- T. Whiteshell         > L. Jadeshell
                [2] = {trade = {{1450,tradeQty}},reward = 1451}, -- L. Jadeshell          > R. Stripeshell
                [3] = {trade = {{1452,tradeQty}},reward = 1453}, -- O. Bronzepiece        > O. Bronzepiece
                [4] = {trade = {{1453,tradeQty}},reward = 1454}, -- M. Silverpiece        > R. Silverpiece
                [5] = {trade = {{1455,tradeQty}},reward = 1456}, -- One Byne Bill         > One Hundred Byne Bill
                [6] = {trade = {{1456,tradeQty}},reward = 1457}  -- One Hundred Byne Bill > Ten Thousand Byne Bill
            }
            local tradedItem       = 0
            local reward           = 0
            local currencyExchange = 0
            if tradedItem == 0 then
                for k, v in pairs(tradeableItems) do
                    if npcUtil.tradeHasExactly(trade, v.trade) then
                        tradedItem       = v.trade
                        reward           = v.reward
                        currencyExchange = math.floor(reward*1)
                    end
                end
            end

            if not npcUtil.tradeHasExactly(trade,tradedItem) or tradeQty ~= 100 then
                player:printToPlayer('Methinks you tryna scams me! Thats not what I told ya to gets!',0,'Coinstrix')
            else
                if tradeQty == 100 then
                    player:tradeComplete()
                    npcUtil.giveItem(player,currencyExchange)
                    player:printToPlayer('Here ya go!',0,'Coinstrix')
                end
            end

            --check gil for withdraw
            if npcUtil.tradeHas(trade,xi.item.GIL) then -- Check if the player traded gil
                menu.options = withdraw
                delaySendMenu(playerArg)
            else -- Rejects next menu if no gil was traded. Reduces redundancy in code later
                player:printToPlayer('Please trade me the amount of currency you want to withdraw in Gil to select this option!',0,'Coinstrix')
            end
        end,

    })

    utils.unused(Coinstrix)
end)

return m