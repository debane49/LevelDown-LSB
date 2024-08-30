-----------------------------------
-- Area: LaLoff Amphitheater
--  Mob: Ark Angel EV
-----------------------------------
mixins = { require('scripts/mixins/job_special') }
-----------------------------------
local entity = {}

entity.onMobInitialize = function(mob)
    mob:addMod(xi.mod.REGAIN, 50)
end

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
        mob:addMod(xi.mod.ACC, 475) 
        mob:addMod(xi.mod.ATT, 275) 
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
            { id = xi.jsa.BENEDICTION, hpp = math.random(20, 30) }, -- "Uses Benediction once."
            { id = xi.jsa.INVINCIBLE, hpp = math.random(90, 95), cooldown = 90 }, -- "Uses Invincible many times."
        },
    })
end

entity.onMobEngage = function(mob, target)
    local mobid = mob:getID()

    for member = mobid-4, mobid + 3 do
        local m = GetMobByID(member)
        if m and m:getCurrentAction() == xi.act.ROAMING then
            m:updateEnmity(target)
        end
    end
end

entity.onMobDeath = function(mob, player, optParams)
end

return entity
