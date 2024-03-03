
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

-----------------------------------
local ID = zones[xi.zone.ESCAH_ZITAH]
-----------------------------------
require("modules/module_utils")
require("scripts/globals/npc_util")
-----------------------------------



local m = Module:new("add_silt")

for _, entry in pairs(EZMob) do
    local mobName     = entry[1]

  m:addOverride(string.format('xi.zones.Escha_ZiTah.mobs.%s.onMobDeath', mobName), function(mob, player, isKiller)
--    super(mob)
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
return m

--        ESCHA_ZITAH                     = 288,
--        ESCHA_RUAUN                     = 289,
-- 9084 eschlixer nq