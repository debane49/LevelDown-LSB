-----------------------------------
-- func: buff
-- desc: Toggles buff on the player, granting them several special abilities.
-----------------------------------
local commandObj = {}

commandObj.cmdprops =
{
    permission = 0,
    parameters = 'i'
}

local buffOn = function(player)
    player:setCharVar('BuffLvl', player:getMainLvl())
    player:setCharVar('BuffJob', player:getMainJob())
    player:setCharVar('Buff', 1)
    -- Add bonus effects to the player..
    player:addStatusEffect(xi.effect.REGAIN, 25, 0, 0)
    player:addStatusEffect(xi.effect.REFRESH, 10, 0, 0)
    player:addStatusEffect(xi.effect.REGEN, 10, 0, 0)
        if player:hasStatusEffect(xi.effect.DEDICATION) then
           return
           else
           player:addStatusEffect(xi.effect.DEDICATION, 500, 0, 0, 0, 30000) -- max 30000 or server crash
        end
    -- Add bonus mods to the player..
    player:addMod(xi.mod.RACC, 50)
    player:addMod(xi.mod.RATT, 50)
    player:addMod(xi.mod.ACC, 50)
    player:addMod(xi.mod.ATT, 50)
    player:addMod(xi.mod.MATT, 50)
    player:addMod(xi.mod.MACC, 50)
    player:addMod(xi.mod.RDEF, 50)
    player:addMod(xi.mod.DEF, 50)
    player:addMod(xi.mod.MDEF, 50)
end

local buffOff = function(player)
    player:setCharVar('BuffLvl', 0)
    player:setCharVar('BuffJob', 0)
    player:setCharVar('Buff', 0)
    -- remove listeners
    player:removeListener('PLAYER_EFFECT')
    player:removeListener('PLAYER_LEVEL')
    -- Remove bonus effects..
    player:delStatusEffect(xi.effect.REGAIN)
    player:delStatusEffect(xi.effect.REFRESH)
    player:delStatusEffect(xi.effect.REGEN)
    player:delStatusEffect(xi.effect.DEDICATION)
    player:delStatusEffect(xi.effect.COMMITMENT)
    -- Remove bonus mods..
    player:delMod(xi.mod.RACC, 50)
    player:delMod(xi.mod.RATT, 50)
    player:delMod(xi.mod.ACC, 50)
    player:delMod(xi.mod.ATT, 50)
    player:delMod(xi.mod.MATT, 50)
    player:delMod(xi.mod.MACC, 50)
    player:delMod(xi.mod.RDEF, 50)
    player:delMod(xi.mod.DEF, 50)
    player:delMod(xi.mod.MDEF, 50)

end

commandObj.onTrigger = function(player, tier)
  local mode = utils.clamp(tier or 0, 0, 2)
  local state = player:getCharVar('Buff')
  if player:hasStatusEffect(xi.effect.BATTLEFIELD) then
     player:printToPlayer('You cannot use or have !buff in battlefields.')
     return
  else
    if state == 0 and -- add only commitment for lvl 99 
        player:getMainLvl() == 99 then
        if player:hasStatusEffect(xi.effect.COMMITMENT) then
            return
            else
                player:setCharVar('BuffLvl', player:getMainLvl())
                player:setCharVar('BuffJob', player:getMainJob())
                player:setCharVar('Buff', 2)
                player:addStatusEffect(xi.effect.COMMITMENT, 40, 0, 0, 0, 30000)
                player:printToPlayer('Buff enabled.')
            end
    elseif state == 0 and -- add dedication and buffs for below 99
        player:getMainLvl() <= 98 then
        player:setCharVar('Buff', 1)
        buffOn(player)
        player:printToPlayer('Buff enabled.')
    elseif state == 1 or state == 2 then -- remove buff
        player:setCharVar('Buff', 0)
        buffOff(player)
        player:printToPlayer('Buff disabled.')
    end
                   player:addListener('TICK', 'PLAYER_LEVEL', function(player)
                      if player:getCharVar('BuffLvl') < player:getMainLvl() and
                         player:getCharVar('Buff') == 1 or
                         player:getCharVar('Buff') == 2 then
                         player:setCharVar('BuffLvl', player:getMainLvl())
                      end
                      if player:getCharVar('BuffLvl') == 99 and
                         player:getCharVar('Buff') == 1 then
                                player:printToPlayer('Buff disabled.')
                                buffOff(player)
                      end
                      if player:getCharVar('BuffJob') ~= player:getMainJob() then
                                player:printToPlayer('Buff disabled.')
                                buffOff(player)
                      end
                   end)
                       player:addListener('EFFECT_GAIN', 'PLAYER_EFFECT', function(player)
                            if player:hasStatusEffect(xi.effect.BATTLEFIELD) then
                               buffOff(player)
                               player:printToPlayer('Buff disabled.')
                               player:printToPlayer('You cannot use or have !buff in battlefields.')
                            end
                       end)
  end
end
return commandObj
