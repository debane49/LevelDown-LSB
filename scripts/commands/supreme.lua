-----------------------------------
-- func: fafnir
-- desc: Summon a fightable Fafnir (no loot)
-- note:
-----------------------------------
mixins = { require('scripts/mixins/rage') }
local commandObj = {}

commandObj.cmdprops =
{
    permission = 5,
    parameters = ''
}

commandObj.onTrigger = function(player)
    local zoneOrInstanceObj = player:getZone()

    local instance = player:getInstance()
    if instance then
        zoneOrInstanceObj = instance
    end

    local mob = zoneOrInstanceObj:insertDynamicEntity({

        objtype = xi.objType.MOB,
        name = 'Supreme Behemoth',
    --  look = '0000320b00000000000000000000000000000000', -- behemoth
    --  look = '0000480900000000000000000000000000000000', -- turntle 17301538 & 17301537
        look = '0000630200000000000000000000000000000000', -- dragon 17408018 & 17408019
        x = player:getXPos(),
        y = player:getYPos(),
        z = player:getZPos(),
        rotation = player:getRotPos(),
        groupId = 63,
        groupZoneId = 288,
        ---------------------------------------------------------------------------
        -----------onMobSpawn
        ---------------------------------------------------------------------------
        onMobSpawn = function(mob)
        mob:setLocalVar('[rage]timer', 900) -- 3600 = 60 minutes
        mob:setMobLevel(130)
        mob:setMobMod(xi.mobMod.DRAW_IN, 1)
        mob:setMobMod(xi.mobMod.CHECK_AS_NM, 1)
        mob:addMod(xi.mod.MAIN_DMG_RATING, 150)
        mob:setMobMod(xi.mobMod.IDLE_DESPAWN, 600)
        mob:addMod(xi.mod.MP, 9500)

        mob:addMod(xi.mod.STR, 400) 
        mob:addMod(xi.mod.VIT, 400) 
        mob:addMod(xi.mod.INT, 400) 
        mob:addMod(xi.mod.MND, 400) 
        mob:addMod(xi.mod.CHR, 400) 
        mob:addMod(xi.mod.AGI, 400) 
        mob:addMod(xi.mod.DEX, 400) 
        mob:addMod(xi.mod.DEF, 400) 
        -- evasion 898
        mob:addMod(xi.mod.RATT, 475) 
        mob:addMod(xi.mod.ACC, 750) 
        mob:addMod(xi.mod.ATT, 550) 
        mob:addMod(xi.mod.MATT, 250)
        mob:addMod(xi.mod.MACC, 750) 
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

        mob:addStatusEffect(xi.effect.BLAZE_SPIKES, 100, 0, 0)
        mob:addStatusEffect(xi.effect.REGEN, 350, 3, 0)
        mob:addStatusEffect(xi.effect.REGAIN, 50, 3, 0)
        mob:addStatusEffect(xi.effect.ENFIRE_II, 100, 0, 0)
 
        mob:setMobMod(xi.mobMod.SKILL_LIST, 51)
        mob:setMP(mob:getMaxMP())
        mob:setLocalVar('Adds', 1)

       mob:addListener('TAKE_DAMAGE', 'BEHEMOTH_TAKE_DAMAGE', function(mob, damage, attacker, attackType, damageType)
         local accumulatedPhisical = mob:getLocalVar('physical')
         local accumulatedMagical  = mob:getLocalVar('magical')
            if attackType == xi.attackType.PHYSICAL or
               attackType == xi.attackType.RANGED then
               accumulatedPhisical = accumulatedPhisical + damage -- sets how much damage over all
               mob:setLocalVar('physical', damage)
            else
               accumulatedMagical = accumulatedMagical + damage -- sets how much damage over all
               mob:setLocalVar('magical', damage)
            end
       end)
           local procjobs =
    {
        [xi.job.WAR] = 'ws',
        [xi.job.MNK] = 'ja',
        [xi.job.WHM] = 'ma',
        [xi.job.BLM] = 'ma',
        [xi.job.RDM] = 'ma',
        [xi.job.THF] = 'ja',
        [xi.job.PLD] = 'ws',
        [xi.job.DRK] = 'ws',
        [xi.job.BST] = 'ja',
        [xi.job.BRD] = 'ma',
        [xi.job.RNG] = 'ja',
        [xi.job.SAM] = 'ws',
        [xi.job.NIN] = 'ja',
        [xi.job.DRG] = 'ws',
        [xi.job.SMN] = 'ma',
        [xi.job.DNC] = 'ja',
        [xi.job.SCH] = 'ma',
        [xi.job.RUN] = 'ws',
        [xi.job.GEO] = 'ma',
        [xi.job.COR] = 'ja',
        [xi.job.BLU] = 'ma',
        [xi.job.PUP] = 'ws',
    }


       mob:addListener('MAGIC_TAKE', 'BEHEMOTH_MAGIC_TAKE', function(target, caster, spell) -- prevents from charming 
             if procjobs[caster:getMainJob()] == 'ma' and
                math.random(0, 99) < 10 and
                target:getLocalVar('supreme_procm') == 0 then
                target:weaknessTrigger(2) -- Red proc
                target:addStatusEffect(xi.effect.TERROR, 0, 0, 15)
                target:setLocalVar('supreme_procm', 1)
             end
       end)
       mob:addListener('WEAPONSKILL_TAKE', 'BEHEMOTH_WEAPONSKILL_TAKE', function(target, user, wsid) -- removes ability to use Benidiction at 10%
       if math.random(0, 99) < 10 then
             if target:getLocalVar('supreme_procw') == 0 and user:isPC() or user:isTrust() and procjobs[user:getMainJob()] == 'ws' then
                target:weaknessTrigger(0) -- Blue proc
                target:addStatusEffect(xi.effect.TERROR, 0, 0, 15)
                target:setLocalVar('supreme_procw', 1)
             end
       end
       end)
       mob:addListener('ABILITY_TAKE', 'BEHEMOTH_ABILITY_TAKE', function(mob, user, ability, action) -- removed status effects
             if procjobs[user:getMainJob()] == 'ja' and
                math.random(0, 99) < 10 and
                mob:getLocalVar('supreme_proca') == 0 then
                mob:weaknessTrigger(3) -- White proc
                mob:delStatusEffect(xi.effect.BLAZE_SPIKES)
                mob:delStatusEffect(xi.effect.REGEN)
                mob:delStatusEffect(xi.effect.REGAIN)
                mob:delStatusEffect(xi.effect.ENFIRE_II)
                mob:addStatusEffect(xi.effect.TERROR, 0, 0, 15)
                mob:setLocalVar('supreme_proca', 1)
             end
       end)

        -- procing system
        -- target:weaknessTrigger(3) -- White proc
        -- target:weaknessTrigger(2) -- Red proc
        -- target:weaknessTrigger(1) -- Yellow proc
        -- target:weaknessTrigger(0) -- Blue proc

        local elements =
        {
            { xi.mod.HTH_SDT,    xi.day.FIRESDAY      },
            { xi.mod.SLASH_SDT,  xi.day.EARTHSDAY     },
            { xi.mod.PIERCE_SDT, xi.day.WATERSDAY     },
            { xi.mod.IMPACT_SDT, xi.day.WINDSDAY      },
            { xi.mod.HTH_SDT,    xi.day.ICEDAY        },
            { xi.mod.SLASH_SDT,  xi.day.LIGHTNINGSDAY },
            { xi.mod.PIERCE_SDT, xi.day.LIGHTSDAY     },
            { xi.mod.IMPACT_SDT, xi.day.DARKSDAY      },
        }
        local blah = 0
        local blaha = 0
            local dayOfWeek = VanadielDayOfTheWeek()
                for k, v in pairs(elements) do
                    if dayOfWeek == v[2] then
                       mob:setMod(v[1], 0)
                    end
                end
        end,
        ---------------------------------------------------------------------------
        -----------onMobFight
        ---------------------------------------------------------------------------

        onMobFight = function(mob, target)
                    target:addListener('ABILITY_USE',  'PLAYER_ABILITY', function(player, target, ability, action)
                        if player:isPC() and ability:getID() == 22 then
                        player:printToPlayer(string.format('%s', ability:getID()))
                           mob:useMobAbility(694)
                        end
                    end)
        if mob:getHPP() <= 90 and
           mob:getLocalVar('Comet') == 0 then
           mob:castSpell(219)
           mob:setLocalVar('Comet', 1)
        end

        if mob:getHPP() <= 75 and
           mob:getLocalVar('Comet') == 1 then
           mob:castSpell(218)
           mob:setLocalVar('Comet', 2)
        end

        if mob:getHPP() <= 25 and
           mob:getLocalVar('Comet') == 2 then
           mob:castSpell(219)
           mob:setLocalVar('Comet', 3)
        end

        if mob:getHPP() <= 50 and
           mob:getLocalVar('Adds') == 1 then
           local behID = zones[xi.zone.BEHEMOTHS_DOMINION]
            GetMobByID(behID.mob.BEHEMOTH):spawn()
              GetMobByID(behID.mob.BEHEMOTH):updateClaim(target)
            GetMobByID(behID.mob.KING_BEHEMOTH):spawn()
              GetMobByID(behID.mob.KING_BEHEMOTH):updateClaim(target)
           mob:setLocalVar('Adds', 2)
           mob:setLocalVar('AddsTimer', os.time())
        end
           local behID = zones[xi.zone.BEHEMOTHS_DOMINION] -- removes immortal after behmoth and king behemoth are killed
        if mob:getLocalVar('AddsTimer') < os.time() and
           mob:getLocalVar('Adds') == 2 and
           not GetMobByID(behID.mob.BEHEMOTH):isSpawned() and
           not GetMobByID(behID.mob.KING_BEHEMOTH):isSpawned() then
           mob:setLocalVar('Adds', 4)
        end


        if mob:getLocalVar('Adds') == 2 then
           mob:addStatusEffectEx(xi.effect.PHYSICAL_SHIELD, 0, 1, 0, 0)
           mob:addStatusEffectEx(xi.effect.ARROW_SHIELD, 0, 1, 0, 0)   
           mob:addStatusEffectEx(xi.effect.MAGIC_SHIELD, 0, 1, 0, 0)
        end
        if mob:getLocalVar('Adds') == 4 then
           mob:delStatusEffect(xi.effect.PHYSICAL_SHIELD)
           mob:delStatusEffect(xi.effect.ARROW_SHIELD)   
           mob:delStatusEffect(xi.effect.MAGIC_SHIELD)
        end
        if mob:getHPP() <= 10 and
           mob:getLocalVar('supreme_procw') == 0 and
           mob:getLocalVar('Benidiction') == 0 then
           mob:useMobAbility(689) -- uses benidiction if magic proc isnt completed
           mob:setLocalVar('Benidiction', 1) -- set so he wont use again
        end
        if mob:getHPP() <= 5 and
           mob:getLocalVar('HundoFist') == 0 then
           mob:useMobAbility(690) -- uses Hundred fist
           mob:setLocalVar('HundoFist', 1) -- set so he wont use again
        end

        end,
        ---------------------------------------------------------------------------
        -----------onSpellPrecast
        ---------------------------------------------------------------------------
        onSpellPrecast = function(mob, spell)
        if spell:getID() == 218 or 219 then
        spell:setAoE(xi.magic.aoe.RADIAL)
        spell:setFlag(xi.magic.spellFlag.HIT_ALL)
        spell:setRadius(30)
        spell:setAnimation(280)
        spell:setMPCost(1)
        end
        end,
        ---------------------------------------------------------------------------
        -----------onMagicHit
        ---------------------------------------------------------------------------
        onMagicHit = function(caster, target, spell)
            local dayOfWeek = VanadielDayOfTheWeek()
            local spellElement = spell:getElement()
            local curhp = target:getHP()
            local absorb = target:getLocalVar('magical')
              if spellElement == xi.magic.dayElement[dayOfWeek] and
                 (caster:isPC() or caster:isPet() or caster:isTrust()) then
                 target:setHP(curhp + absorb) -- absorb spells
                 target:messageBasic(xi.msg.basic.RECOVERS_HP, 0, absorb)
              end
            if spell:getID() == 23 or spell:getID() == 24 or spell:getID() == 25 then
               target:useMobAbility(695) -- use blood weapon on dia
            end
            if spell:getID() == 253 or spell:getID() == 273 or spell:getID() == 274 or spell:getID() == 259 and target:getLocalVar('supreme_procm') ~= 1  then
               target:useMobAbility(710) -- use charm on sleep - this does not proc against lullaby
            end

        end,
        ---------------------------------------------------------------------------
        -----------onMobDeath
        ---------------------------------------------------------------------------
        onMobDeath = function(mob, playerArg, optParams)
        -- spawn chest
        -- look 2425 purple chest
        -- 2426 rainbow chest
        -- 969 gold chest
        -- 968 red chest
        -- 965 blue chest
        -- 967 brown chest
        end,


        releaseIdOnDisappear = true,

        -- You can apply mixins like you would with regular mobs. mixinOptions aren't supported yet.
        mixins =
        {
            require('scripts/mixins/rage'),
            require('scripts/mixins/job_special'),
        },
        specialSpawnAnimation = true,
    })

    -- Use the mob object as you normally would
    mob:setSpawn(player:getXPos(), player:getYPos(), player:getZPos(), player:getRotPos())

    mob:setDropID(0) -- No loot!
    mob:setSpellList(0)
    mob:setMobMod(xi.mobMod.NO_DROPS, 1)

    mob:spawn()

    player:printToPlayer(string.format('Spawning Fafnir (Lv: %i, HP: %i)\n%s', mob:getMainLvl(), mob:getMaxHP(), mob))
end

return commandObj
