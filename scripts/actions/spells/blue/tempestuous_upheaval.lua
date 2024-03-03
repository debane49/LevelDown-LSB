-----------------------------------
-- Spell: Tem. Upheaval
-- 	Deals wind damage to enemies within range.
-- Spell cost: 133
-- Monster Type: VERMIN
-- Spell Type: Magical (Wind)
-- Blue Magic Points: 6
-- Stat Bonus: AGI +6
-- Level: 99
-- Casting Time: .5 seconds
-- Recast Time: 12 seconds
-- Combos: Evasion Bonus
-----------------------------------
local spellObject = {}

spellObject.onMagicCastingCheck = function(caster, target, spell)
    return 0
end

spellObject.onSpellCast = function(caster, target, spell)
    local params = {}
    params.ecosystem = xi.ecosystem.VERMIN
    params.attackType = xi.attackType.MAGICAL
    params.damageType = xi.damageType.WIND
    params.diff = 25
    params.skillType = xi.skill.BLUE_MAGIC
    params.attribute = xi.mod.INT
    params.multiplier = 1
    params.tMultiplier = 2.0
    params.duppercap = 3
    params.str_wsc = 0.0
    params.dex_wsc = 0.0
    params.vit_wsc = 0.0
    params.agi_wsc = 0.3
    params.int_wsc = 0.0
    params.mnd_wsc = 0.0
    params.chr_wsc = 0.0

    return xi.spells.blue.useMagicalSpell(caster, target, spell, params)
end

return spellObject
