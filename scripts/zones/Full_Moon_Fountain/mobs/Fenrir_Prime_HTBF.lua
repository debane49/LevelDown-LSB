-----------------------------------
-- Area: Full Moon Fountain
--  Mob: Fenrir Prime
-- Involved in Quest: the moonlit path II HTBF
-----------------------------------
mixins = { require('scripts/mixins/job_special') }
-----------------------------------
local entity = {}

entity.onMobSpawn = function(mob)
        mob:addMod(xi.mod.STR, 400) 
        mob:addMod(xi.mod.VIT, 400) 
        mob:addMod(xi.mod.INT, 400) 
        mob:addMod(xi.mod.MND, 400) 
        mob:addMod(xi.mod.CHR, 400) 
        mob:addMod(xi.mod.AGI, 400) 
        mob:addMod(xi.mod.DEX, 400) 
        mob:addMod(xi.mod.DEF, 400) 
        mob:addMod(xi.mod.RATT, 475) 
        mob:addMod(xi.mod.ACC, 750) 
        mob:addMod(xi.mod.ATT, 550) 
        mob:addMod(xi.mod.MATT, 350)
        mob:addMod(xi.mod.MACC, 350) 
        mob:addMod(xi.mod.MEVA, 500) 
        mob:addMod(xi.mod.MDEF, 500)
        mob:setMod(xi.mod.EVA, 400)
        mob:setMod(xi.mod.EARTH_SDT, 128)
        mob:setMod(xi.mod.DARK_SDT, 250)
        mob:setMod(xi.mod.LIGHT_SDT, 200)
        mob:setMod(xi.mod.ICE_SDT, 200)
        mob:setMod(xi.mod.FIRE_SDT, 200)
        mob:setMod(xi.mod.WATER_SDT, 200)
        mob:setMod(xi.mod.THUNDER_SDT, 200)
        mob:setMod(xi.mod.WIND_SDT, 200)
        mob:setMod(xi.mod.SILENCERES, 100) 
        mob:setMod(xi.mod.STUNRES, 10) 
        mob:setMod(xi.mod.BINDRES, 100) 
        mob:setMod(xi.mod.GRAVITYRES, 100) 
        mob:setMod(xi.mod.SLEEPRES, 100) 
        mob:setMod(xi.mod.POISONRES, 100) 
        mob:setMod(xi.mod.PARALYZERES, 100) 
        mob:setMod(xi.mod.LULLABYRES, 0) 
        mob:setMod(xi.mod.FASTCAST, 100)
        mob:addStatusEffect(xi.effect.REGEN,  25, 3, 0)
        mob:addStatusEffect(xi.effect.REGAIN, 50, 3, 0)

    xi.mix.jobSpecial.config(mob, {
        specials =
        {
            { id = 839, hpp = math.random(60, 85) }, -- uses Aerial Blast once while near 50% HPP.
            { id = 839, hpp = math.random(20, 45) }, -- uses Aerial Blast once while near 50% HPP.
        },
    })
end

entity.onMobFight = function(mob, target)
end

entity.onMobDeath = function(mob, player, optParams)
end

return entity
