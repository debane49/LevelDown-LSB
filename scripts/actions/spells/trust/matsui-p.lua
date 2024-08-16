-----------------------------------
-- Trust: Matsui P
-----------------------------------
local spellObject = {}

spellObject.onMagicCastingCheck = function(caster, target, spell)
    return xi.trust.canCast(caster, spell)
end

spellObject.onSpellCast = function(caster, target, spell)
    return xi.trust.spawn(caster, spell)
end

spellObject.onMobSpawn = function(mob)
    xi.trust.message(mob, xi.trust.messageOffset.SPAWN)
    mob:setLocalVar('MatsuiMG', 1)
    mob:setUnkillable(true)
    -- Increase HP & MP
    mob:setMod(xi.mod.HP, 9 * mob:getMainLvl())
    mob:setMod(xi.mod.MP, 2 * mob:getMainLvl() * 5)
    mob:updateHealth()
    mob:addHP(mob:getMaxHP())
    mob:addMP(mob:getMaxMP())

    local power = mob:getMainLvl() * 2
    mob:addMod(xi.mod.DEF, power)
    mob:addMod(xi.mod.MDEF, power)
    mob:addMod(xi.mod.ATT, power * 2)
    mob:addMod(xi.mod.ACC, power * 5)
    mob:addMod(xi.mod.MACC, power * 5)
    mob:addMod(xi.mod.MATT, power * 5)
    mob:addMod(xi.mod.WSACC, power * 5)
    mob:addMod(xi.mod.DEX, power)
    mob:addMod(xi.mod.AGI, power)
    mob:addMod(xi.mod.DOUBLE_ATTACK, 15)
    mob:addMod(xi.mod.TRIPLE_ATTACK, 15)
    mob:addMod(xi.mod.DUAL_WIELD, 30)
    mob:addMod(xi.mod.STORETP, 50)
    mob:addMod(xi.mod.REGAIN, 5)
    mob:addMod(xi.mod.HASTE_GEAR, 1000)
    mob:addMod(xi.mod.HASTE_MAGIC, 5000) -- 50% Haste (Magic)
    mob:addMod(xi.mod.FASTCAST, 80)


    -- Shadows are represented by xi.effect.COPY_IMAGE, but with different icons depending on the tier
mob:addSimpleGambit(ai.t.SELF, ai.c.NOT_STATUS, xi.effect.COPY_IMAGE, ai.r.MA, ai.s.HIGHEST, xi.magic.spellFamily.UTSUSEMI)
mob:addSimpleGambit(ai.t.TARGET, ai.c.MB_AVAILABLE, 0, ai.r.MA, ai.s.MB_ELEMENT, xi.magic.spellFamily.NONE,5)
mob:addSimpleGambit(ai.t.TARGET, ai.c.NOT_SC_AVAILABLE, 0, ai.r.MA, ai.s.HIGHEST, xi.magic.spellFamily.NONE, 45)
-- Debuff enemy
mob:addSimpleGambit(ai.t.TARGET, ai.c.NOT_STATUS, 0, ai.r.MA, ai.s.SPECIFIC, xi.magic.spell.YURIN_ICHI, 45)
mob:addSimpleGambit(ai.t.TARGET, ai.c.NOT_STATUS, 0, ai.r.MA, ai.s.SPECIFIC, xi.magic.spell.AISHA_ICHI, 45)
mob:addSimpleGambit(ai.t.TARGET, ai.c.NOT_STATUS, 0, ai.r.MA, ai.s.SPECIFIC, xi.magic.spell.MYOSHU_ICHI, 45)
mob:addSimpleGambit(ai.t.TARGET, ai.c.NOT_STATUS, 0, ai.r.MA, ai.s.SPECIFIC, xi.magic.spell.BURN, 45)
-- buff self
mob:addSimpleGambit(ai.t.SELF, ai.c.NOT_STATUS, 0, ai.r.MA, ai.s.SPECIFIC, xi.magic.spell.KAKKA_ICHI, 60)
mob:addSimpleGambit(ai.t.SELF, ai.c.NOT_STATUS, 0, ai.r.MA, ai.s.SPECIFIC, xi.magic.spell.MIGAWARI_ICHI, 60)
-- job abilities
mob:addSimpleGambit(ai.t.SELF, ai.c.NOT_HAS_TOP_ENMITY, xi.effect.INNIN,ai.r.JA, ai.s.SPECIFIC, xi.ja.INNIN)
mob:addSimpleGambit(ai.t.SELF, ai.c.NOT_STATUS, xi.effect.SANGE,ai.r.JA, ai.s.SPECIFIC, xi.ja.SANGE)
mob:addSimpleGambit(ai.t.SELF, ai.c.MB_AVAILABLE, xi.effect.FUTAE,ai.r.JA, ai.s.SPECIFIC, xi.ja.FUTAE)
mob:addSimpleGambit(ai.t.SELF, ai.c.HAS_TOP_ENMITY, xi.effect.MANA_WALL,ai.r.JA, ai.s.SPECIFIC, xi.ja.MANA_WALL)
mob:addSimpleGambit(ai.t.SELF, ai.c.MB_AVAILABLE, xi.effect.ELEMENTAL_SEAL,ai.r.JA, ai.s.SPECIFIC, xi.ja.ELEMENTAL_SEAL)

    -- 5% change to regain 3000 tp on blade shun 
    mob:addListener('WEAPONSKILL_USE', 'MATSUI_BLADE_SHU_WS', function(mobArg, target, wsid, tp, action)
                        if wsid == 141 then
                           local rand = math.random(1,100)
                           if rand <= 5 then
                              mob:timer(20, function(mobArg)
                              mob:setTP(3000)
                              end)
                           end
                        end
    end)
    -- Matsui using Mijin Gakure
    mob:addListener('COMBAT_TICK', 'MATSUI_MG_CTICK', function(mobArg)
          local mgTimer = mob:getLocalVar('mgTimer')
            if mgTimer <= os.time() then
             if mobArg:getHP() == 1 and mob:getLocalVar('MatsuiMG') == 1 then
                 mobArg:useMobAbility(731)
                 mob:timer(30, function(mobArg)
                    mob:setHP(mob:getMaxHP())
                    mob:setLocalVar('mgTimer', os.time() + 1800)
                    mob:setUnkillable(false)
                    end)

             end
            end
    end)
mob:setTrustTPSkillSettings(ai.tp.CLOSER_UNTIL_TP, ai.s.HIGHEST, 2000)
end

spellObject.onMobDespawn = function(mob)
    xi.trust.message(mob, xi.trust.messageOffset.DESPAWN)
end

spellObject.onMobDeath = function(mob)
    xi.trust.message(mob, xi.trust.messageOffset.DEATH)
end

return spellObject
