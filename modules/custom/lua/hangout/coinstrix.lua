-------------------------------
require("modules/module_utils")
-------------------------------

local m = Module:new("coinstrix")
local menu  = {}
local page1 = {}
local page2 = {}
local page3 = {}
local page4 = {}
local tradeChoice       = {}
local withdraw          = {}
local withdraw2         = {}
local withdraw3         = {}


local delaySendMenu = function(player)
    player:timer(50,function(playerArg)
        playerArg:customMenu(menu)
    end)
end

menu =
{
    title  = 'What would you to like to do?',
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

m:addOverride('xi.zones.Mog_Garden.Zone.onInitialize',function(zone)
    super(zone)

    local coinstrix = zone:insertDynamicEntity({
        objtype = xi.objType.NPC,
        name = 'Coinstrix',
        look = '0x0000550000000000000000000000000000000000',
        x = 318.5695,
        y = -3.0170,
        z = -548.3183,
        rotation = 48,
        widescan = 1,

        onTrade = function(player, npc, trade)

            local count             = trade:getItemCount()
            local countGil          = trade:getItemQty(65535)
            local stacks            = math.floor(countGil / 99)
            local remainder         = countGil % 99
            local slotsNeeded       = stacks
            local storedwhiteshell  = player:getCharVar('Whiteshell')
            local storedjadeshell   = player:getCharVar('Jadeshell')
            local storedstripeshell = player:getCharVar('Stripeshell')
            local storedbronzepiece = player:getCharVar('Bronzepiece')
            local storedsilverpiece = player:getCharVar('Silverpiece')
            local storedgoldpiece   = player:getCharVar('Goldpiece')
            local storedonebyne     = player:getCharVar('Byne')
            local storedhundredbyne = player:getCharVar('HundredByne')
            local storedtenkbyne    = player:getCharVar('TenThouByne')

            tradeChoice =
            {
                {
                    'Store',
                    function(player)
                        if trade:hasItemQty(xi.item.TUKUKU_WHITESHELL,count) then
                            local total = player:getCharVar('Whiteshell') + count
                        if total >= 1 then
                            player:setCharVar('Whiteshell',total)
                            player:tradeComplete()
                        end

                        player:printToPlayer(string.format('Okies...Me hold on to %s T. Whiteshell(s) for ya!',count),0,'Coinstrix')
                        player:printToPlayer(string.format('That makes %s Tukuku Whiteshell(s) that I got stored.',storedwhiteshell+count),0,'Coinstrix')
                    elseif trade:hasItemQty(xi.item.LUNGO_NANGO_JADESHELL,count) then
                        local total = player:getCharVar('Jadeshell') + count
                        if total >= 1 then
                            player:setCharVar('Jadeshell',total)
                            player:tradeComplete()
                        end

                        player:printToPlayer(string.format('Okies...Me hold on to %s L. Jadeshell(s) for ya!',count),0,'Coinstrix')
                        player:printToPlayer(string.format('That makes %s L. Whiteshell(s) that I got stored.',storedjadeshell+count),0,'Coinstrix')
                    elseif trade:hasItemQty(xi.item.RIMILALA_STRIPESHELL,count) then
                        local total = player:getCharVar('Stripeshell')+count
                        if total >= 1 then
                            player:setCharVar('Stripshell',total)
                            player:tradeComplete()
                        end

                        player:printToPlayer(string.format('Okies...Me hold on to %s R. Stripeshell(s) for ya!',count),0,'Coinstrix')
                        player:printToPlayer(string.format('That makes %s R. Stripeshell(s) that I got stored.',storedstripeshell+count),0,'Coinstrix')
                    elseif trade:hasItemQty(xi.item.ORDELLE_BRONZEPIECE,count) then
                        local total = player:getCharVar('Bronzepiece') + count
                        if total >= 1 then
                            player:setCharVar('Bronzepiece', total)
                            player:tradeComplete()
                        end

                        player:printToPlayer(string.format('Okies...Me hold on top %s O. Bronzepiece(s) for ya!',count),0,'Coinstrix')
                        player:printToPlayer(string.format('That makes %s O. Bronzepiece(s) that I got Stored.',storedbronzepiece+count),0,'Coinstrix')
                    elseif trade:hasItemQty(xi.item.MONTIONT_SILVERPIECE,count) then
                        local total = player:getCharVar('Silverpiece') + count
                        if total >= 1 then
                            player:setCharVar('Silverpiece',total)
                            player:tradeComplete()
                        end

                        player:printToPlayer(string.format('Okies...Me hold on top %s M. Silverpiece(s) for ya!',count),0,'Coinstrix')
                        player:printToPlayer(string.format('That makes %s M. Silverpiece(s) that I got Stored.',storedsilverpiece+count),0,'Coinstrix')
                    elseif trade:hasItemQty(xi.item.RANPERRE_GOLDPIECE, count) then
                        local total = player:getCharVar('Goldpiece') + count
                        if total >= 1 then
                            player:setCharVar('Goldpiece',total)
                            player:tradeComplete()
                        end

                        player:printToPlayer(string.format('Okies...Me hold on top %s R. Goldpiece(s) for ya!',count),0,'Coinstrix')
                        player:printToPlayer(string.format('That makes %s R. Goldpiece(s) that I got Stored.',storedgoldpiece+count),0,'Coinstrix')
                    elseif trade:hasItemQty(xi.item.ONE_BYNE_BILL,count) then
                        local total = player:getCharVar('Byne') + count
                        if total >= 1 then
                            player:setCharVar('Byne',total)
                            player:tradeComplete()
                        end

                        player:printToPlayer(string.format('Okies...Me hold on top %s One Byne Bill(s) for ya!',count),0,'Coinstrix')
                        player:printToPlayer(string.format('That makes %s One Byne Bill(s) that I got Stored.',storedonebyne+count),0,'Coinstrix')
                    elseif trade:hasItemQty(xi.item.ONE_HUNDRED_BYNE_BILL,count) then
                        local total = player:getCharVar('HundredByne') + count
                        if total >= 1 then
                            player:setCharVar('HundredByne',total)
                            player:tradeComplete()
                        end

                    player:printToPlayer(string.format('Okies...Me hold on top %s One Hundred Byne Bill(s) for ya!',count),0,'Coinstrix')
                    player:printToPlayer(string.format('That makes %s One Hundred Byne Bill(s) that I got Stored.', storedhundredbyne+count),0,'Coinstrix')
                elseif trade:hasItemQty(xi.item.TEN_THOUSAND_BYNE_BILL,count) then
                    local total = player:getCharVar('TenThouByne') + count
                    if total >= 1 then
                        player:setCharVar('TenThouByne',total)
                        player:tradeComplete()
                    end

                    player:printToPlayer(string.format('Okies...Me hold on top %s Ten Thousand Byne Bill(s) for ya!',count),0,'Coinstrix')
                    player:printToPlayer(string.format('That makes %s Ten Thousand Byne Bill(s) that I got Stored.',storedtenkbyne+count),0,'Coinstrix')
                end
            end
            },
            {
                'Convert',
                function(player)
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
                end
            },
            {
                'Withdraw',
                function(playerArg)
                    if npcUtil.tradeHas(trade,xi.item.GIL) then -- Check if the player traded gil
                    menu.options = withdraw
                    delaySendMenu(playerArg)
                    else -- Rejects next menu if no gil was traded. Reduces redundancy in code later
                        player:printToPlayer('Please trade me the amount of currency you want to withdraw in Gil to select this option!',0,'Coinstrix')
                    end
                end
            },
        }

        withdraw =
        {
            {
                'T. Whiteshell(s)',
                function(player)
                    if remainder > 0 then
                        slotsNeeded = slotsNeeded + 2
                    end

                    if countGil <= storedwhiteshell then
                        if countGil >= 1 then
                            if player:getFreeSlotsCount() < slotsNeeded then
                                player:printToPlayer('Whadaya think ya doing? Ya got no room!.',0,'Coinstrix')
                                player:printToPlayer('Come back after sorting your inventory.',0xD)
                           return
                        else
                            npcUtil.giveItem(1449,countGil)
                            player:setCharVar('Whiteshell',storedwhiteshell - countGil)
                            player:printToPlayer(string.format('Heres ya go...%s T. Whiteshell(s)',countGil),0,'Coinstrix')
                            player:printToPlayer(string.format('Here ya go! That leaves ya with %s T. Whiteshell(s) left!',storedwhiteshell-countGil),0,'Coinstrix')
                        end
                    end
                    else
                        player:printToPlayer('Whadaya think  this is? A gobbie charity?',0,'Coinstrix')
                        player:printToPlayer(string.format('Yous only gots %s T. Whiteshell(s) left!',storedwhiteshell),0,"Coinstrix")
                        menu.options = withdraw
                        delaySendMenu(player)
                    end
                end
            },
            {
                'O. Bronzepiece(s)',
                function(player)
                    if remainder > 0 then
                        slotsNeeded = slotsNeeded + 2
                    end

                    if countGil <= storedbronzepiece then
                        if countGil >= 1 then
                            if player:getFreeSlotsCount() < slotsNeeded then
                                player:printToPlayer('Whadaya think ya doing? Ya got no room!.',0,'Coinstrix')
                                player:printToPlayer('Come back after sorting your inventory.',0xD)
                                return
                            else
                                npcUtil.giveItem(1452,countGil)
                                player:setCharVar('Bronzepiece',storedbronzepiece - countGil)
                                player:printToPlayer(string.format('Heres ya go...%s O. Bronzepiece(s)',countGil),0,'Coinstrix')
                                player:printToPlayer(string.format('Here ya go! That leaves ya with %s O. Bronzepiece(s) left!',storedbronzepiece-countGil),0,'Coinstrix')
                            end
                        end
                    else
                        player:printToPlayer('Whadaya think  this is? A gobbie charity?',0,'Coinstrix')
                        player:printToPlayer(string.format('Yous only gots %s O. Bronzepiece(s) left!',storedbronzepiece),0,"Coinstrix")
                        menu.options = withdraw
                        delaySendMenu(player)
                    end
                 end
            },
            {
                'One Byne Bill(s)',
                function(player)
                    if remainder > 0 then
                        slotsNeeded = slotsNeeded + 2
                    end

                    if countGil <= player:getCharVar('whiteshell') then
                        if countGil >= 1 then
                            if player:getFreeSlotsCount() < slotsNeeded then
                                player:printToPlayer('Whadaya think ya doing? Ya got no room!.',0,'Coinstrix')
                                player:printToPlayer('Come back after sorting your inventory.',0xD)
                                return
                            else
                                npcUtil.giveItem(1455,countGil)
                                player:setCharVar('Byne', storedonebyne - countGil)
                                player:printToPlayer(string.format('Heres ya go...%s One Byne Bill(s)',countGil),0,'Coinstrix')
                                player:printToPlayer(string.format('Here ya go! That leaves ya with %s One Byne Bill(s) left!',storedonebyne-countGil),0,'Coinstrix')
                            end
                        end
                    else
                        player:printToPlayer('Whadaya think  this is? A gobbie charity?',0,'Coinstrix')
                        player:printToPlayer(string.format('Yous only gots %s One Byne Bill(s) left!',storedonebyne),0,"Coinstrix")
                        menu.options = withdraw
                        delaySendMenu(player)
                    end
                end
            },
            {
                'Next Page',
                function(playerArg)
                    menu.options = withdraw2
                    delaySendMenu(playerArg)
                end
            },
        }

        withdraw2 =
        {
            {
                'L. Jadeshell(s)',
                function(player)
                    if remainder > 0 then
                        slotsNeeded = slotsNeeded + 2
                    end

                    if countGil < storejadeshell then
                        if countGil >= 1 then
                            if player:getFreeSlotsCount() < slotsNeeded then
                                player:printToPlayer('Whadaya think ya doing? Ya got no room!.',0,'Coinstrix')
                                player:printToPlayer('Come back after sorting your inventory.',0xD)
                            return
                        else
                            npcUtil.giveItem(1450,countGil)
                            player:setCharVar('Jadeshell',storejadeshell - countGil)
                            player:printToPlayer(string.format('Heres ya go...%s L. Jadeshell(s)',countGil),0,'Coinstrix')
                            player:printToPlayer(string.format('Here ya go! That leaves ya with %s L. Jadeshell(s) left!',storejadeshell-countGil),0,'Coinstrix')
                        end
                    end
                    else
                        player:printToPlayer('Whadaya think  this is? A gobbie charity?',0,'Coinstrix')
                        player:printToPlayer(string.format('Yous only gots %s L. Jadeshell(s) left!',storejadeshell),0,"Coinstrix")
                        menu.options = withdraw2
                        delaySendMenu(player)
                    end
                end
            },
            {
                'M. Silverpiece(s)',
                function(player)
                    if remainder > 0 then
                        slotsNeeded = slotsNeeded + 2
                    end

                    if countGil <= storedsilverpiece then
                        if countGil >= 1 then
                            if player:getFreeSlotsCount() < slotsNeeded then
                                player:printToPlayer('Whadaya think ya doing? Ya got no room!.',0,'Coinstrix')
                                player:printToPlayer('Come back after sorting your inventory.',0xD)
                                return
                            else
                                player:addItem(1453,countGil)
                                npcUtil.giveCharVar('Silverpiece', storedsilverpiece - countGil)
                                player:printToPlayer(string.format('Heres ya go...%s M. Silverpiece(s)',countGil),0,'Coinstrix')
                                player:printToPlayer(string.format('Here ya go! That leaves ya with %s M. Silverpiece(s) left!',storedsilverpiece-countGil),0,'Coinstrix')
                            end
                        end
                    else
                        player:printToPlayer('Whadaya think  this is? A gobbie charity?',0,'Coinstrix')
                        player:printToPlayer(string.format('Yous only gots %s M. Silverpiece(s) left!',storedsilverpiece),0,"Coinstrix")
                        menu.options = withdraw2
                        delaySendMenu(player)
                    end
                end
            },
            {
                'One Hundred Byne Bill(s)',
                function(player)
                    if remainder > 0 then
                        slotsNeeded = slotsNeeded + 2
                    end

                    if countGil <= storedhundredbyne then
                        if countGil >= 1 then
                            if player:getFreeSlotsCount() < slotsNeeded then
                                player:printToPlayer('Whadaya think ya doing? Ya got no room!.',0,'Coinstrix')
                                player:printToPlayer('Come back after sorting your inventory.',0xD)
                            return
                            else
                                npcUtil.giveItem(1456,countGil)
                                player:setCharVar('HundredByne', storedhundredbyne - countGil)
                                player:printToPlayer(string.format('Heres ya go...%s One Hundred Byne Bill(s)',countGil),0,'Coinstrix')
                                player:printToPlayer(string.format('Here ya go! That leaves ya with %s One Hundred Byne Bill(s) left!',storedhundredbyne-countGil),0,'Coinstrix')
                            end
                        end
                    else
                        player:printToPlayer('Whadaya think  this is? A gobbie charity?',0,'Coinstrix')
                        player:printToPlayer(string.format('Yous only gots %s One Hundred Byne Bill(s) left!',storedhundredbyne),0,"Coinstrix")
                        menu.options = withdraw2
                        delaySendMenu(player)
                    end
                end
            },
            {
                'Next Page',
                function(playerArg)
                    menu.options = withdraw3
                    delaySendMenu(playerArg)
                end
            },
            {
                'Go Back.',
                function(playerArg)
                    menu.options = withdraw
                    delaySendMenu(playerArg)
                end
            },
        }

        withdraw3 =
        {
            {
                'R. Stripeshell(s)',
                function(player)
                    if remainder > 0 then
                        slotsNeeded = slotsNeeded + 2
                    end

                    if countGil <= storedstripeshell then
                        if countGil >= 1 then
                            if player:getFreeSlotsCount() < slotsNeeded then
                                player:printToPlayer('Whadaya think ya doing? Ya got no room!.',0,'Coinstrix')
                                player:printToPlayer('Come back after sorting your inventory.',0xD)
                                return
                            else
                                npcUtil.giveItem(1451, countGil)
                                player:setCharVar('Stripshell',storedstripeshell - countGil)
                                player:printToPlayer(string.format('Heres ya go...%s R. Stripeshell(s)',countGil),0,'Coinstrix')
                                player:printToPlayer(string.format('Here ya go! That leaves ya with %s R. Stripeshell(s) left!',storedstripeshell-countGil),0,'Coinstrix')
                            end
                        end
                    else
                        player:printToPlayer('Whadaya think  this is? A gobbie charity?',0,'Coinstrix')
                        player:printToPlayer(string.format('Yous only gots %s R. Stripeshell(s) left!',storedstripeshell),0,"Coinstrix")
                        menu.options = withdraw3
                        delaySendMenu(player)
                    end
                end
            },
            {
                'R. Goldpiece(s)',
                function(player)
                    if remainder > 0 then
                        slotsNeeded = slotsNeeded + 2
                    end

                    if countGil <= storedgoldpiece then
                        if countGil >= 1 then
                            if player:getFreeSlotsCount() < slotsNeeded then
                                player:printToPlayer('Whadaya think ya doing? Ya got no room!.',0,'Coinstrix')
                                player:printToPlayer('Come back after sorting your inventory.',0xD)
                                return
                            else
                                npcUtil.giveItem(1454, countGil)
                                player:setCharVar('Goldpiece',storedgoldpiece - countGil)
                                player:printToPlayer(string.format('Heres ya go...%s R. Goldpiece(s)',countGil),0,'Coinstrix')
                                player:printToPlayer(string.format('Here ya go! That leaves ya with %s R. Goldpiece(s) left!',storedgoldpiece-countGil),0,'Coinstrix')
                            end
                        end
                    else
                        player:printToPlayer('Whadaya think  this is? A gobbie charity?',0,'Coinstrix')
                        player:printToPlayer(string.format('Yous only gots %s R. Goldpiece(s) left!',storedgoldpiece),0,"Coinstrix")
                        menu.options = withdraw3
                        delaySendMenu(player)
                    end
                end
            },
            {
                'Ten Thousand Byne Bill(s)',
                function(player)
                    if remainder > 0 then
                        slotsNeeded = slotsNeeded + 2
                    end

                    if countGil <= storedtenkbyne then
                        if countGil >= 1 then
                            if player:getFreeSlotsCount() < slotsNeeded then
                                player:printToPlayer('Whadaya think ya doing? Ya got no room!.',0,'Coinstrix')
                                player:printToPlayer('Come back after sorting your inventory.',0xD)
                            return
                            else
                                npcUtil.giveItem(1457,countGil)
                                player:setCharVar('TenThouByne', storedtenkbyne - countGil)
                                player:printToPlayer(string.format('Heres ya go...%s Ten Thousand Byne Bill(s)',countGil),0,'Coinstrix')
                                player:printToPlayer(string.format('Here ya go! That leaves ya with %s Ten Thousand Byne Bill(s) left!',storedtenkbyne-countGil),0,'Coinstrix')
                            end
                        end
                    else
                        player:printToPlayer('Whadaya think  this is? A gobbie charity?',0,'Coinstrix')
                        player:printToPlayer(string.format('Yous only gots %s Ten Thousand Byne Bill(s) left!',storedtenkbyne),0,"Coinstrix")
                        menu.options = withdraw3
                        delaySendMenu(player)
                    end
                end
            },
            {
                'Go Back.',
                function(playerArg)
                    menu.options = page4
                    delaySendMenu(playerArg)
                end
            },
         }

        player:printToPlayer('Whadaya wanna do?',0,'Coinstrix')
        menu.options = tradeChoice
        delaySendMenu(player)



    end,

      onTrigger = function(player,npc)
         player:printToPlayer('Coinstrix gots whats ya needs!',0,'Coinstrix')
         menu.options = page1
         delaySendMenu(player)
      end,
    })
   utils.unused(coinstrix)
end)

return m