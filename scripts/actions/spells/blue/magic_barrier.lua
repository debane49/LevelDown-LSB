-----------------------------------
-- Spell: Magic Barrier
-- Restores Grants a Magic Shield effect.
-- Spell cost: 29 MP
-- Monster Type: Demons
-- Spell Type: Magical (Dark)
-- Blue Magic Points: 3
-- Stat Bonus: MP +7 INT +2
-- Level: 82
-- Casting Time: 5 seconds
-- Recast Time: 60 seconds
-----------------------------------
-- Combos: Max MP Boost
-----------------------------------
local spellObject = {}

spellObject.onMagicCastingCheck = function(caster, target, spell)
    return 0
end

spellObject.onSpellCast = function(caster, target, spell)
    local typeEffect = xi.effect.MAGIC_SHIELD
    local blueSkill = utils.clamp(caster:getSkillLevel(xi.skill.BLUE_MAGIC), 0, 500)
    local power = (blueSkill / 3) * 2
    local duration = xi.spells.blue.calculateDurationWithDiffusion(caster, 300)

    if not target:addStatusEffect(typeEffect, power, 0, duration, 0, 0, 2) then
        spell:setMsg(xi.msg.basic.MAGIC_NO_EFFECT)
    end

    return typeEffect
end

return spellObject
