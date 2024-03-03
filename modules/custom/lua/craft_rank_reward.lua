-----------------------------------
-- AF Reward
-----------------------------------
require('modules/module_utils')

-----------------------------------
local m = Module:new('craft_rank_reward')

local rankrewardal =
{
    [1] = {reward = 17764},
    [3] = {reward = 15825},
    [5] = {reward = 17058},
    [7] = {reward = 14398},
    [9] = {reward = xi.ki.WAY_OF_THE_ALCHEMIST},
}
local rankrewardbc =
{
    [1] = {reward = 15008},
    [3] = {reward = 15824},
    [5] = {reward = 13947},
    [7] = {reward = 14397},
    [9] = {reward = xi.ki.WAY_OF_THE_BONEWORKER},
}
local rankrewardcc =
{
    [1] = {reward = 18673},
    [3] = {reward = 15822},
    [5] = {reward = 13946},
    [7] = {reward = 14395},
    [9] = {reward = xi.ki.WAY_OF_THE_WEAVER},
}
local rankrewardco =
{
    [1] = {reward = 19101},
    [3] = {reward = 15826},
    [5] = {reward = 13948},
    [7] = {reward = 14399},
    [9] = {reward = xi.ki.WAY_OF_THE_CULINARIAN},
}
local rankrewardgs =
{
    [1] = {reward = 19274},
    [3] = {reward = 15821},
    [5] = {reward = 13945},
    [7] = {reward = 14394},
    [9] = {reward = xi.ki.WAY_OF_THE_GOLDSMITH},
}
local rankrewardlc =
{
    [1] = {reward = 19110},
    [3] = {reward = 15823},
    [5] = {reward = 14832},
    [7] = {reward = 14396},
    [9] = {reward = xi.ki.WAY_OF_THE_TANNER},
}
local rankrewardsm =
{
    [1] = {reward = 18855},
    [3] = {reward = 15820},
    [5] = {reward = 14831},
    [7] = {reward = 14393},
    [9] = {reward = xi.ki.WAY_OF_THE_BLACKSMITH},
}
local rankrewardww =
{
    [1] = {reward = 18502},
    [3] = {reward = 15819},
    [5] = {reward = 14830},
    [7] = {reward = 14392},
    [9] = {reward = xi.ki.WAY_OF_THE_CARPENTER},
}
local rankrewardfs =
{
    [1] = {reward = 11499},
    [3] = {reward = 15554},
    [5] = {reward = 14195},
    [7] = {reward = 25608},
    [9] = {reward = xi.ki.ANGLERS_ALMANAC},
}
-- woodworking
m:addOverride('xi.zones.Northern_San_dOria.npcs.Cheupirudaux.onTrade', function(player, npc, trade)
    local signed  = trade:getItem():getSignature() == player:getName() and 1 or 0
    local newRank = xi.crafting.tradeTestItem(player, npc, trade, xi.skill.WOODWORKING)

    if
        newRank > 9 and
        player:getCharVar('WoodworkingExpertQuest') == 1 and
        player:hasKeyItem(xi.keyItem.WAY_OF_THE_CARPENTER)
    then
        if signed ~= 0 then
            player:setSkillRank(xi.skill.WOODWORKING, newRank)
            player:startEvent(622, 0, 0, 0, 0, newRank, 1)
            player:setCharVar('WoodworkingExpertQuest', 0)
            player:setLocalVar('WoodworkingTraded', 1)
        else
            player:startEvent(622, 0, 0, 0, 0, newRank, 0)
        end
    elseif newRank ~= 0 and newRank <= 9 then
        player:setSkillRank(xi.skill.WOODWORKING, newRank)
        player:startEvent(622, 0, 0, 0, 0, newRank)
        player:setLocalVar('WoodworkingTraded', 1)
    end
    local reward = 0
         if reward == 0 then 
            for k, v in pairs(rankrewardww) do
                if newRank == k then
                   reward = k
                   if reward == k and k ~= 9 then 
                      npcUtil.giveItem(player, v.reward)
                   elseif newRank == 9 then
                      npcUtil.giveKeyItem(player, v.reward)
                   end
                end
            end 
         end
end)
-- alchemy
m:addOverride('xi.zones.Bastok_Mines.npcs.Abd-al-Raziq.onTrade', function(player, npc, trade)
    local signed  = trade:getItem():getSignature() == player:getName() and 1 or 0
    local newRank = xi.crafting.tradeTestItem(player, npc, trade, xi.skill.ALCHEMY)

    if
        newRank > 9 and
        player:getCharVar('AlchemyExpertQuest') == 1 and
        player:hasKeyItem(xi.keyItem.WAY_OF_THE_ALCHEMIST)
    then
        if signed ~= 0 then
            player:setSkillRank(xi.skill.ALCHEMY, newRank)
            player:startEvent(121, 0, 0, 0, 0, newRank, 1)
            player:setCharVar('AlchemyExpertQuest', 0)
            player:setLocalVar('AlchemyTraded', 1)
        else
            player:startEvent(121, 0, 0, 0, 0, newRank, 0)
        end

    elseif newRank ~= 0 and newRank <= 9 then
        player:setSkillRank(xi.skill.ALCHEMY, newRank)
        player:startEvent(121, 0, 0, 0, 0, newRank)
        player:setLocalVar('AlchemyTraded', 1)
    end
        local reward = 0
         if reward == 0 then 
            for k, v in pairs(rankrewardal) do
                if newRank == k then
                   reward = k
                   if reward == k and k ~= 9 then 
                      npcUtil.giveItem(player, v.reward)
                   elseif newRank == 9 then
                      npcUtil.giveKeyItem(player, v.reward)
                   end
                end
            end 
         end
end)
-- bonecrafting
m:addOverride('xi.zones.Windurst_Woods.npcs.Peshi_Yohnts.onTrade', function(player, npc, trade)
    local signed  = trade:getItem():getSignature() == player:getName() and 1 or 0
    local newRank = xi.crafting.tradeTestItem(player, npc, trade, xi.skill.BONECRAFT)

    if
        newRank > 9 and
        player:getCharVar('BonecraftExpertQuest') == 1 and
        player:hasKeyItem(xi.keyItem.WAY_OF_THE_BONEWORKER)
    then
        if signed ~= 0 then
            player:setSkillRank(xi.skill.BONECRAFT, newRank)
            player:startEvent(10017, 0, 0, 0, 0, newRank, 1)
            player:setCharVar('BonecraftExpertQuest', 0)
            player:setLocalVar('BonecraftTraded', 1)
        else
            player:startEvent(10017, 0, 0, 0, 0, newRank, 0)
        end
    elseif newRank ~= 0 and newRank <= 9 then
        player:setSkillRank(xi.skill.BONECRAFT, newRank)
        player:startEvent(10017, 0, 0, 0, 0, newRank)
        player:setLocalVar('BonecraftTraded', 1)
    end
        local reward = 0
         if reward == 0 then 
            for k, v in pairs(rankrewardbc) do
                if newRank == k then
                   reward = k
                   if reward == k and k ~= 9 then 
                      npcUtil.giveItem(player, v.reward)
                   elseif newRank == 9 then
                      npcUtil.giveKeyItem(player, v.reward)
                   end
                end
            end 
         end
end)
-- clothcrafting
m:addOverride('xi.zones.Windurst_Woods.npcs.Ponono.onTrade', function(player, npc, trade)
    local signed        = trade:getItem():getSignature() == player:getName() and 1 or 0
    local newRank       = xi.crafting.tradeTestItem(player, npc, trade, xi.skill.CLOTHCRAFT)
    local moralManifest = player:getQuestStatus(xi.quest.log_id.OTHER_AREAS, xi.quest.id.otherAreas.A_MORAL_MANIFEST)

    if
        newRank > 9 and
        player:getCharVar('ClothcraftExpertQuest') == 1 and
        player:hasKeyItem(xi.keyItem.WAY_OF_THE_WEAVER)
    then
        if signed ~= 0 then
            player:setSkillRank(xi.skill.CLOTHCRAFT, newRank)
            player:startEvent(10012, 0, 0, 0, 0, newRank, 1)
            player:setCharVar('ClothcraftExpertQuest', 0)
            player:setLocalVar('ClothcraftTraded', 1)
        else
            player:startEvent(10012, 0, 0, 0, 0, newRank, 0)
        end
    elseif newRank ~= 0 and newRank <= 9 then
        player:setSkillRank(xi.skill.CLOTHCRAFT, newRank)
        player:startEvent(10012, 0, 0, 0, 0, newRank)
        player:setLocalVar('ClothcraftTraded', 1)
    elseif moralManifest == QUEST_ACCEPTED and player:getCharVar('moral') == 2 then
        if npcUtil.tradeHas(trade, { 828, 830, { 'gil', 10000 } }) then -- Trade Velvet Cloth, Rainbow Cloth and 10k
            player:setCharVar('moral', 3)
            player:setLocalVar('moralZone', 1)
            player:setCharVar('moralWait', getVanaMidnight())
            player:startEvent(703)
        end
    end
        local reward = 0
         if reward == 0 then 
            for k, v in pairs(rankrewardcc) do
                if newRank == k then
                   reward = k
                   if reward == k and k ~= 9 then 
                      npcUtil.giveItem(player, v.reward)
                   elseif newRank == 9 then
                      npcUtil.giveKeyItem(player, v.reward)
                   end
                end
            end 
         end
end)
-- cooking
m:addOverride('xi.zones.Windurst_Waters.npcs.Piketo-Puketo.onTrade', function(player, npc, trade)
    local signed  = trade:getItem():getSignature() == player:getName() and 1 or 0
    local newRank = xi.crafting.tradeTestItem(player, npc, trade, xi.skill.COOKING)

    if
        newRank > 9 and
        player:getCharVar('CookingExpertQuest') == 1 and
        player:hasKeyItem(xi.keyItem.WAY_OF_THE_CULINARIAN)
    then
        if signed ~= 0 then
            player:setSkillRank(xi.skill.COOKING, newRank)
            player:startEvent(10014, 0, 0, 0, 0, newRank, 1)
            player:setCharVar('CookingExpertQuest', 0)
            player:setLocalVar('CookingTraded', 1)
        else
            player:startEvent(10014, 0, 0, 0, 0, newRank, 0)
        end
    elseif newRank ~= 0 and newRank <= 9 then
        player:setSkillRank(xi.skill.COOKING, newRank)
        player:startEvent(10014, 0, 0, 0, 0, newRank)
        player:setLocalVar('CookingTraded', 1)
    end
        local reward = 0
         if reward == 0 then 
            for k, v in pairs(rankrewardco) do
                if newRank == k then
                   reward = k
                   if reward == k and k ~= 9 then 
                      npcUtil.giveItem(player, v.reward)
                   elseif newRank == 9 then
                      npcUtil.giveKeyItem(player, v.reward)
                   end
                end
            end 
         end
end)
-- goldsmithing
m:addOverride('xi.zones.Bastok_Markets.npcs.Reinberta.onTrade', function(player, npc, trade)
    local signed = trade:getItem():getSignature() == player:getName() and 1 or 0
    local newRank = xi.crafting.tradeTestItem(player, npc, trade, xi.skill.GOLDSMITHING)

    if
        newRank > 9 and
        player:getCharVar('GoldsmithingExpertQuest') == 1 and
        player:hasKeyItem(xi.keyItem.WAY_OF_THE_GOLDSMITH)
    then
        if signed ~= 0 then
            player:setSkillRank(xi.skill.GOLDSMITHING, newRank)
            player:startEvent(301, 0, 0, 0, 0, newRank, 1)
            player:setCharVar('GoldsmithingExpertQuest', 0)
            player:setLocalVar('GoldsmithingTraded', 1)
        else
            player:startEvent(301, 0, 0, 0, 0, newRank, 0)
        end
    elseif newRank ~= 0 and newRank <= 9 then
        player:setSkillRank(xi.skill.GOLDSMITHING, newRank)
        player:startEvent(301, 0, 0, 0, 0, newRank)
        player:setLocalVar('GoldsmithingTraded', 1)
    end
        local reward = 0
         if reward == 0 then 
            for k, v in pairs(rankrewardgs) do
                if newRank == k then
                   reward = k
                   if reward == k and k ~= 9 then 
                      npcUtil.giveItem(player, v.reward)
                   elseif newRank == 9 then
                      npcUtil.giveKeyItem(player, v.reward)
                   end
                end
            end 
         end
end)
-- smithing
m:addOverride('xi.zones.Metalworks.npcs.Ghemp.onTrade', function(player, npc, trade)
    local signed  = trade:getItem():getSignature() == player:getName() and 1 or 0
    local newRank = xi.crafting.tradeTestItem(player, npc, trade, xi.skill.SMITHING)

    if
        newRank > 9 and
        player:getCharVar('SmithingExpertQuest') == 1 and
        player:hasKeyItem(xi.keyItem.WAY_OF_THE_BLACKSMITH)
    then
        if signed ~= 0 then
            player:setSkillRank(xi.skill.SMITHING, newRank)
            player:startEvent(102, 0, 0, 0, 0, newRank, 1)
            player:setCharVar('SmithingExpertQuest', 0)
            player:setLocalVar('SmithingTraded', 1)
        else
            player:startEvent(102, 0, 0, 0, 0, newRank, 0)
        end
    elseif newRank ~= 0 and newRank <= 9 then
        player:setSkillRank(xi.skill.SMITHING, newRank)
        player:startEvent(102, 0, 0, 0, 0, newRank)
        player:setLocalVar('SmithingTraded', 1)
    end
        local reward = 0
         if reward == 0 then 
            for k, v in pairs(rankrewardsm) do
                if newRank == k then
                   reward = k
                   if reward == k and k ~= 9 then 
                      npcUtil.giveItem(player, v.reward)
                   elseif newRank == 9 then
                      npcUtil.giveKeyItem(player, v.reward)
                   end
                end
            end 
         end
end)
-- smithing 
m:addOverride('xi.zones.Northern_San_dOria.npcs.Mevreauche.onTrade', function(player, npc, trade)
    local signed  = trade:getItem():getSignature() == player:getName() and 1 or 0
    local newRank = xi.crafting.tradeTestItem(player, npc, trade, xi.skill.SMITHING)

    if
        newRank > 9 and
        player:getCharVar('SmithingExpertQuest') == 1 and
        player:hasKeyItem(xi.keyItem.WAY_OF_THE_BLACKSMITH)
    then
        if signed ~= 0 then
            player:setSkillRank(xi.skill.SMITHING, newRank)
            player:startEvent(627, 0, 0, 0, 0, newRank, 1)
            player:setCharVar('SmithingExpertQuest', 0)
            player:setLocalVar('SmithingTraded', 1)
        else
            player:startEvent(627, 0, 0, 0, 0, newRank, 0)
        end
    elseif newRank ~= 0 and newRank <= 9 then
        player:setSkillRank(xi.skill.SMITHING, newRank)
        player:startEvent(627, 0, 0, 0, 0, newRank)
        player:setLocalVar('SmithingTraded', 1)
    end
        local reward = 0
         if reward == 0 then 
            for k, v in pairs(rankrewardsm) do
                if newRank == k then
                   reward = k
                   if reward == k and k ~= 9 then 
                      npcUtil.giveItem(player, v.reward)
                   elseif newRank == 9 then
                      npcUtil.giveKeyItem(player, v.reward)
                   end
                end
            end 
         end
end)
-- leathercrafting
m:addOverride('xi.zones.Southern_San_dOria.npcs.Faulpie.onTrade', function(player, npc, trade)
    local signed  = trade:getItem():getSignature() == player:getName() and 1 or 0
    local newRank = xi.crafting.tradeTestItem(player, npc, trade, xi.skill.LEATHERCRAFT)

    if
        newRank > 9 and
        player:getCharVar('LeathercraftExpertQuest') == 1 and
        player:hasKeyItem(xi.keyItem.WAY_OF_THE_TANNER)
    then
        if signed ~= 0 then
            player:setSkillRank(xi.skill.LEATHERCRAFT, newRank)
            player:startEvent(649, 0, 0, 0, 0, newRank, 1)
            player:setCharVar('LeathercraftExpertQuest', 0)
            player:setLocalVar('LeathercraftTraded', 1)
        else
            player:startEvent(649, 0, 0, 0, 0, newRank, 0)
        end
    elseif newRank ~= 0 and newRank <= 9 then
        player:setSkillRank(xi.skill.LEATHERCRAFT, newRank)
        player:startEvent(649, 0, 0, 0, 0, newRank)
        player:setLocalVar('LeathercraftTraded', 1)
    end
        local reward = 0
         if reward == 0 then 
            for k, v in pairs(rankrewardlc) do
                if newRank == k then
                   reward = k
                   if reward == k and k ~= 9 then 
                      npcUtil.giveItem(player, v.reward)
                   elseif newRank == 9 then
                      npcUtil.giveKeyItem(player, v.reward)
                   end
                end
            end 
         end
end)
-- fishing 
m:addOverride('xi.zones.Port_Windurst.npcs.Thubu_Parohren.onTrade', function(player, npc, trade)
    local newRank = xi.crafting.tradeTestItem(player, npc, trade, xi.skill.FISHING)

    if
        newRank > 9 and
        player:getCharVar('FishingExpertQuest') == 1 and
        player:hasKeyItem(xi.keyItem.ANGLERS_ALMANAC)
    then
        player:setSkillRank(xi.skill.FISHING, newRank)
        player:startEvent(10010, 0, 0, 0, 0, newRank)
        player:setCharVar('FishingExpertQuest', 0)
        player:setLocalVar('FishingTraded', 1)
    elseif newRank ~= 0 and newRank <= 9 then
        player:setSkillRank(xi.skill.FISHING, newRank)
        player:startEvent(10010, 0, 0, 0, 0, newRank)
        player:setLocalVar('FishingTraded', 1)
    end
        local reward = 0
         if reward == 0 then 
            for k, v in pairs(rankrewardfs) do
                if newRank == k then
                   reward = k
                   if reward == k and k ~= 9 then 
                      npcUtil.giveItem(player, v.reward)
                   elseif newRank == 9 then
                      npcUtil.giveKeyItem(player, v.reward)
                   end
                end
            end 
         end
end)




return m
