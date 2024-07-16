-----------------------------------
-- Trust: aagk
-----------------------------------
require('modules/module_utils')
require('scripts/globals/trust')
-----------------------------------
local m = Module:new('ark_angel_gk')


m:addOverride("xi.actions.spells.trust.aagk.onSpellCast", function(caster, target, spell)
    local trust = caster:spawnTrust(spell:getID())
    
    trust:addSimpleGambit(ai.t.SELF, ai.c.NOT_STATUS, xi.effect.HASSO, ai.r.JA, ai.s.SPECIFIC, xi.ja.HASSO)
    trust:addSimpleGambit(ai.t.SELF, ai.c.NOT_STATUS, xi.effect.MEDITATE, ai.r.JA, ai.s.SPECIFIC, xi.ja.MEDITATE)
    trust:addSimpleGambit(ai.t.SELF, ai.c.HAS_TOP_ENMITY, 0, ai.r.JA, ai.s.SPECIFIC, xi.ja.THIRD_EYE)
    trust:addSimpleGambit(ai.t.TARGET, ai.c.ALWAYS, 0, ai.r.JA, ai.s.SPECIFIC, xi.ja.JUMP)
    trust:addSimpleGambit(ai.t.TARGET, ai.c.ALWAYS, 0, ai.r.JA, ai.s.SPECIFIC, xi.ja.HIGH_JUMP)
    trust:addSimpleGambit(ai.t.SELF, ai.c.NOT_STATUS, xi.effect.SEKKANOKI, ai.r.JA, ai.s.SPECIFIC, xi.ja.SEKKANOKI)

    trust:setTrustTPSkillSettings(ai.tp.CLOSER, ai.s.HIGHEST)
    
    local power = trust:getMainLvl()
    trust:addMod(xi.mod.DEF, power)
    trust:addMod(xi.mod.MDEF, power)
    trust:addMod(xi.mod.ATT, power * 5)
    trust:addMod(xi.mod.ACC, power * 5)
    trust:addMod(xi.mod.WSACC, power * 5)
    trust:addMod(xi.mod.STR, power * 2)
    trust:addMod(xi.mod.STORETP, 240)
    trust:addMod(xi.mod.JUMP_TP_BONUS, 250)
end)

return m
