-----------------------------------
-- Mog garden decorations
-----------------------------------
require('modules/module_utils')
-----------------------------------
local m = Module:new('decor')

m:addOverride('xi.zones.Mog_Garden.Zone.onInitialize', function(zone)
    super(zone)
    local campFirea = zone:insertDynamicEntity({
        objtype = xi.objType.NPC,
        name = 'campFirea',
        look = 2411,
        x         = 343.3542,
        y         = -1.8529,
        z         = -575.0668,
        rotation = 95,
        widescan = 1,
        onTrade = function(player, npc, trade)
        end,
        onTrigger = function(player, npc)
        end,
    })
    campFirea:hideName(true)
    campFirea:setUntargetable(true)
    utils.unused(campFirea)
    local torchone = zone:insertDynamicEntity({
        objtype = xi.objType.NPC,
        name = 'torchone',
        look = 2412,
        x         = 352.0003,
        y         = -3.0957,
        z         = -546.1050,
        rotation = 62,
        widescan = 1,
        onTrade = function(player, npc, trade)
        end,
        onTrigger = function(player, npc)
        end,
    })
    torchone:hideName(true)
    torchone:setUntargetable(true)
    utils.unused(torchone)
    local torchtwo = zone:insertDynamicEntity({
        objtype = xi.objType.NPC,
        name = 'torchtwo',
        look = 2412,
        x         = 361.8677,
        y         = -2.8588,
        z         = -546.5460,
        rotation = 68,
        widescan = 1,
        onTrade = function(player, npc, trade)
        end,
        onTrigger = function(player, npc)
        end,
    })
    torchtwo:hideName(true)
    torchtwo:setUntargetable(true)
    utils.unused(torchtwo)
    local torchthree = zone:insertDynamicEntity({
        objtype = xi.objType.NPC,
        name = 'torchthree',
        look = 2412,
        x         = 377.4001,
        y         = -2.0942,
        z         = -568.9418,
        rotation = 116,
        widescan = 1,
        onTrade = function(player, npc, trade)
        end,
        onTrigger = function(player, npc)
        end,
    })
    torchthree:hideName(true)
    torchthree:setUntargetable(true)
    utils.unused(torchthree)
    local hut = zone:insertDynamicEntity({
        objtype = xi.objType.NPC,
        name = 'hut',
        look = 2337,
        x         = 319.7295,
        y         = -3.4000,
        z         = -557.1072,
        rotation = 19,
        widescan = 1,
        onTrade = function(player, npc, trade)
        end,
        onTrigger = function(player, npc)
        end,
    })
    hut:hideName(true)
    hut:setUntargetable(true)
    utils.unused(hut)

       local well = zone:insertDynamicEntity({
        objtype = xi.objType.NPC,
        name = 'well',
        look = 2334,
        x         = 321.4053,
        y         = -3.0538,
        z         = -549.0544,
        rotation = 48,
        widescan = 1,
        onTrade = function(player, npc, trade)
        end,
        onTrigger = function(player, npc)
        end,
    })
    well:hideName(true)
    well:setUntargetable(true)
    utils.unused(well)
    local newnpcAHa = zone:insertDynamicEntity({
        objtype = xi.objType.NPC,
        name = 'Gumbah',
        look = 113,
        x         = 323.4496,
        y         = -3.4000,
        z         = -559.1080,
        rotation = 21,
        widescan = 1,
        onTrade = function(player, npc, trade)
        end,
        onTrigger = function(player, npc)
            player:sendMenu(3)

        end,
    })
    utils.unused(newnpcAHa)
    local newnpcAHb = zone:insertDynamicEntity({
        objtype = xi.objType.NPC,
        name = 'Sable',
        look = 106,
        x         = 325.1152,
        y         = -3.3473,
        z         = -556.0182,
        rotation = 21,
        widescan = 1,
        onTrade = function(player, npc, trade)
        end,
        onTrigger = function(player, npc)
            player:sendMenu(3)

        end,
    })
    utils.unused(newnpcAHb)
    local newnpcAHc = zone:insertDynamicEntity({
        objtype = xi.objType.NPC,
        name = 'Gyver',
        look = 76,
        x         = 319.5119,
        y         = -3.4000,
        z         = -561.6667,
        rotation = 87,
        widescan = 1,
        onTrade = function(player, npc, trade)
        end,
        onTrigger = function(player, npc)
            player:sendMenu(3)
        end,
    })
    utils.unused(newnpc)
    local newnpca = zone:insertDynamicEntity({
        objtype = xi.objType.NPC,
        name = 'newnpca',
        look = '0100000700100020003000400050006000700000',
        x         = 345.8743,
        y         = -2.2625,
        z         = -572.2642,
        rotation = 85,
        widescan = 1,
        onTrade = function(player, npc, trade)
        end,
        onTrigger = function(player, npc)
        end,
    })
    newnpca:hideName(true)
    newnpca:setAnimation(47)
    newnpca:setUntargetable(true)
    utils.unused(newnpc)
    local newnpcb = zone:insertDynamicEntity({
        objtype = xi.objType.NPC,
        name = 'newnpcb',
        look = '0000d80000000000000000000000000000000000',
        x         = 339.9915,
        y         = -1.6096,
        z         = -575.1750,
        rotation = 254,
        widescan = 1,
        onTrade = function(player, npc, trade)
        end,
        onTrigger = function(player, npc)
        end,
    })
    newnpcb:hideName(true)
    newnpcb:setAnimationSub(3)
    newnpcb:setUntargetable(true)
    utils.unused(newnpcb)
    local newnpcc = zone:insertDynamicEntity({
        objtype = xi.objType.NPC,
        name = 'newnpcb',
        look = '01001e07771060206030cf408550006000700000',
        x         = 346.4799,
        y         = -2.1386,
        z         = -573.8766,
        rotation = 114,
        widescan = 1,
        onTrade = function(player, npc, trade)
        end,
        onTrigger = function(player, npc)
        end,
    })
    newnpcc:hideName(true)
    newnpcc:setAnimation(47)
    newnpcc:setUntargetable(true)
    utils.unused(newnpcc)
    local newnpcd = zone:insertDynamicEntity({
        objtype = xi.objType.NPC,
        name = 'newnpcb',
        look = '01000f0800100620063006400650006000700000',
        x         = 343.7872,
        y         = -2.1553,
        z         = -572.1564,
        rotation = 63,
        widescan = 1,
        onTrade = function(player, npc, trade)
        end,
        onTrigger = function(player, npc)
        end,
    })
    newnpcd:hideName(true)
    newnpcd:setAnimation(47)
    newnpcd:setUntargetable(true)
    utils.unused(newnpcd)
    local chocoSign = zone:insertDynamicEntity({
        objtype = xi.objType.NPC,
        name = 'chocoSign',
        look = 1503,
        x         = 399.4809,
        y         = -3.4000,
        z         = -520.3458,
        rotation = 99,
        widescan = 1,
        onTrade = function(player, npc, trade)
        end,
        onTrigger = function(player, npc)
        end,
    })
    chocoSign:hideName(true)
    chocoSign:setAnimation(47)
    chocoSign:setUntargetable(true)
    utils.unused(chocoSign)
end)


m:addOverride('xi.zones.Mog_Garden.Zone.onInitialize', function(zone)
	super(zone)
    local pchocob  =  zone:insertDynamicEntity({
        objtype  =  xi.objType.MOB,  
        name  =  'pchocob',   
        look  =  1997,  
        x  =  353.2104,  
        y  =  -3.2400,  
        z  =  -560.8744,  
        rotation  =  15,  
        widescan  =  1,  
        groupId  =  2,  
        groupZoneId  =  175,

        onMobSpawn  =  function(mob,   playerArg,   optParams)
            mob:setMobMod(xi.mobMod.ROAM_DISTANCE,   35)
            mob:setMobMod(xi.mobMod.NO_AGGRO, 1)
            mob:hideName(true)
        end,  

        onMobFight  =  function(mob, target)
        end,   

        onMobDeath  =  function(mob,   playerArg,   optParams)
        end,  
        specialSpawnAnimation  =  false,  
    })
    pchocob:setSpawn(353.2104, -3.2400, -560.8744, 15)
    pchocob:setDropID(0) -- loot id
    pchocob:setUntargetable(true)
    pchocob:spawn()

    local pchocoa  =  zone:insertDynamicEntity({
        objtype  =  xi.objType.MOB,  
        name  =  'pchocoa',   
        look  =  1997,  
        x  =  361.8804,  
        y  =  -2.0854,  
        z  =  -575.0220,  
        rotation  =  58,  
        widescan  =  1,  
        groupId  =  2,  
        groupZoneId  =  175,

        onMobSpawn  =  function(mob,   playerArg,   optParams)
            mob:setMobMod(xi.mobMod.ROAM_DISTANCE,   35)
            mob:setMobMod(xi.mobMod.NO_AGGRO, 1)
            mob:hideName(true)
        end,  

        onMobFight  =  function(mob, target)
        end,   

        onMobDeath  =  function(mob,   playerArg,   optParams)
        end,  
        specialSpawnAnimation  =  false,  
    })
    pchocoa:setSpawn(361.8804, -2.0854, -575.0220, 18)
    pchocoa:setDropID(0) -- loot id
    pchocoa:setUntargetable(true)
    pchocoa:spawn()

    local psheep  =  zone:insertDynamicEntity({
        objtype  =  xi.objType.MOB,  
        name  =  'petsheep',   
        look  =  2948,  
        x  =  354.2437,  
        y  =  -1.2977,  
        z  =  -581.3036,  
        rotation  =  89,  
        widescan  =  1,  
        groupId  =  2,  
        groupZoneId  =  175,

        onMobSpawn  =  function(mob,   playerArg,   optParams)
            mob:setMobMod(xi.mobMod.ROAM_DISTANCE,   35)
            mob:setMobMod(xi.mobMod.NO_AGGRO, 1)
            mob:hideName(true)
        end,  

        onMobFight  =  function(mob, target)
        end,   

        onMobDeath  =  function(mob,   playerArg,   optParams)
        end,  
        specialSpawnAnimation  =  false,  
    })
    psheep:setSpawn(354.2437, -1.2977, -581.3036, 89)
    psheep:setDropID(0) -- loot id
    psheep:setUntargetable(true)
    psheep:spawn()

    local bchoone  =  zone:insertDynamicEntity({
        objtype  =  xi.objType.MOB,  
        name  =  'petsheep',   
        look  =  2948,  
        x  =  337.8102,  
        y  =  -2.5285,  
        z  =  -559.4392,  
        rotation  =  167,  
        widescan  =  1,  
        groupId  =  2,  
        groupZoneId  =  175,

        onMobSpawn  =  function(mob,   playerArg,   optParams)
            mob:setMobMod(xi.mobMod.ROAM_DISTANCE,   35)
            mob:setMobMod(xi.mobMod.NO_AGGRO, 1)
            mob:hideName(true)
        end,  

        onMobFight  =  function(mob, target)
        end,   

        onMobDeath  =  function(mob,   playerArg,   optParams)
        end,  
        specialSpawnAnimation  =  false,  
    })
    bchoone:setSpawn(337.8102, -2.5285, -559.4392, 167)
    bchoone:setDropID(0) -- loot id
    bchoone:setUntargetable(true)
    bchoone:spawn()

    local bchotwo  =  zone:insertDynamicEntity({
        objtype  =  xi.objType.MOB,  
        name  =  'petsheep',   
        look  =  2948,  
        x  =  367.4030,  
        y  =  -2.8616,  
        z  =  -551.2469,  
        rotation  =  246,  
        widescan  =  1,  
        groupId  =  2,  
        groupZoneId  =  175,

        onMobSpawn  =  function(mob,   playerArg,   optParams)
            mob:setMobMod(xi.mobMod.ROAM_DISTANCE,   35)
            mob:setMobMod(xi.mobMod.NO_AGGRO, 1)
            mob:hideName(true)
        end,  

        onMobFight  =  function(mob, target)
        end,   

        onMobDeath  =  function(mob,   playerArg,   optParams)
        end,  
        specialSpawnAnimation  =  false,  
    })
    bchotwo:setSpawn(367.4030, -2.8616, -551.2469, 246)
    bchotwo:setDropID(0) -- loot id
    bchotwo:setUntargetable(true)
    bchotwo:spawn()
end)
return m

