-----------------------------------
-- Cap Skills
-----------------------------------
require('modules/module_utils')
require('scripts/globals/mobs')
require('scripts/globals/player')
-----------------------------------
local m = Module:new('cap skills')

m:addOverride('xi.player.onPlayerLevelUp', function(player)

    player:capAllSkills()
    super(player)
end)

return m

