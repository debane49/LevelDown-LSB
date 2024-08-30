-----------------------------------
-- Area: LaLoff Amphitheater
--  Mob: Ark Angel TT
-----------------------------------
mixins = { require('scripts/mixins/job_special') }
-----------------------------------
local entity = {}

entity.onMobInitialize = function(mob)
    mob:addMod(xi.mod.UFASTCAST, 60)
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
        mob:addMod(xi.mod.ACC, 275) 
        mob:addMod(xi.mod.ATT, 175) 
        mob:addMod(xi.mod.MATT, 150)
        mob:addMod(xi.mod.MACC, 150) 
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
        between = 30,
        specials =
        {
            { id = xi.jsa.BLOOD_WEAPON },
            {
                id = xi.jsa.MANAFONT,
                endCode = function(mobArg) -- "Uses Manafont and ... Will cast Sleepga followed by Meteor."
                    mobArg:castSpell(273) -- sleepga
                    mobArg:castSpell(218) -- meteor
                end,
            },
        },
    })
end

entity.onMobEngage = function(mob, target)
    local mobid = mob:getID()

    for member = mobid-5, mobid + 2 do
        local m = GetMobByID(member)
        if m and m:getCurrentAction() == xi.act.ROAMING then
            m:updateEnmity(target)
        end
    end
end

entity.onMobFight = function(mob, target)
    if
        mob:hasStatusEffect(xi.effect.BLOOD_WEAPON) and
        bit.band(mob:getBehaviour(), xi.behavior.STANDBACK) > 0
    then
        mob:setBehaviour(bit.band(mob:getBehaviour(), bit.bnot(xi.behavior.STANDBACK)))
        mob:setMobMod(xi.mobMod.TELEPORT_TYPE, 0)
        mob:setMobMod(xi.mobMod.SPAWN_LEASH, 0)
        mob:setSpellList(0)
    end

    if
        not mob:hasStatusEffect(xi.effect.BLOOD_WEAPON) and
        bit.band(mob:getBehaviour(), xi.behavior.STANDBACK) == 0
    then
        mob:setBehaviour(bit.bor(mob:getBehaviour(), xi.behavior.STANDBACK))
        mob:setMobMod(xi.mobMod.TELEPORT_CD, 30)
        mob:setMobMod(xi.mobMod.TELEPORT_START, 936)
        mob:setMobMod(xi.mobMod.TELEPORT_END, 962)
        mob:setMobMod(xi.mobMod.TELEPORT_TYPE, 1)
        mob:setMobMod(xi.mobMod.SPAWN_LEASH, 22)
        mob:setSpellList(516)
    end

    mob:timer(30000, function(mobArg)
        mob:setBehaviour(bit.band(mob:getBehaviour(), bit.bnot(xi.behavior.STANDBACK)))
    end)
end

entity.onMobDeath = function(mob, player, optParams)
end

return entity
