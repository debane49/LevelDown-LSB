-----------------------------------
-- Spell: Thunderbolt
-- Deals Lightning damage to enemies within the area of effect. Additional effect: "Stun".
-- Spell cost: 138 MP
-- Monster Type: Beast
-- Spell Type: Magical (THunder)
-- Stat Bonus:
-- Level: 95
-- Casting Time: 8.5 seconds
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
    local params = {}
    params.ecosystem = xi.ecosystem.BEAST
    params.attackType = xi.attackType.MAGICAL
    params.damageType = xi.damageType.THUNDER
    params.diff = 0 -- no stat increases magic accuracy
    params.skillType = xi.skill.BLUE_MAGIC
    params.attribute = xi.mod.INT
    params.attribute = xi.mod.MND
    params.multiplier = 1.5625
    params.tMultiplier = 1.0
    params.duppercap = 99
    params.str_wsc = 0.0
    params.dex_wsc = 0.0
    params.vit_wsc = 0.0
    params.agi_wsc = 0.0
    params.int_wsc = 2.5
    params.mnd_wsc = 2.5
    params.chr_wsc = 0.0
    
    params.addedEffect = xi.effect.STUN
    local power = 10
    local tick = 0
    local duration = 10

    local damage = xi.spells.blue.useMagicalSpell(caster, target, spell, params, true)
    xi.spells.blue.useMagicalSpellAddedEffect(caster, target, spell, params, power, tick, duration)
    local resist = results[2]

    return 
end

return spellObject
