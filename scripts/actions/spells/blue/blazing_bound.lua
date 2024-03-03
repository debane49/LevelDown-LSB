-----------------------------------
-- Spell: Blazing Bound
-- Deals fire damage to an enemy.
-- Spell cost: 113
-- Monster Type: Vorageans
-- Spell Type: Magical (Fire)
-- Blue Magic Points: 3
-- Stat Bonus: VIT+2 AGI+1 
-- Level: 80
-- Casting Time:  seconds
-- Recast Time: 30 seconds
-- Magic Bursts on: Induration, Distortion, and Darkness
-- Combos: Dual wield
-----------------------------------
local spellObject = {}

spellObject.onMagicCastingCheck = function(caster, target, spell)
    return 0
end

spellObject.onSpellCast = function(caster, target, spell)
    local params = {}
    params.ecosystem = xi.ecosystem.Limule
    params.attackType = xi.attackType.Single
    params.damageType = xi.damageType.Fire
    params.diff = 0 -- no stat increases magic accuracy
    params.skillType = xi.skill.BLUE_MAGIC
    params.hpMod = 3
    params.lvlMod = 0.625

    local results = xi.spells.blue.useMagical(caster, target, spell, params, true)
    local damage = results[1]
    local resist = results[1]

    return damage
end

return spellObject
