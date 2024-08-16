-----------------------------------
-- Spell: Sweeping Gouge
-- Delivers a twofold attack. Additional effect: Weakens defense. Duration of effect varies with TP.
-- Spell cost: 29 MP
-- Monster Type: Beast
-- Spell Type: Physical (Blunt)
-- Blue Magic Points: 6
-- Stat Bonus: HP +25, VIT +5
-- Level: 99
-- Casting Time: 0.5 seconds
-- Recast Time: 120 seconds
-- Combos: Lizard Killer
-----------------------------------
local spellObject = {}

spellObject.onMagicCastingCheck = function(caster, target, spell)
    return 0     
end

spellObject.onSpellCast = function(caster, target, spell)
    local params = {}
    params.ecosystem = xi.ecosystem.BEAST
    params.attackType = xi.attackType.PHYSICAL
    params.damageType = xi.damageType.BLUNT
    params.attribute = xi.mod.VIT
    params.skillType = xi.skill.BLUE_MAGIC_SKILL
    params.scattr = xi.skillchainType.LIGHT
    params.scattr2 = xi.skillchainType.FRAGMENTATION
    params.numhits = 1
    params.multiplier = 2.0
    params.tp150 = 2.0
    params.tp300 = 2.0
    params.duppercap = 99
    params.str_wsc = 0.25
    params.dex_wsc = 0.0
    params.vit_wsc = 0.0
    params.agi_wsc = 0.0
    params.int_wsc = 0.0
    params.mnd_wsc = 0.25
    params.chr_wsc = 0.0
    params.addedEffect = xi.effect.WEAKEN_DEFENSE
    local resistThreshold = 0
    local power = 10
    local tick = 10
    local duration = 120
    local fTP = caster:getTP()
    if fTP >= 2000 then 
        duration = 60
    elseif fTP == 3000 then
        duration = 120
        resistThreshold = 0.5
    end
    local damage = xi.spells.blue.usePhysicalSpell(caster, target, spell, params)
    xi.spells.blue.usePhysicalSpellAddedEffect(caster, target, spell, params, power, tick, duration)

    return damage
end

return spellObject
    