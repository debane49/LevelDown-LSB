-----------------------------------
-- Area: The Shrouded Maw
--  Mob: Diabolos Prime HTBF
-----------------------------------
local ID = zones[xi.zone.THE_SHROUDED_MAW]
-----------------------------------
-----------------------------------
mixins = { require('scripts/mixins/job_special') }
-----------------------------------
local entity = {}

entity.onMobSpawn = function(mob)
        mob:addMod(xi.mod.STR, 50) 
        mob:addMod(xi.mod.VIT, 50) 
        mob:addMod(xi.mod.INT, 50) 
        mob:addMod(xi.mod.MND, 50) 
        mob:addMod(xi.mod.CHR, 50) 
        mob:addMod(xi.mod.AGI, 50) 
        mob:addMod(xi.mod.DEX, 50) 
        mob:addMod(xi.mod.DEF, 50) 
        mob:addMod(xi.mod.RATT, 150) 
        mob:addMod(xi.mod.ACC, 275) 
        mob:addMod(xi.mod.ATT, 175) 
        mob:addMod(xi.mod.MATT, 50)
        mob:addMod(xi.mod.MACC, 50) 
        mob:addMod(xi.mod.MEVA, 100) 
        mob:addMod(xi.mod.MDEF, 100)
        mob:setMod(xi.mod.EVA, 50)
        mob:setMod(xi.mod.EARTH_SDT, 50)
        mob:setMod(xi.mod.DARK_SDT, 50)
        mob:setMod(xi.mod.LIGHT_SDT, 50)
        mob:setMod(xi.mod.ICE_SDT, 50)
        mob:setMod(xi.mod.FIRE_SDT, 50)
        mob:setMod(xi.mod.WATER_SDT, 50)
        mob:setMod(xi.mod.THUNDER_SDT, 50)
        mob:setMod(xi.mod.WIND_SDT, 50)
        mob:setMod(xi.mod.SILENCERES, 50) 
        mob:setMod(xi.mod.STUNRES, 10) 
        mob:setMod(xi.mod.BINDRES, 50) 
        mob:setMod(xi.mod.GRAVITYRES, 50) 
        mob:setMod(xi.mod.SLEEPRES, 50) 
        mob:setMod(xi.mod.POISONRES, 50) 
        mob:setMod(xi.mod.PARALYZERES, 50) 
        mob:setMod(xi.mod.LULLABYRES, 0) 
        mob:setMod(xi.mod.FASTCAST, 50)
        mob:addStatusEffect(xi.effect.REGEN,  25, 3, 0)
        mob:addStatusEffect(xi.effect.REGAIN, 10, 3, 0)
    xi.mix.jobSpecial.config(mob, {
        specials =
        {
            { id = 1911, hpp = math.random(60, 85) }, -- uses  Ruinous Omen once while near 75% HPP.
            { id = 1911, hpp = math.random(20, 45) }, -- uses  Ruinous Omen once while near 30% HPP.
        },
    })
end

entity.onMobFight = function(mob, target)
end

entity.onMobDeath = function(mob, player, optParams)
end

return entity
