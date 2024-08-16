-----------------------------------
-- Spell: Mighty Guard
-- Increases own defense, magic defense, attack speed and gradually restores own HP.
-- Spell cost: 299 MP
-- Monster Type: Dragons
-- Spell Type: Magical (Light)
-- Stat Bonus:
-- Level: 99
-- Casting Time: 9 seconds
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
end
spellObject.onSpellCast = function(caster, target, spell)
    local duration = xi.spells.blue.calculateDurationWithDiffusion(caster, 90)
    local returnEffect = xi.effect.DEFENSE_BOOST
    local returnEffect = xi.effect.HASTE
    local returnEffect = xi.effect.REGEN
    local returnEffect = xi.effect.MAGIC_DEFENSE_BOOST

    local actionOne = target:addStatusEffect(xi.effect.DEFENSE_BOOST, 10, 0, duration)
    local actionTwo = target:addStatusEffect(xi.effect.HASTE, 10, 0, duration)
    local actionThree = target:addStatusEffect(xi.effect.REGEN, 10, 0, duration)
    local actionFour = target:addStatusEffect(xi.effect.MAGIC_DEFENSE_BOOST, 10, 0, duration)

    return typeEffect
end
return spellObject