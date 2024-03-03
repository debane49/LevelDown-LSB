-----------------------------------
-- Testdummy
-----------------------------------
local commandObj = {}
      commandObj.cmdprops =
{
    permission = 0,
    parameters = 's'
}

local function error(player, msg)
    player:printToPlayer(msg)
    player:printToPlayer('!testdummy')
end

commandObj.onTrigger = function(player)
    local x = 347.2237
    local y = -12.5101
    local z = -400.0551
    local rot = 255
    local zone = 258
    local target = player:getCursorTarget()

    if
        player:getZoneID() ~= xi.zone.RALA_WATERWAYS then
        player:setPos(x, y, z, rot, zone)
    end

    if
        player:getZoneID() == xi.zone.RALA_WATERWAYS and
        not player:hasEnmity()
    then
        --player:setPos(x, y, z, rot)

        --17834076
        local zoneOrInstanceObj = player:getZone()

        local instance = player:getInstance()
        if instance then
            zoneOrInstanceObj = instance
        end

        local mob = zoneOrInstanceObj:insertDynamicEntity({
            -- NPC or MOB
            objtype = xi.objType.MOB,

            -- The name visible to players
            -- NOTE: Even if you plan on making the name invisible, we're using it internally for lookups
            --     : So populate it with something unique-ish even if you aren't going to use it.
            --     : You can then hide the name with entity:hideName(true)
            -- NOTE: This name CAN include spaces and underscores.
            name = 'Testdummy',

            -- Optional: Define a different name that is visible to players.
            -- 'Fafnir' (DE_Fafnir) will still be used internally for lookups.
            -- packetName = 'Fake Fafnir',

            -- Set the position using in-game x, y and z
            x = player:getXPos(),
            y = player:getYPos(),
            z = player:getZPos(),
            rotation = player:getRotPos(),

            -- Fafnir's entry in mob_groups:
            -- INSERT INTO `mob_groups` VALUES (5, 1280, 154, 'Fafnir', 0, 128, 805, 70000, 0, 90, 90, 0)
            --                       groupId ---^        ^--- groupZoneId
            groupId = 44,
            groupZoneId = 146,

            -- You can provide an onMobDeath function if you want: if you don't
            -- add one, an empty one will be inserted for you behind the scenes.
            onMobDisengage = function(mob)
                DespawnMob(mob:getID())
            end,

            onMobSpawn = function(mob)
                mob:setMobMod(xi.mobMod.CHARMABLE, 0)
                mob:setMobMod(xi.mobMod.NO_MOVE, 1)
                mob:setUnkillable(true)
                mob:setMobMod(xi.mobMod.SPELL_LIST, 0)
                mob:setMobMod(xi.mobMod.SKILL_LIST, 0)
                mob:setMagicCastingEnabled(false)
            end,

            onMobFight = function(mob, target)
                mob:setMobMod(xi.mobMod.CHARMABLE, 0)
                --mob:setMobMod(xi.mobMod.NO_MOVE, 1)
                mob:setUnkillable(true)
                mob:setMobMod(xi.mobMod.SPELL_LIST, 0)
                mob:setMobMod(xi.mobMod.SKILL_LIST, 0)
                mob:setMagicCastingEnabled(false)
                mob:setHP(mob:getMaxHP())
            end,

            -- If set to true, the internal id assigned to this mob will be released for other dynamic entities to use
            -- after this mob has died. Defaults to false.
            releaseIdOnDisappear = true,

            -- You can apply mixins like you would with regular mobs. mixinOptions aren't supported yet.
            -- mixins =
            -- {
                -- require('scripts/mixins/rage'),
                -- require('scripts/mixins/job_special'),
            -- },

            -- The 'whooshy' special animation that plays when Trusts or Dynamis mobs spawn
            specialSpawnAnimation = true,
        })

        -- Use the mob object as you normally would
        mob:setSpawn(374.5627, -12.5101, -399.9890, 125)

        mob:setDropID(0) -- No loot!

        mob:setMobMod(xi.mobMod.NO_DROPS, 1)

        mob:spawn()

        mob:updateEnmity(player)
        mob:setMobLevel(player:getMainLvl())
    elseif
        player:getZoneID() == xi.zone.RALA_WATERWAYS and
        player:hasEnmity() and
        target:getName() == 'DE_Testdummy'
    then
        DespawnMob(target:getID())
    end
end

return commandObj