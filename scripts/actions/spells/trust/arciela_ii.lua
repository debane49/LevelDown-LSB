-----------------------------------
-- Trust: Arciela II
-----------------------------------
---@type TSpellTrust
local spellObject = {}

spellObject.onMagicCastingCheck = function(caster, target, spell)
    return xi.trust.canCast(caster, spell, xi.magic.spell.ARCIELA)
end

spellObject.onSpellCast = function(caster, target, spell)
    return xi.trust.spawn(caster, spell)
end

spellObject.onMobSpawn = function(mob)
    xi.trust.message(mob, xi.trust.messageOffset.SPAWN)

    local heal = mob:getMaxHP()
    local Bonus = 0
    if mob:getMaster():getMainLvl() == 99 then
       Bonus = mob:getMainLvl() * 2
       mob:addStatusEffect(xi.effect.MAX_MP_BOOST, 50, 0, 0)
       mob:setMP(mob:getMaxMP())
       mob:addStatusEffect(xi.effect.MAX_HP_BOOST, 100, 0, 0)
       mob:setHP(mob:getMaxHP())
    end
    mob:addMod(xi.mod.REFRESH, 3)
    mob:addMod(xi.mod.ATT, Bonus)
    mob:addMod(xi.mod.ACC, Bonus)
    mob:addMod(xi.mod.DEF, Bonus)
    mob:setMod(xi.mod.MAIN_DMG_RATING, 33)
   -- mob:setMod(xi.mod.FASTCAST, 100)
    mob:setMod(xi.mod.UFASTCAST, 100)
    mob:addMod(xi.mod.ENH_MAGIC_DURATION,25)





    mob:addSimpleGambit(ai.t.TARGET, ai.c.MB_AVAILABLE, 0, ai.r.MA, ai.s.MB_ELEMENT, xi.magic.spellFamily.NONE)

    --[[
    local whmNpty = 0
            local party = mob:getMaster():getPartyWithTrusts()
              if whmNpty == 0 then
                for _, partyMember in ipairs(party) do
                    if partyMember:getMainJob() == xi.job.WHM then
                       mob:entityAnimationPacket("ids0")
                       mob:setLocalVar('Phase', 1)
                    end
                end
              end
]]--
local Ascension = mob:getLocalVar('Ascension')

         mob:addListener('ENGAGE', 'ARCIELAII_ENGAGE', function(mobArg)
         if Ascension == 0 then
            mob:injectActionPacket(mob:getID(), 11, 2448,0,0,0,10,1)
            mob:timer(8000, function(mobArg)
            mob:addSimpleGambit(ai.t.SELF, ai.c.NOT_STATUS, xi.effect.HASTE, ai.r.MA, ai.s.HIGHEST, xi.magic.spellFamily.HASTE)
            mob:addSimpleGambit(ai.t.SELF, ai.c.NOT_STATUS, xi.effect.REFRESH, ai.r.MA, ai.s.HIGHEST, xi.magic.spell.REFRESH)
            mob:addSimpleGambit(ai.t.RANGED, ai.c.NOT_STATUS, xi.effect.FLURRY, ai.r.MA, ai.s.HIGHEST, xi.magic.spellFamily.FLURRY)
            mob:addSimpleGambit(ai.t.TOP_ENMITY, ai.c.NOT_STATUS, xi.effect.PHALANX, ai.r.MA, ai.s.SPECIFIC, xi.magic.spell.PHALANX_II)
            -- NOTE: Do these late, to try and avoid clashing with healers casting -ra's
            mob:addSimpleGambit(ai.t.SELF, ai.c.NOT_STATUS, xi.effect.PROTECT, ai.r.MA, ai.s.HIGHEST, xi.magic.spellFamily.PROTECT)
            mob:addSimpleGambit(ai.t.SELF, ai.c.NOT_STATUS, xi.effect.SHELL, ai.r.MA, ai.s.HIGHEST, xi.magic.spellFamily.SHELL)
            end)
                        mob:setLocalVar('Ascension',1)
                                mob:timer(18000, function(mobArg)
                                mob:injectActionPacket(mob:getID(), 11, 2449,0,0,0,10,1)
                                mob:entityAnimationPacket("ids1") -- dark hands ids1 & sp21 & sp01
                                mobArg:setLocalVar('Phase', 1)
                                 mob:timer(6000, function(mobArg)
                                    mob:addSimpleGambit(ai.t.TARGET, ai.c.STATUS_FLAG, xi.effectFlag.DISPELABLE, ai.r.MA, ai.s.SPECIFIC, xi.magic.spell.DISPEL)
                                 -- mob:addSimpleGambit(ai.t.TARGET, ai.c.NOT_STATUS, xi.effect.ADDLE, ai.r.MA, ai.s.SPECIFIC, xi.magic.spell.ADDLE)
                                    mob:addSimpleGambit(ai.t.TARGET, ai.c.NOT_STATUS, xi.effect.SLOW, ai.r.MA, ai.s.HIGHEST, xi.magic.spellFamily.SLOW, 60)
                                    mob:addSimpleGambit(ai.t.TARGET, ai.c.NOT_STATUS, xi.effect.PARALYSIS, ai.r.MA, ai.s.HIGHEST, xi.magic.spellFamily.PARALYZE, 60)
                                    end)
                                    end)


         end
         end)

         mob:addListener('COMBAT_TICK', 'ARCIELAII_CTICK', function(mobArg)

         --   xi.trust.message(mobArg, xi.trust.messageOffset.SPECIAL_MOVE_1) -- naakuals vengance

         --[[
                         if mob:getLocalVar('Phase') == 0 then
                                mob:timer(6000, function(mobArg)
                             --   mobArg:entityAnimationPacket("1sto")
                             --       mob:timer(60, function(mobArg)
                                    mobArg:entityAnimationPacket("ids1")
                                        mobArg:setLocalVar('Phase', 1)
                             --       end)
                                end)
                         end
         ]]--


                    end)


         mob:addListener('ATTACK', 'ARCIELAII_ATTACK', function(player, target, action) -- changes which attack type based on light / dark mode
                        local dattack = math.random(2446,2447)
                        local lattack = math.random(2444,2445)
                            if mob:getLocalVar('Phase') == 1 then
                               mob:injectActionPacket(target:getID(), 11, dattack,0,0,0,10,1)
                            elseif mob:getLocalVar('Phase') == 0 then
                               mob:injectActionPacket(target:getID(), 11, lattack,0,0,0,10,1)
                            end
         end)

                    --[[
         mob:addListener('COMBAT_TICK', 'ARCIELAD_CTICK', function(mobArg)

                         if mob:getLocalVar('Phase') == 1 then
                                mob:entityAnimationPacket("ids1") -- dark hands ids1 & sp21 & sp01
                                mob:timer(3600, function(mobArg)
                                mobArg:entityAnimationPacket("1sto")
                                    mob:timer(60, function(mobArg)
                                        mobArg:setLocalVar('Phase', 2)
                                    end)
                                end)
                         end
                    end)

         mob:addListener('COMBAT_TICK', 'ARCIELAL_CTICK', function(mobArg)
                         if mob:getLocalVar('Phase') == 2 then
                                mob:entityAnimationPacket("ids0") -- light hands ids0 & sp20 & sp10
                                mob:entityAnimationPacket("1sto")
                                mob:timer(3600, function(mobArg)
                                mobArg:entityAnimationPacket("2sto") 
                                    mob:timer(60, function(mobArg)
                                        mobArg:setLocalVar('Phase', 1)
                                    end)
                                end)
                         end
                    end)
                    ]]--
         


end

spellObject.onMobDespawn = function(mob)
    xi.trust.message(mob, xi.trust.messageOffset.DESPAWN)
end

spellObject.onMobDeath = function(mob)
    xi.trust.message(mob, xi.trust.messageOffset.DEATH)
end

return spellObject
-- mod ENF_MAG_POTENCY
-- mod ENH_MAGIC_DURATION