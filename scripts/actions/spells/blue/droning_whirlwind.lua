-----------------------------------
-- Spell: Droning Whirlwind
-- Deals wind damage to enemies within area of effect. Additional effect: Dispel
-- Spell cost: 224 MP
-- Monster Type: Vermin
-- Spell Type: Magical (Wind)
-- Stat Bonus:
-- Level: 99
-- Casting Time: 0.5 seconds
-- Recast Time: 5 seconds
-- Combos:
-----------------------------------
local spellObject = {}

spellObject.onMagicCastingCheck = function(caster, target, spell)
     if caster:hasStatusEffect(xi.effect.UNBRIDLEDLEARNING) or 
     caster:hasStatusEffect(xi.effect.UNBRIDLED_WISDOM) then
return 0
    else
        return spell:setMsg(xi.basic.STATUS_PREVENTS)
    end
end

spellObject.onSpellCast = function(caster, target, spell)
    local params = {}
    params.ecosystem = xi.ecosystem.VERMIN
    params.attackType = xi.attackType.MAGICAL
    params.damageType = xi.damageType.WIND
    params.multiplier = 1.36
    params.duppercap = 99
    params.str_wsc = 0.0
    params.dex_wsc = 0.0
    params.vit_wsc = 0.0
    params.agi_wsc = 0.0
    params.int_wsc = 0.0
    params.mnd_wsc = 0.0
    params.chr_wsc = 0.0

    params.addedEffect = xi.effect.DISPEL
    local power = 5
    local tick = 0

    local damage = xi.spells.blue.useMagicalSpell(caster, target, spell, params)
    xi.spells.blue.useMagicalSpellAddedeffect(caster, target, spell, params, power, tick)

    return damage
end

return spellObject
    