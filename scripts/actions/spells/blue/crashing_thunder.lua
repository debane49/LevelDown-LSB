-----------------------------------
-- Spell: Crashing Thunder
-- Deals lightning damage to enemies within range.
-- Spell cost: 172 MP
-- Monster Type: Birds
-- Spell Type: Magical (Lightning)
-- Stat Bonus:
-- Level: 99
-- Casting Time: 1 seconds
-- Recast Time: 30 seconds
-----------------------------------
local spellObject = {}

spellObject.onMagicCastingCheck = function(caster, target, spell)
    if caster:hasStatusEffect(xi.effect.UNBRIDLED_LEARNING) or
    caster:hasStatusEffect(xi.effect.UNBRIDLED_WISDOM) then
        return 0
    else
        return spell:setMsg(xi.msg.basic.STATUS_PREVENTS)
    end
spellObject.onSpellCast = function(caster, target, spell)
    local params = {}
    params.ecosystem = xi.ecosystem.BIRDS
    params.attackType = xi.damageType.MAGICAL
    params.damageType = xi.damageType.THUNDER
    params.attribute = xi.mod.INT
    params.multiplier = 6.5
    params.tMultiplier = 1.5
    params.duppercap = 99
    params.str_wsc = 0.0
    params.dex_wsc = 0.0
    params.vit_wsc = 0.0
    params.agi_wsc = 0.3
    params.int_wsc = 0.0
    params.mnd_wsc = 0.0
    params.chr_wsc = 0.0

end
    local damage = xi.spells.blue.useMagicalSpell(caster, target, spell, params)
    xi.spells.blue.useMagicalSpellAddedEffect(caster, target, spell, params, power, tick, duration)

    return damage
end

return spellObject
    