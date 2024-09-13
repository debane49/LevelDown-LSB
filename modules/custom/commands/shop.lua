require('scripts/enum/item')
require('scripts/globals/shop')

local commandObj = {}

commandObj.cmdprops =
{
    permission = 0,
    parameters = ''
}

-- Forward declarations (required)
local menu  = {}
local page1 = {}
local page2 = {}
local page3 = {}
local page4 = {}
local page5 = {}
local page6 = {}
local page7 = {}
local page8 = {}
local page9 = {}
local page10 = {}
local page11 = {}
local page12 = {}
local page13 = {}
local page14 = {}
local page15 = {}
local page16 = {}
local page17 = {}
local page18 = {}
local page19 = {}
local page20 = {}



local delaySendMenu = function(player)
    player:timer(50, function(playerArg)
        playerArg:customMenu(menu)
    end)
end

menu =
{
    title = 'What would you like?',
    options = {},
}

page1 =
{
    {
        'Nothing for now.',
        function(player)
        end
    },
    {
        'Medicine',
         function(player)
            menu.options = xi.shop.general(player, page12)
         end
    },
    {
        'Ammunition',
         function(player)
            menu.options = xi.shop.general(player, page13)
         end
    },
    {
        'Ninjutsu Tools',
         function(player)
            menu.options = xi.shop.general(player, page14)
         end
    },
    {
        'Food Stuff',
         function(player)
            menu.options = xi.shop.general(player, page15)
         end
    },
    {
        'Scrolls',
         function(player)
            menu.options = xi.shop.general(player, page16)
         end
    },
    {
        'Keys',
         function(player)
            menu.options = xi.shop.general(player, page17)
         end
    },
        {
        'Next Page',
         function(player)
            menu.options = page2
            delaySendMenu(player)
         end
    },
}
page2 =
{
        {
        'Crystals',
         function(player)
            menu.options = xi.shop.general(player, page18)
         end
        },
        {
        'Dyna Pops',
         function(player)
            menu.options = xi.shop.general(player, page19)
         end
        },
        {
        'Corsair',
         function(player)
            menu.options = xi.shop.general(player, page20)
         end
        },
         {
        'Previous Page',
         function(player)
           menu.options = page1
           delaySendMenu(player)
         end
         },
}
page12 =
    {
            4112,     300,   -- Potion
            4116,     600,   -- Hi-Potion
            4120,    1200,   -- X-Potion
            4128,     650,   -- Ether / Temporarily(?) removed by SE June 2021
            4132,    1300,   -- Hi-Ether
            4136,    3000,   -- Super Ether
            4145,   15000,   -- Elixir
            4148,     300,   -- Antidote
            4150,    1000,   -- Eye Drops
            4151,     700,   -- Echo Drops
            4156,     500,   -- Mulsum
            4164,     500,   -- Prism Powder
            4165,     500,   -- Silent Oil
            4166,     250,   -- Deodorizer
            4172,    1000,   -- Reraiser
            4153,     500,   -- Antacid
    }

page13 =
{
            4219,     400,   -- Stone Quiver
            4220,     680,   -- Bone Quiver
            4225,    1200,   -- Iron Quiver
            4221,    1350,   -- Beetle Quiver
            4226,    2040,   -- Silver Quiver
            4222,    2340,   -- Horn Quiver
            5333,    3150,   -- Sleep Quiver
            4223,    3500,   -- Scorpion Quiver
            4224,    7000,   -- Demon Quiver
            5332,    8800,   -- Kabura Quiver
            5819,    9900,   -- Antlion Quiver
            4227,     400,   -- Bronze Bolt Quiver
            5334,     800,   -- Blind Bolt Quiver
            5335,    1250,   -- Acid Bolt Quiver
            5337,    1500,   -- Sleep Bolt Quiver
            5339,    2100,   -- Bloody Bolt Quiver
            5338,    2100,   -- Venom Bolt Quiver
            5336,    2400,   -- Holy Bolt Quiver
            4228,    3500,   -- Mythril Bolt Quiver
            4229,    5580,   -- Darksteel Bolt Quiver
            5820,    9460,   -- Darkling Bolt Quiver
            5821,    9790,   -- Fusion Bolt Quiver
            5359,     400,   -- Bronze Bullet Pouch
            5363,    1920,   -- Bullet Pouch
            5341,    2400,   -- Spartan Bullet Pouch
            5353,    4800,   -- Iron Bullet Pouch
            5340,    4800,   -- Silver Bullet Pouch
            5342,    7100,   -- Corsair Bullet Pouch
            5416,    7600,   -- Steel Bullet Pouch
            5822,    9680,   -- Dweomer Bullet Pouch
            5823,    9900,   -- Oberon Bullet Pouch
            6299,    1400,   -- Shuriken Pouch
            6297,    2280,   -- Juji Shuriken Pouch
            6298,    4640,   -- Manji Shuriken Pouch
            6302,    7000,   -- Fuma Shuriken Pouch
            6303,    9900,   -- Iga Shuriken Pouch
}
page14 =
{
    
            5308,    3000,   -- Toolbag (Uchi)
            5309,    3000,   -- Toolbag (Tsurara)
            5310,    3000,   -- Toolbag (Kawahori-Ogi)
            5311,    3000,   -- Toolbag (Makibishi)
            5312,    3000,   -- Toolbag (Hiraishin)
            5313,    3000,   -- Toolbag (Mizu-Deppo)
            5314,    5000,   -- Toolbag (Shihei)
            5315,    5000,   -- Toolbag (Jusatsu)
            5316,    5000,   -- Toolbag (Kaginawa)
            5317,    5000,   -- Toolbag (Sairui-Ran)
            5318,    5000,   -- Toolbag (Kodoku)
            5319,    3000,   -- Toolbag (Shinobi-Tabi)
            5417,    3000,   -- Toolbag (Sanjaku-Tenugui)
            5734,    5000,   -- Toolbag (Soshi)
}
page15 =
{
            4378,      60,   -- Selbina Milk
            4299,     100,   -- Orange au Lait
            5703,     100,   -- Uleguerand Milk
            4300,     300,   -- Apple au Lait
            4301,     600,   -- Pear au Lait
            4422,     200,   -- Orange Juice
            4424,    1100,   -- Melon Juice
            4558,    2000,   -- Yagudo Drink
            4405,     160,   -- Rice Ball
            4376,     120,   -- Meat Jerky
            4371,     184,   -- Grilled Hare
            4381,     720,   -- Meat Mithkabob
            4456,     550,   -- Boiled Crab / Temporarily(?) removed by SE June 2021
            4398,    1080,   -- Fish Mithkabob
            5166,    1500,   -- Coeurl Sub
            4538,     900,   -- Roast Pipira
            6217,     500,   -- Anchovy Slice
            6215,     400,   -- Pepperoni Slice
            5752,    3500,   -- Pot-auf-feu
            4488,    1000,   -- Jack-o'-Lantern
            5176,    5000,   -- Bream Sushi
            5178,    4000,   -- Dorado Sushi
            5721,    1500,   -- Crab Sushi
            5775,     500,   -- Chocolate Crepe
            5766,    1000,   -- Butter Crepe
            4413,     320,   -- Apple Pie
            4421,     800,   -- Melon Pie
            4446,    1200,   -- Pumpkin Pie
            4410,     344,   -- Roast Mushroom
            4510,      24,   -- Acorn Cookie
            4394,      12,   -- Ginger Cookie
            5782,    1000,   -- Sugar Rusk
            5783,    2000,   -- Chocolate Rusk
            5779,    1000,   -- Cherry Macaron
            5780,    2000,   -- Coffee Macaron
            5885,    1000,   -- Saltena
            5886,    2000,   -- Elshena
            5887,    2500,   -- Montagna
            5889,    1000,   -- Stuffed Pitaru
            5890,    2000,   -- Poultry Pitaru
            5891,    2500,   -- Seafood Pitaru
            6258,    3000,   -- Shiromochi
            6262,    3000,   -- Kusamochi
            6260,    3000,   -- Akamochi
            5547,   15000,   -- Beef Stewpot
            5727,   15000,   -- Zaru Soba
            4466,     450,   -- Spicy Cracker
}
page16 =
{
            4181,     500,   -- Instant Warp
            4182,     500,   -- Instant Reraise
            5428,     500,   -- Instant Retrace
            5988,     500,   -- Instant Protect
            5989,     500,   -- Instant Shell
            5990,     500,   -- Instant Stoneskin
            1550,     500,   -- Ark Pentasphere
}
page17 =
{
            1024,    2500,   -- Ghelsba Chest Key
            1025,    2500,   -- Palborough Chest Key
            1026,    2500,   -- Giddeus Chest Key
            1027,    2500,   -- Ranperre Chest Key
            1028,    2500,   -- Dangruf Chest Key
            1029,    2500,   -- Horutoto Chest Key
            1030,    2500,   -- Ordelle Chest Key
            1031,    2500,   -- Gusgen Chest Key
            1032,    2500,   -- Shakhrami Chest Key
            1033,    2500,   -- Davoi Chest Key
            1034,    2500,   -- Beadeaux Chest Key
            1035,    2500,   -- Oztroja Chest Key
            1036,    2500,   -- Delkfutt Chest Key
            1037,    2500,   -- Fei'Yin Chest Key
            1038,    2500,   -- Zvahl Chest Key
            1039,    2500,   -- Eldieme Chest Key
            1040,    2500,   -- Nest Chest Key
            1041,    2500,   -- Garlaige Chest Key
            1043,    5000,   -- Beadeaux Coffer Key
            1042,    5000,   -- Davoi Coffer Key
            1044,    5000,   -- Oztroja Coffer Key
            1045,    5000,   -- Nest Coffer Key
            1046,    5000,   -- Eldieme Coffer Key
            1047,    5000,   -- Garlaige Coffer Key
            1048,    5000,   -- Zvhal Coffer Key
            1049,    5000,   -- Uggalepih Coffer Key
            1050,    5000,   -- Den Coffer Key
            1051,    5000,   -- Kuftal Coffer Key
            1052,    5000,   -- Boyahda Coffer Key
            1053,    5000,   -- Cauldron Coffer Key
            1054,    5000,   -- Quicksand Coffer Key
            1055,    2500,   -- Grotto Chest Key
            1056,    2500,   -- Onzozo Chest Key
            1057,    5000,   -- Toraimarai Coffer Key
            1058,    5000,   -- Ru'Aun Coffer Key
            1059,    5000,   -- Grotto Coffer Key
            1060,    5000,   -- Ve'Lugannon Coffer Key
            1061,    2500,   -- Sacrarium Chest Key
            1062,    2500,   -- Oldton Chest Key
            1063,    5000,   -- Newton Coffer Key
            1064,    2500,   -- Pso'Xja Chest Key
}
page18 =
{
            4096,     100,   -- Fire Crystal
            4097,     100,   -- Ice Crystal
            4098,     100,   -- Wind Crystal
            4099,     100,   -- Earth Crystal
            4100,     100,   -- Lightning Crystal
            4101,     100,   -- Water Crystal
            4102,     200,   -- Light Crystal
            4103,     200,   -- Dark Crystal
            4104,     500,   -- Fire Cluster
            4105,     500,   -- Ice Cluster
            4106,     500,   -- Wind Cluster
            4107,     500,   -- Earth Cluster
            4108,     500,   -- Lightning Cluster
            4109,     500,   -- Water Cluster
            4110,     1000,   -- Light Cluster
            4111,     1000,   -- Dark Cluster
}
page19 =
{
            3353,     1000000,   -- Barbaric Bijou
            3354,     1000000,   -- Steelwell Bijou
            3355,     1000000,   -- Divine Bijou
            3356,     1000000,   -- Roving Bijou
            3357,     1000000,   -- Leering Bijou
            3358,     1000000,   -- Shrouded Bijou
            3456,     1500000,   -- Creepers Juju
            3457,     1500000,   -- Revelatory Juju
            3458,     1500000,   -- Undying Juju
            3459,     1500000,   -- Heralds Juju
}

page20 =
{
        2176,    48,    -- Fire Card
        2177,    48,    -- Ice Card
        2178,    48,    -- Wind Card
        2179,    48,    -- Earth Card
        2180,    48,    -- Thunder Card
        2181,    48,    -- Water Card
        2182,    48,    -- Light Card
        2183,    48,    -- Dark Card
        2974,    50,    -- Trump Card
}

--[[page19 = {
		10049,   1000,   --♪raptor
		10050,   1000,   --♪tiger
		10051,   1000,   --♪crab
		10052,   1000,   --♪red_crab
		10053,   1000,   --♪bomb
		10054,   1000,   --♪ram
		10055,   1000,   --♪morbol
		10056,   1000,   --♪crawler
		10057,   1000,   --♪fenrir
		10058,   1000,   --♪beetle
		10059,   1000,   --♪moogle
		10060,   1000,   --♪magic_pot
		10061,   1000,   --♪tulfaire
		10062,   1000,   --♪warmachine
		10063,   1000,   --♪xzomit
		10064,   1000,   --♪hippogryph
		10065,   1000,   --♪spectral_chair
		10066,   1000,   --♪spheroid
		10067,   1000,   --♪omega
		10068,   1000,   --♪coeurl
		10069,   1000,   --♪goobbue
		10070,   1000,   --♪raaz
		10071,   1000,   --♪levitus
		10072,   1000,   --♪adamantoise
		10073,   1000,   --♪dhalmel
		10074,   1000,   --♪doll
		10075,   1000,   --♪red_raptor
		10076,   1000,   --♪golden_bomb
		10077,   1000,   --♪buffalo
		10078,   1000,   --♪wivre
		10079,   1000,   --♪iron_giant
		10080,   1000,   --♪byakko
		10081,   1000,   --♪noble_chocobo
		10082,   1000,   --♪ixion
		10083,   1000,   --♪phuabo
}
page20 = {
        4146,   500,  --REVITALIZER                         = 4146,
        4202,   500,  --DAEDALUS_WING                       = 4202,
        4206,   500,  --BOTTLE_OF_CATHOLICON                = 4206,
        4254,   50000,  --MEGALIXIR                           = 4254,
        4255,   500,  --PINCH_OF_MANA_POWDER                = 4255,
        5322,   500,  --FLASK_OF_HEALING_POWDER             = 5322,
        5393,   500,  --BOTTLE_OF_MONARCHS_DRINK            = 5393,
        5394,   500,  --BOTTLE_OF_GNOSTICS_DRINK            = 5394,
        5395,   500,  --BOTTLE_OF_CLERICS_DRINK             = 5395,
        5397,   500,  --BOTTLE_OF_SPRINTERS_DRINK           = 5397,
        5439,   500,  --BOTTLE_OF_VICARS_DRINK              = 5439,
        5440,   500,  --DUSTY_WING                          = 5440,
        5433,   500,  --DUSTY_ELIXIR                        = 5433,
        5435,   500,  --BOTTLE_OF_FANATICS_DRINK            = 5434,
        5435,   500,  --BOTTLE_OF_FOOLS_DRINK               = 5435,
        5786,   500,  --PETRIFY_SCREEN                      = 5876,
        5824,   500,  --LUCID_POTION_I                      = 5824,
        5825,   500,  --LUCID_POTION_II                     = 5825,
        5826,   500,  --LUCID_POTION_III                    = 5826,
        5827,   500,  --LUCID_ETHER_I                       = 5827,
        5828,   500,  --LUCID_ETHER_II                      = 5828,
        5829,   500,  --LUCID_ETHER_III                     = 5829,
        5830,   500,  --LUCID_ELIXIR_I                      = 5830,
        5831,   500,  --LUCID_ELIXIR_II                     = 5831,
        5832,   500,  --FLASK_OF_HEALING_MIST               = 5832,
        5833,   500,  --FLASK_OF_MANA_MIST                  = 5833,
        5834,   500,  --PAIR_OF_LUCID_WINGS_I               = 5834,
        5835,   500,  --TUBE_OF_HEALING_SALVE_I             = 5835,
        5836,   500,  --TUBE_OF_HEALING_SALVE_II            = 5836,
        5837,   500,  --TUBE_OF_CLEAR_SALVE_I               = 5837,
        5838,   500,  --TUBE_OF_CLEAR_SALVE_II              = 5838,
        5839,   500,  --BOTTLE_OF_STALWARTS_TONIC           = 5839,
        5840,   500,  --BOTTLE_OF_STALWARTS_GAMBIR          = 5840,
        5841,   500,  --BOTTLE_OF_ASCETICS_TONIC            = 5841,
        5842,   500,  --BOTTLE_OF_ASCETICS_GAMBIR           = 5842,
        5843,   500,  --BOTTLE_OF_CHAMPIONS_TONIC           = 5843,
        5844,   500,  --BOTTLE_OF_CHAMPIONS_GAMBIR          = 5844,
        5845,   500,  --BOTTLE_OF_FANATICS_TONIC            = 5845,
        5846,   500,  --BOTTLE_OF_FOOLS_TONIC               = 5846,
        5847,   500,  --PINCH_OF_FANATICS_POWDER            = 5847,
        5848,   500,  --PINCH_OF_FOOLS_POWDER               = 5848,
        5849,   500,  --BOTTLE_OF_BERSERKERS_DRINK          = 5849,
        5850,   500,  --BOTTLE_OF_SWIFTSHOT_DRINK           = 5850,
        5851,   500,  --BOTTLE_OF_BERSERKERS_TONIC          = 5851,
        5852,   500,  --BOTTLE_OF_SWIFTSHOT_TONIC           = 5852,
        5853,   1000000,  --PRIMEVAL_BREW                       = 5853,
        5877,   500,  --TERROR_SCREEN                       = 5877,
        5878,   500,  --AMNESIA_SCREEN                      = 5878,
        5879,   500,  --DOOM_SCREEN                         = 5879,
        5880,   500,  --POISON_SCREEN                       = 5880,
} 
]]--


commandObj.onTrigger = function(player)
     menu.options = page1
     delaySendMenu(player)
end

return commandObj




