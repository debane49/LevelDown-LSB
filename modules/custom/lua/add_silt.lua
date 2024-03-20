
local EZMob =
{
    {'Eschan_Warrior'},
    {'Eschan_Pugil'},
    {'Eschan_Crab'},
    {'Eschan_Worm'},
    {'Eschan_Obdella'},
    {'Eschan_Crawler'},
    {'Eschan_Weapon'},
    {'Eschan_Dhalmel'},
    {'Eschan_Coeurl'},
    {'Eschan_Vulture'},
    {'Eschan_Corse'},
    {'Eschan_Sorcerer'},
    {'Eschan_Wasp'},
    {'Eschan_Snapweed'},
    {'Eschan_Goobbue'},
    {'Eschan_Puk'},--
    {'Eschan_Shadow_Dragon'},--
    {'Eschan_Tarichuk'},--
    {'Eschan_Bugard'},--
    {'Eschan_Opo-Opo'},--
    {'Eschan_Yztarg'},--
    {'Eschan_Mosquito'},--
}
local ERMob =
{
{'Eschan_Zdei'},
{'Eschan_Ilaern_rng'},
{'Eschan_Ilaern_thf'},
{'Eschan_Ilaern_blm'},
{'Eschan_Ilaern_drg'},
{'Eschan_Phuabo'},
{'Eschan_Ilaern_war'},
{'Eschan_Yovra'},
{'Eschan_Ilaern_whm'},
{'Eschan_Ilaern_mnk'},
{'Eschan_Ilaern_bst'},
{'Eschan_Euvhi'},
{'Eschan_Clionid'},
{'Eschan_Hpemde'},
{'Eschan_Ilaern_pld'},
{'Eschan_Amoeban'},
{'Eschan_Ilaern_drk'},
{'Eschan_Xzomit'},
{'Eschan_Ilaern_rdm'},
{'Eschan_Murex'},
{'Eschan_Ilaern_sam'},
{'Eschan_Ilaern_smn'},
{'Eschan_Ghrah'},
{'Eschan_Limule'},
{'Eschan_Gargouille'},
{'Eschan_Porxie'},
{'Eschan_Ilaern_brd'},
{'Eschan_Ilaern_nin'},
}

local ensureTable = function(str)
    local parts = utils.splitStr(str, '.')
    local table = _G;
    for _, part in ipairs(parts) do
        table[part] = table[part] or {}
        table = table[part]
    end
end
for _, entry in pairs(EZMob) do
ensureTable(string.format("xi.zones.Escha_ZiTah.mobs.%s", entry[1]))
end
for _, entry in pairs(ERMob) do
ensureTable(string.format("xi.zones.Escha_RuAun.mobs.%s", entry[1]))
end

-----------------------------------
require("modules/module_utils")
require("scripts/globals/npc_util")
-----------------------------------

local m = Module:new("add_silt")

for _, entry in pairs(EZMob) do
    local mobName     = entry[1]

  m:addOverride(string.format('xi.zones.Escha_ZiTah.mobs.%s.onMobDeath', mobName), function(mob, player, optParams)
    super(mob, player, optParams)
    dropper = mob:getID()
    local rand = math.random(5, 30)
    player:addCurrency('escha_silt', rand)
    player:printToPlayer(string.format("You obtained %s Escha Silt", rand),xi.msg.channel.SYSTEM_3)
    if mobName == 'Eschan_Puk' or
              'Eschan_Shadow_Dragon' or
              'Eschan_Tarichuk' or
              'Eschan_Bugard' or
              'Eschan_Opo-Opo' or
              'Eschan_Yztarg' or
              'Eschan_Mosquito' then
    local randz = math.random(1, 10)
    if randz == 3 then
    player:addTreasure(9084, dropper)
    end
    end
  end)
end

for _, entry in pairs(ERMob) do
    local mobNamea     = entry[1]
  m:addOverride(string.format('xi.zones.Escha_RuAun.mobs.%s.onMobDeath', mobNamea), function(mob, player, optParams)
    super(mob, player, optParams)
    dropper = mob:getID()
    local randx = math.random(15, 45)
    player:addCurrency('escha_silt', randx)
    player:printToPlayer(string.format("You obtained %s Escha Silt", randx),xi.msg.channel.SYSTEM_3)
  end)
end

return m

--        ESCHA_ZITAH                     = 288,
--        ESCHA_RUAUN                     = 289,
-- 9084 eschlixer nq