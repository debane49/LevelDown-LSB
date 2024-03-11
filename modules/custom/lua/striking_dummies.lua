-----------------------------------
-- Stationary Striking dummies.
-----------------------------------
require('modules/module_utils')
require('scripts/zones/Rala_Waterways/Zone')
-----------------------------------
local m = Module:new('striking_dummies')

m:addOverride('xi.zones.Rala_Waterways.Zone.onInitialize', function(zone)
    super(zone)
    local mob1 = zone:insertDynamicEntity({
        objtype = xi.objType.MOB,
        name = 'Striking Dummy',
        look = 431,
        x = 359,
        y = -12.5101,
        z = -414.0013,
        rotation = 192,
        widescan = 1,
        groupId = 44,
        groupZoneId = 146,

        onMobSpawn = function(mob1)
            mob1:addStatusEffect(xi.effect.STUN, 1, 0, 0)
            mob1:setMobMod(xi.mobMod.CHARMABLE, 0)
            mob1:setMobMod(xi.mobMod.NO_MOVE, 1)
            mob1:setMobMod(xi.mobMod.NO_AGGRO, 1)
            mob1:setMobMod(xi.mobMod.NO_LINK, 1)
            mob1:setBehaviour(bit.bor(mob1:getBehaviour(), xi.behavior.NO_TURN))
            mob1:setUnkillable(true)
            mob1:setMobMod(xi.mobMod.SPELL_LIST, 0)
            mob1:setMobMod(xi.mobMod.SKILL_LIST, 0)
            mob1:setMagicCastingEnabled(false)
            mob1:setHP(mob1:getMaxHP())
            mob1:setAutoAttackEnabled(false)
        end,

        onMobDisengage = function(mob1)
            mob1:setPos(359, -12.5101, -414.0013, 192)
        end,

        onMobFight = function(mob1, target)
            mob1:setHP(mob1:getMaxHP())
            mob1:setMobLevel(target:getAverageItemLevel())
            mob1:setMobMod(xi.mobMod.CHARMABLE, 0)
            mob1:setMobMod(xi.mobMod.NO_MOVE, 1)
            mob1:setMobMod(xi.mobMod.NO_AGGRO, 1)
            mob1:setMobMod(xi.mobMod.NO_LINK, 1)
            mob1:setBehaviour(bit.bor(mob1:getBehaviour(), xi.behavior.NO_TURN))
            mob1:setUnkillable(true)
            mob1:setMobMod(xi.mobMod.SPELL_LIST, 0)
            mob1:setMobMod(xi.mobMod.SKILL_LIST, 0)
            mob1:setMagicCastingEnabled(false)
            mob1:setHP(mob1:getMaxHP())
            mob1:setAutoAttackEnabled(false)
        end,
    })
    local mob2 = zone:insertDynamicEntity({
        objtype = xi.objType.MOB,
        name = 'Striking Dummy',
        look = 431,
        x = 361,
        y = -12.5101,
        z = -414.0013,
        rotation = 192,
        widescan = 1,
        groupId = 44,
        groupZoneId = 146,

        onMobSpawn = function(mob2)
            mob2:addStatusEffect(xi.effect.STUN, 1, 0, 0)
            mob2:setMobMod(xi.mobMod.CHARMABLE, 0)
            mob2:setMobMod(xi.mobMod.NO_MOVE, 1)
            mob2:setMobMod(xi.mobMod.NO_AGGRO, 1)
            mob2:setMobMod(xi.mobMod.NO_LINK, 1)
            mob2:setBehaviour(bit.bor(mob2:getBehaviour(), xi.behavior.NO_TURN))
            mob2:setUnkillable(true)
            mob2:setMobMod(xi.mobMod.SPELL_LIST, 0)
            mob2:setMobMod(xi.mobMod.SKILL_LIST, 0)
            mob2:setMagicCastingEnabled(false)
            mob2:setHP(mob2:getMaxHP())
            mob2:setAutoAttackEnabled(false)
        end,

        onMobDisengage = function(mob2)
            mob2:setPos(361, -12.5101, -414.0013, 192)
        end,

        onMobFight = function(mob2, target)
            mob2:setHP(mob2:getMaxHP())
            mob2:setMobLevel(target:getAverageItemLevel())
            mob2:setMobMod(xi.mobMod.CHARMABLE, 0)
            mob2:setMobMod(xi.mobMod.NO_MOVE, 1)
            mob2:setMobMod(xi.mobMod.NO_AGGRO, 1)
            mob2:setMobMod(xi.mobMod.NO_LINK, 1)
            mob2:setBehaviour(bit.bor(mob2:getBehaviour(), xi.behavior.NO_TURN))
            mob2:setUnkillable(true)
            mob2:setMobMod(xi.mobMod.SPELL_LIST, 0)
            mob2:setMobMod(xi.mobMod.SKILL_LIST, 0)
            mob2:setMagicCastingEnabled(false)
            mob2:setHP(mob2:getMaxHP())
            mob2:setAutoAttackEnabled(false)
        end,
    })
    local mob3 = zone:insertDynamicEntity({
        objtype = xi.objType.MOB,
        name = 'Striking Dummy',
        look = 431,
        x = 357,
        y = -12.5101,
        z = -414.0013,
        rotation = 192,
        widescan = 1,
        groupId = 44,
        groupZoneId = 146,

        onMobSpawn = function(mob3)
            mob3:addStatusEffect(xi.effect.STUN, 1, 0, 0)
            mob3:setMobMod(xi.mobMod.CHARMABLE, 0)
            mob3:setMobMod(xi.mobMod.NO_MOVE, 1)
            mob3:setMobMod(xi.mobMod.NO_AGGRO, 1)
            mob3:setMobMod(xi.mobMod.NO_LINK, 1)
            mob3:setBehaviour(bit.bor(mob3:getBehaviour(), xi.behavior.NO_TURN))
            mob3:setUnkillable(true)
            mob3:setMobMod(xi.mobMod.SPELL_LIST, 0)
            mob3:setMobMod(xi.mobMod.SKILL_LIST, 0)
            mob3:setMagicCastingEnabled(false)
            mob3:setHP(mob3:getMaxHP())
            mob3:setAutoAttackEnabled(false)
        end,

        onMobDisengage = function(mob3)
            mob3:setPos(357, -12.5101, -414.0013, 192)
        end,

        onMobFight = function(mob3, target)
            mob3:setHP(mob3:getMaxHP())
            mob3:setMobLevel(target:getAverageItemLevel())
            mob3:setMobMod(xi.mobMod.CHARMABLE, 0)
            mob3:setMobMod(xi.mobMod.NO_MOVE, 1)
            mob3:setMobMod(xi.mobMod.NO_AGGRO, 1)
            mob3:setMobMod(xi.mobMod.NO_LINK, 1)
            mob3:setBehaviour(bit.bor(mob3:getBehaviour(), xi.behavior.NO_TURN))
            mob3:setUnkillable(true)
            mob3:setMobMod(xi.mobMod.SPELL_LIST, 0)
            mob3:setMobMod(xi.mobMod.SKILL_LIST, 0)
            mob3:setMagicCastingEnabled(false)
            mob3:setHP(mob3:getMaxHP())
            mob3:setAutoAttackEnabled(false)
        end,
    })
    local mob4 = zone:insertDynamicEntity({
        objtype = xi.objType.MOB,
        name = 'Striking Dummy',
        look = 431,
        x = 359,
        y = -12.5101,
        z = -386.4066,
        rotation = 64,
        widescan = 1,
        groupId = 44,
        groupZoneId = 146,

        onMobSpawn = function(mob4)
            mob4:addStatusEffect(xi.effect.STUN, 1, 0, 0)
            mob4:setMobMod(xi.mobMod.CHARMABLE, 0)
            mob4:setMobMod(xi.mobMod.NO_MOVE, 1)
            mob4:setMobMod(xi.mobMod.NO_AGGRO, 1)
            mob4:setMobMod(xi.mobMod.NO_LINK, 1)
            mob4:setBehaviour(bit.bor(mob4:getBehaviour(), xi.behavior.NO_TURN))
            mob4:setUnkillable(true)
            mob4:setMobMod(xi.mobMod.SPELL_LIST, 0)
            mob4:setMobMod(xi.mobMod.SKILL_LIST, 0)
            mob4:setMagicCastingEnabled(false)
            mob4:setAutoAttackEnabled(false)
        end,

        onMobDisengage = function(mob4)
            mob4:setPos(359, -12.5101, -386.4066, 64)
        end,

        onMobFight = function(mob4, target)
            mob4:setHP(mob4:getMaxHP())
            mob4:setMobLevel(target:getAverageItemLevel())
            mob4:setMobMod(xi.mobMod.CHARMABLE, 0)
            mob4:setMobMod(xi.mobMod.NO_MOVE, 1)
            mob4:setMobMod(xi.mobMod.NO_AGGRO, 1)
            mob4:setMobMod(xi.mobMod.NO_LINK, 1)
            mob4:setBehaviour(bit.bor(mob4:getBehaviour(), xi.behavior.NO_TURN))
            mob4:setUnkillable(true)
            mob4:setMobMod(xi.mobMod.SPELL_LIST, 0)
            mob4:setMobMod(xi.mobMod.SKILL_LIST, 0)
            mob4:setMagicCastingEnabled(false)
            mob4:setAutoAttackEnabled(false)
        end,
    })
    local mob5 = zone:insertDynamicEntity({
        objtype = xi.objType.MOB,
        name = 'Striking Dummy',
        look = 431,
        x = 361,
        y = -12.5101,
        z = -386.4066,
        rotation = 64,
        widescan = 1,
        groupId = 44,
        groupZoneId = 146,

        onMobSpawn = function(mob5)
            mob5:addStatusEffect(xi.effect.STUN, 1, 0, 0)
            mob5:setMobMod(xi.mobMod.CHARMABLE, 0)
            mob5:setMobMod(xi.mobMod.NO_MOVE, 1)
            mob5:setMobMod(xi.mobMod.NO_AGGRO, 1)
            mob5:setMobMod(xi.mobMod.NO_LINK, 1)
            mob5:setBehaviour(bit.bor(mob5:getBehaviour(), xi.behavior.NO_TURN))
            mob5:setUnkillable(true)
            mob5:setMobMod(xi.mobMod.SPELL_LIST, 0)
            mob5:setMobMod(xi.mobMod.SKILL_LIST, 0)
            mob5:setMagicCastingEnabled(false)
            mob5:setAutoAttackEnabled(false)
        end,

        onMobDisengage = function(mob5)
            mob5:setPos(361, -12.5101, -386.4066, 64)
        end,

        onMobFight = function(mob5, target)
            mob5:setHP(mob5:getMaxHP())
            mob5:setMobLevel(target:getAverageItemLevel())
            mob5:setMobMod(xi.mobMod.CHARMABLE, 0)
            mob5:setMobMod(xi.mobMod.NO_MOVE, 1)
            mob5:setMobMod(xi.mobMod.NO_AGGRO, 1)
            mob5:setMobMod(xi.mobMod.NO_LINK, 1)
            mob5:setBehaviour(bit.bor(mob5:getBehaviour(), xi.behavior.NO_TURN))
            mob5:setUnkillable(true)
            mob5:setMobMod(xi.mobMod.SPELL_LIST, 0)
            mob5:setMobMod(xi.mobMod.SKILL_LIST, 0)
            mob5:setMagicCastingEnabled(false)
            mob5:setAutoAttackEnabled(false)
        end,
    })
    local mob6 = zone:insertDynamicEntity({
        objtype = xi.objType.MOB,
        name = 'Striking Dummy',
        look = 431,
        x = 357,
        y = -12.5101,
        z = -386.4066,
        rotation = 64,
        widescan = 1,
        groupId = 44,
        groupZoneId = 146,

        onMobSpawn = function(mob6)
            mob6:addStatusEffect(xi.effect.STUN, 1, 0, 0)
            mob6:setMobMod(xi.mobMod.CHARMABLE, 0)
            mob6:setMobMod(xi.mobMod.NO_MOVE, 1)
            mob6:setMobMod(xi.mobMod.NO_AGGRO, 1)
            mob6:setMobMod(xi.mobMod.NO_LINK, 1)
            mob6:setBehaviour(bit.bor(mob6:getBehaviour(), xi.behavior.NO_TURN))
            mob6:setUnkillable(true)
            mob6:setMobMod(xi.mobMod.SPELL_LIST, 0)
            mob6:setMobMod(xi.mobMod.SKILL_LIST, 0)
            mob6:setMagicCastingEnabled(false)
            mob6:setAutoAttackEnabled(false)
        end,

        onMobDisengage = function(mob6)
            mob6:setPos(359, -12.5101, -386.4066, 64)
        end,

        onMobFight = function(mob6, target)
            mob6:setHP(mob6:getMaxHP())
            mob6:setMobLevel(target:getAverageItemLevel())
            mob6:setMobMod(xi.mobMod.CHARMABLE, 0)
            mob6:setMobMod(xi.mobMod.NO_MOVE, 1)
            mob6:setMobMod(xi.mobMod.NO_AGGRO, 1)
            mob6:setMobMod(xi.mobMod.NO_LINK, 1)
            mob6:setBehaviour(bit.bor(mob6:getBehaviour(), xi.behavior.NO_TURN))
            mob6:setUnkillable(true)
            mob6:setMobMod(xi.mobMod.SPELL_LIST, 0)
            mob6:setMobMod(xi.mobMod.SKILL_LIST, 0)
            mob6:setMagicCastingEnabled(false)
            mob6:setAutoAttackEnabled(false)
        end,
    })

    mob1:setSpawn(mob1:getXPos(), mob1:getYPos(), mob1:getZPos(), mob1:getRotPos())
    mob2:setSpawn(mob2:getXPos(), mob2:getYPos(), mob2:getZPos(), mob2:getRotPos())
    mob3:setSpawn(mob3:getXPos(), mob3:getYPos(), mob3:getZPos(), mob3:getRotPos())
    mob4:setSpawn(mob4:getXPos(), mob4:getYPos(), mob4:getZPos(), mob4:getRotPos())
    mob5:setSpawn(mob5:getXPos(), mob5:getYPos(), mob5:getZPos(), mob5:getRotPos())
    mob6:setSpawn(mob6:getXPos(), mob6:getYPos(), mob6:getZPos(), mob6:getRotPos())
    mob1:spawn()
    mob2:spawn()
    mob3:spawn()
    mob4:spawn()
    mob5:spawn()
    mob6:spawn()
    utils.unused(mob1)
    utils.unused(mob2)
    utils.unused(mob3)
    utils.unused(mob4)
    utils.unused(mob5)
    utils.unused(mob6)
end)

-- m:addOverride("xi.zones.Rala_Waterways.Zone.onGameDay",  function()
    -- xi.custom.mob1:setStatus(xi.status.NORMAL)
    -- xi.custom.mob2:setStatus(xi.status.NORMAL)
    -- xi.custom.mob3:setStatus(xi.status.NORMAL)
    -- xi.custom.mob4:setStatus(xi.status.NORMAL)
    -- xi.custom.mob5:setStatus(xi.status.NORMAL)
    -- xi.custom.mob6:setStatus(xi.status.NORMAL)
-- end)

return m

