-----------------------------------
-- Area: Uleguerand Range
--  Mob: Jormungand
-----------------------------------
---@type TMobEntity
local entity = {}

local function setupFlightMode(mob, battleTime)
    mob:setAnimationSub(1)
    mob:addStatusEffectEx(xi.effect.ALL_MISS, 0, 1, 0, 0)
    mob:setMobSkillAttack(732)
    mob:setLocalVar('changeTime', battleTime)
end

entity.onMobInitialize = function(mob)
    mob:setCarefulPathing(true)
end

entity.onMobSpawn = function(mob)
    -- Reset animation so it starts grounded.
    mob:setMobSkillAttack(0)
    mob:setAnimationSub(0)
    mob:setMobMod(xi.mobMod.NO_MOVE, 0)
end

entity.onMobRoam = function(mob)
    mob:setMobMod(xi.mobMod.NO_MOVE, 0)
end

entity.onMobFight = function(mob, target)
    -- Animation (Ground or flight mode) logic.
    if
        not mob:hasStatusEffect(xi.effect.BLOOD_WEAPON) and
        mob:actionQueueEmpty()
    then
        local changeTime  = mob:getLocalVar('changeTime')
        local twohourTime = mob:getLocalVar('twohourTime')
        local battleTime  = mob:getBattleTime()
        local animation   = mob:getAnimationSub()

        if twohourTime == 0 then
            twohourTime = math.random(8, 14)
            mob:setLocalVar('twohourTime', twohourTime)
        end

        -- Initial grounded mode.
        if
            animation == 0 and
            battleTime - changeTime > 60
        then
            setupFlightMode(mob, battleTime)

        -- Flight mode.
        -- TODO: Verify if sleep is broken on phase change.  Previous confirmation of
        -- being able to sleep while mid-air.

        elseif
            animation == 1 and
            battleTime - changeTime > 30 and
            mob:checkDistance(target) <= 6 -- This 2 checks are a hack until we can handle skills targeting a position and not an entity.
        then
            mob:useMobAbility(1292) -- This ability also handles animation change to 2.

            mob:setLocalVar('changeTime', battleTime)

        -- Subsequent grounded mode.
        elseif animation == 2 then
            if battleTime / 15 > twohourTime then -- 2-Hour logic.
                mob:useMobAbility(695)
                mob:setLocalVar('twohourTime', battleTime / 15 + 20)

            elseif battleTime - changeTime > 60 then -- Change mode.
                setupFlightMode(mob, battleTime)
            end
        end
    end

    -- Jorm draws in from set boundaries leaving her spawn area
    local drawInTable =
    {
        conditions =
        {
            target:getXPos() < -105 and target:getXPos() > -215 and target:getZPos() > 195,
            target:getXPos() > -250 and target:getXPos() < -212 and target:getZPos() < 55,
            target:getXPos() > -160 and target:getZPos() > 105 and target:getZPos() < 130,
        },
        position = mob:getPos(),
        wait = 3,
    }
    for _, condition in ipairs(drawInTable.conditions) do
        if condition then
            mob:setMobMod(xi.mobMod.NO_MOVE, 1)
            utils.drawIn(target, drawInTable)
            break
        else
            mob:setMobMod(xi.mobMod.NO_MOVE, 0)
        end
    end
end

entity.onMobWeaponSkill = function(target, mob, skill)
    if skill:getID() == 1296 and mob:getHPP() <= 30 then
        local roarCounter = mob:getLocalVar('roarCounter')

        roarCounter = roarCounter + 1
        mob:setLocalVar('roarCounter', roarCounter)

        if roarCounter > 2 then
            mob:setLocalVar('roarCounter', 0)
        else
            mob:useMobAbility(1296)
        end
    end
end

entity.onMobDeath = function(mob, player, optParams)
    player:addTitle(xi.title.WORLD_SERPENT_SLAYER)
end

entity.onMobDespawn = function(mob)
    mob:setRespawnTime(math.random(259200, 432000)) -- 3 to 5 days
end

return entity
