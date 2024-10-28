-----------------------------------
-- Puppetmaster Job Utilities
-----------------------------------
xi = xi or {}
xi.job_utils = xi.job_utils or {}
xi.job_utils.puppetmaster = xi.job_utils.puppetmaster or {}

-----------------------------------
-- Ability Check Functions
-----------------------------------
xi.job_utils.puppetmaster.checkOverdrive = function(player, target, ability)
    local pet = player:getPet()
    if not pet then
        return xi.msg.basic.REQUIRES_A_PET, 0
    elseif not pet:isAutomaton() then
        return xi.msg.basic.NO_EFFECT_ON_PET, 0
    else
        ability:setRecast(math.max(0, ability:getRecast() - player:getMod(xi.mod.ONE_HOUR_RECAST) * 60))
        return 0, 0
    end
end

-----------------------------------
-- Ability Use Functions
-----------------------------------
xi.job_utils.puppetmaster.useOverdrive = function(player, target, ability)
    player:addStatusEffect(xi.effect.OVERDRIVE, 0, 0, 180)
    return xi.effect.OVERDRIVE
end
