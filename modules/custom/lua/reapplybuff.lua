
-----------------------------------
require("modules/module_utils")
-----------------------------------
local m = Module:new("reapplybuff")


m:addOverride("xi.effects.dedication.onEffectLose", function(target,effect)
super(target,effect)
if target:getCharVar('Buff') == 1 then
   target:addStatusEffect(xi.effect.DEDICATION, 500, 0, 0, 0, 30000) -- max 30000 or server crash
end
end)

m:addOverride("xi.effects.commitment.onEffectLose", function(target,effect)
super(target,effect)
if target:getCharVar('Buff') == 1 then
   target:addStatusEffect(xi.effect.COMMITMENT, 40, 0, 0, 0, 30000) -- max 30000 or server crash
end
end)


return m
