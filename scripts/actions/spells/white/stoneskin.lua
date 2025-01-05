-----------------------------------
-- Spell: Stoneskin
-----------------------------------
---@type TSpell
local spellObject = {}

spellObject.onMagicCastingCheck = function(caster, target, spell)
    return 0
end

spellObject.onSpellCast = function(caster, target, spell)
    if target:hasStatusEffect(xi.effect.MAGIC_SHIELD, 2) then
       target:delStatusEffect(xi.effect.MAGIC_SHIELD, 2)
    end
    return xi.spells.enhancing.useEnhancingSpell(caster, target, spell)
end

return spellObject
