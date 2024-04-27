local ensureTable = function(str)
    local parts = utils.splitStr(str, '.')
    local table = _G;
    for _, part in ipairs(parts) do
        table[part] = table[part] or {}
        table = table[part]
    end
end
    ensureTable('xi.zones.Western_Adoulin.npcs.Ornery_Dhole')

require("modules/module_utils")
require("scripts/globals/npc_util")


local m = Module:new("West_Audou_NPCs")

m:addOverride("xi.zones.Western_Adoulin.npcs.Ornery_Dhole.onTrade", function(player, npc, trade)
            local count = trade:getItemCount()
local stones =
{
[1] = {trade = {{3954, count}}, base = 3954, currency = 'ghastly_stone',     buy =    50, sell =  10, id =    5, exchange = count, xreward = 4033},
[2] = {trade = {{3955, count}}, base = 3955, currency = 'ghastly_stone_1',   buy =   100, sell =  20, id =  261, exchange = count, xreward = 4034},
[3] = {trade = {{3956, count}}, base = 3956, currency = 'ghastly_stone_2',   buy =   500, sell = 100, id =  517, exchange = count, xreward = 4035},
[4] = {trade = {{4033, count}}, base = 4033, currency = 'verdigris_stone',   buy =   100, sell =  20, id =  773, exchange = count, xreward = 3951},
[5] = {trade = {{4034, count}}, base = 4034, currency = 'verdigris_stone_1', buy =   200, sell =  40, id = 1029, exchange = count, xreward = 3952},
[6] = {trade = {{4035, count}}, base = 4035, currency = 'verdigris_stone_2', buy =  1000, sell = 200, id = 1285, exchange = count, xreward = 3953},
[7] = {trade = {{3951, count}}, base = 3951, currency = 'wailing_stone',     buy =   200, sell =  40, id = 1541, exchange = count, xreward = 0},
[8] = {trade = {{3952, count}}, base = 3952, currency = 'wailing_stone_1',   buy =   400, sell =  80, id = 1797, exchange = count, xreward = 0},
[9] = {trade = {{3953, count}}, base = 3953, currency = 'wailing_stone_2',   buy =  2000, sell = 400, id = 2053, exchange = count, xreward = 0},
}
            local tradeditem = 0
            local buycost = 0
            local sellamount = 0
            local qty = 0
            local base = 0
            local reward = 0
            if tradeditem == 0 then 
             for k, v in pairs(stones) do
                if npcUtil.tradeHasExactly(trade, v.trade) then
                   tradeditem = k
                   base = v.base
                   buycost = v.buy
                   sellamount = v.sell
                   qty = v.exchange
                   reward = v.xreward
                  local exchangefor = math.floor(qty / 5)
                  local sellfor     = math.floor(sellamount * count)
                  npc:setLocalVar('OrneryDholeex', exchangefor)
                  npc:setLocalVar('OrneryDholese', sellfor)
                    if reward ~= 0 and exchangefor > 0 then
                       npc:setLocalVar('OrneryDholere', reward)
                       player:startEvent(7613, base,reward, qty, exchangefor, sellfor, 0)
                    return
                    else
                       player:startEvent(7613, base,reward, qty, exchangefor, sellfor, 4)
                    return
                    end
                end
             end
            end
end)

m:addOverride("xi.zones.Western_Adoulin.npcs.Ornery_Dhole.onTrigger", function(player, npc)
    local amount  = player:getCurrency('obsidian_fragment')
          player:startEvent(7547, 0, 0, 12, amount,2)
end)

m:addOverride("xi.zones.Western_Adoulin.npcs.Ornery_Dhole.onEventUpdate", function(player, csid, option, npc)

end)

m:addOverride("xi.zones.Western_Adoulin.npcs.Ornery_Dhole.onEventFinish", function(player, csid, option, npc)
--player:printToPlayer(string.format('Finish csid %s option %s', csid, option))

--------------------------------------
-- purchase Stones
--------------------------------------
local stonez =
{
[1] = {trade = {{3954, count}}, base = 3954, currency = 'ghastly_stone',     buy =    50, sell =  10, id =    5, exchange = count, xreward = 4033},
[2] = {trade = {{3955, count}}, base = 3955, currency = 'ghastly_stone_1',   buy =   100, sell =  20, id =  261, exchange = count, xreward = 4034},
[3] = {trade = {{3956, count}}, base = 3956, currency = 'ghastly_stone_2',   buy =   500, sell = 100, id =  517, exchange = count, xreward = 4035},
[4] = {trade = {{4033, count}}, base = 4033, currency = 'verdigris_stone',   buy =   100, sell =  20, id =  773, exchange = count, xreward = 3951},
[5] = {trade = {{4034, count}}, base = 4034, currency = 'verdigris_stone_1', buy =   200, sell =  40, id = 1029, exchange = count, xreward = 3952},
[6] = {trade = {{4035, count}}, base = 4035, currency = 'verdigris_stone_2', buy =  1000, sell = 200, id = 1285, exchange = count, xreward = 3953},
[7] = {trade = {{3951, count}}, base = 3951, currency = 'wailing_stone',     buy =   200, sell =  40, id = 1541, exchange = count, xreward = 0},
[8] = {trade = {{3952, count}}, base = 3952, currency = 'wailing_stone_1',   buy =   400, sell =  80, id = 1797, exchange = count, xreward = 0},
[9] = {trade = {{3953, count}}, base = 3953, currency = 'wailing_stone_2',   buy =  2000, sell = 400, id = 2053, exchange = count, xreward = 0},
}

        local requestedQty = bit.rshift(option, 24)
        local requestedItm = bit.band(bit.rshift(option, 0), 0x0FFF)
        local id = 0
        local giveitem = 0
        local store = 0
        local sellvalue = 0
        if store == 0 then
            for k, v in pairs(stonez) do
                if requestedItm == v.id then
                   store = k
                   id = v.id
                   sellvalue = v.buy * requestedQty
                   giveitem = v.base
                end
            end
        end
            if csid == 7547 and
               option == 1073741824 or
               option == 0 then
               return
            elseif csid == 7547 then
                if player:getCurrency('obsidian_fragment') < sellvalue then
                   player:printToPlayer('You currently do not have enough Obsidian Fragments to complete this request! ', 0, 'Ornery Dhole')
                else
                   npcUtil.giveItem(player, {{giveitem, requestedQty}})
                   player:delCurrency('obsidian_fragment',sellvalue)
                end
            end
--------------------------------------
-- tradein for 
--------------------------------------
       if csid == 7613 and
          option == 1 then -- trade in for obsidian fragments
            local sellforobs = npc:getLocalVar('OrneryDholese', sellfor)
                  player:tradeComplete()
                  player:addCurrency('obsidian_fragment', sellforobs)
                  player:messageSpecial(zones[player:getZoneID()].text.YOU_NOW_HAVE_AMT_CURRENCY, 13, player:getCurrency('obsidian_fragment'))
          elseif csid == 7613 and
                 option == 2 then -- trade in for different stones
                   local exchangeforstones = npc:getLocalVar('OrneryDholeex')
                   local givereward        = npc:getLocalVar('OrneryDholere')
                      player:tradeComplete()
                      npcUtil.giveItem(player, {{givereward, exchangeforstones}})
          end

end)

return m