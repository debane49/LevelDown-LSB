UPDATE item_basic SET stackSize = 99 WHERE itemid = 4049;
DELETE FROM mob_droplist WHERE dropId = 1536 AND itemId = 18852; -- delete octave club from LoO
INSERT INTO mob_droplist VALUES (1536, 0, 0, 1000, 17440, 1);   -- add kraken club to LoO
INSERT INTO mob_droplist VALUES (1763,0,0,1000,14724,5); -- Moldavite Earring (Rare, 5%)
-- ZNM
INSERT INTO mob_droplist VALUES (2418, 0, 1, 100, 18852, 334);   -- add Octave club to Tinnin
INSERT INTO mob_droplist VALUES (2162, 0, 1, 100, 18852, 333);   -- add Octave club to Sarameya
INSERT INTO mob_droplist VALUES (2508, 0, 1, 100, 18852, 333);   -- add Octave club to Tyger
INSERT INTO mob_droplist VALUES (2418, 0, 1, 100, 19163, 333);  -- add Nightfall to Tinnin
INSERT INTO mob_droplist VALUES (2162, 0, 1, 100, 19163, 333);   -- add Nightfall to Sarameya
INSERT INTO mob_droplist VALUES (2508, 0, 1, 100, 19163, 334);   -- add Nightfall to Tyger
-- Abyssea
UPDATE mob_droplist SET itemRate = 1000 WHERE dropId = 47 and itemRate = 100; -- alfard fang drop rate correction
UPDATE mob_droplist SET dropType = 1, groupId = 1, groupRate = 100, itemRate = 1000 WHERE dropId = 47 and itemRate = 50; -- alfard fang drop rate correction
UPDATE mob_droplist SET itemrate = 500 WHERE itemid IN (
    2961, 3094, 4400, 4756, 5568, 11434, 11444, 11445, 11572, 11573, 11623, 
    11647, 11648, 11649, 11650, 11652, 11653, 11694, 11695, 11696, 11701, 
    11702, 11703, 11709, 11718, 11721, 11722, 11752, 11754, 11800, 11886, 
    11898, 11899, 11900, 11901, 11902, 11903, 11905, 11906, 11907, 11908, 
    11909, 11910, 11937, 11947, 12318, 15910, 16190, 16308, 16309, 17047, 
    17110, 17856, 18456, 18514, 18620, 18801, 18803, 18833, 18834, 18893, 
    18900, 18968, 19052, 19053, 19054, 19055, 19056, 19057, 19058, 19059, 
    19131, 19190, 19193, 19257, 19258, 19259, 19261, 19289, 19313, 19315, 
    19732
) OR itemid BETWEEN 3110 AND 3293
  OR itemid BETWEEN 3315 AND 3315;
-- Sky
UPDATE mob_droplist SET itemRate = 350 WHERE dropId = 193 and itemRate = 20; -- Flask Of Romaeve Spring Water drop rate correction
-- Void Walker
-- Yildegan, Orcus, Blobdingnag, Krabkatoa, Dawon, Lord Ruthven, Verthandi
DELETE FROM mob_droplist WHERE dropid >= 3180 AND dropid <= 3186;
UPDATE mob_groups SET dropid = 4001 WHERE name = 'Ground_Guzzler';
UPDATE mob_groups SET dropid = 4001 WHERE name = 'Globster';
UPDATE mob_groups SET dropid = 4001 WHERE name = 'Quagmire_Pugil';
UPDATE mob_groups SET dropid = 4001 WHERE name = 'Sunderclaw';
UPDATE mob_groups SET dropid = 4001 WHERE name = 'Rummager_Beetle';
UPDATE mob_groups SET dropid = 4001 WHERE name = 'Raker_Bee';
UPDATE mob_groups SET dropid = 4001 WHERE name = 'Aither';
UPDATE mob_groups SET dropid = 4001 WHERE name = 'Deorc';
UPDATE mob_groups SET dropid = 4001 WHERE name = 'Eorthe';
UPDATE mob_groups SET dropid = 4001 WHERE name = 'Puretos';
UPDATE mob_groups SET dropid = 4001 WHERE name = 'Pruina';
UPDATE mob_groups SET dropid = 4001 WHERE name = 'Beorht';
UPDATE mob_groups SET dropid = 4001 WHERE name = 'Thunor';
UPDATE mob_groups SET dropid = 4001 WHERE name = 'Lacus';
UPDATE mob_groups SET dropid = 4001 WHERE name = 'Gjenganger';
UPDATE mob_groups SET dropid = 4001 WHERE name = 'Gorehound';
UPDATE mob_groups SET dropid = 4001 WHERE name = 'Void_Hare';
UPDATE mob_groups SET dropid = 4001 WHERE name = 'Prickly_Sheep';

-- Tier I
INSERT INTO mob_droplist VALUES (4001,1,4,1000,8707,100);   -- Raaz Hide
INSERT INTO mob_droplist VALUES (4001,1,4,1000,2359,100);   -- Star Sapphire
INSERT INTO mob_droplist VALUES (4001,1,4,1000,4058,100);   -- Bismuth Ore
INSERT INTO mob_droplist VALUES (4001,1,4,1000,9075,100);   -- Vulcanite Ore
INSERT INTO mob_droplist VALUES (4001,1,4,1000,8751,100);   -- Ancestral Cloth
INSERT INTO mob_droplist VALUES (4001,1,4,1000,4026,100);   -- Akaso
INSERT INTO mob_droplist VALUES (4001,1,4,1000,4018,100);   -- Guatambu Log
INSERT INTO mob_droplist VALUES (4001,1,4,1000,8747,100);   -- Ra'Kaznar Ore
INSERT INTO mob_droplist VALUES (4001,1,4,1000,3552,100);   -- RaSquamous Hide
INSERT INTO mob_droplist VALUES (4001,1,4,1000,3926,100);   -- Urunday Log

INSERT INTO mob_droplist VALUES (4001,1,1,1000,844,200);   -- Pheonix Feather
INSERT INTO mob_droplist VALUES (4001,1,1,1000,837,200);   -- Malboro Fiber
INSERT INTO mob_droplist VALUES (4001,1,1,1000,1110,200);  -- Beetle Blood
INSERT INTO mob_droplist VALUES (4001,1,1,1000,836,200);   -- Damascene Cloth
INSERT INTO mob_droplist VALUES (4001,1,1,1000,1311,200);  -- Oxblood 

INSERT INTO mob_droplist VALUES (4001,1,2,1000,4064,200);  -- Rem tale 1
INSERT INTO mob_droplist VALUES (4001,1,2,1000,4065,200);  -- Rem tale 2
INSERT INTO mob_droplist VALUES (4001,1,2,1000,4066,200);  -- Rem tale 3
INSERT INTO mob_droplist VALUES (4001,1,2,1000,4067,200);  -- Rem tale 4
INSERT INTO mob_droplist VALUES (4001,1,2,1000,4068,200);  -- Rem tale 5

INSERT INTO mob_droplist VALUES (4001,1,3,500,11631,55);    -- Blobnag Ring
INSERT INTO mob_droplist VALUES (4001,1,3,500,11634,55);    -- Veela Ring
INSERT INTO mob_droplist VALUES (4001,1,3,500,11628,55);    -- Strigoi Ring
INSERT INTO mob_droplist VALUES (4001,1,3,500,15859,55);    -- Succor Ring
INSERT INTO mob_droplist VALUES (4001,1,3,500,11630,55);    -- Corneus Ring
INSERT INTO mob_droplist VALUES (4001,1,3,500,11632,55);    -- Karka Ring
INSERT INTO mob_droplist VALUES (4001,1,3,500,11629,55);    -- Zilant Ring 
INSERT INTO mob_droplist VALUES (4001,1,3,500,11633,55);    -- Galdr Ring 
INSERT INTO mob_droplist VALUES (4001,1,3,500,19248,55);    -- Lucky Coin


-- Tier II
-- Capricornus
INSERT INTO mob_droplist VALUES (3168,1,0,500,11632,125);    -- Karka Ring Capricornus
INSERT INTO mob_droplist VALUES (3168,1,0,500,11629,125);    -- Zilant Ring 
INSERT INTO mob_droplist VALUES (3168,1,0,500,11633,125);    -- Galdr Ring 
INSERT INTO mob_droplist VALUES (3168,1,0,500,19248,125);    -- Lucky Coin
INSERT INTO mob_droplist VALUES (3168,0,0,1000,2884,1000); --  (Always, 100%)
INSERT INTO mob_droplist VALUES (3168,0,0,1000,2884,900);  -- Krabkatoa Shell (90.0%)
INSERT INTO mob_droplist VALUES (3168,0,0,1000,2884,30);   -- Krabkatoa Shell (3.0%)
INSERT INTO mob_droplist VALUES (3168,0,0,1000,844,350);   -- Pheonix Feather
INSERT INTO mob_droplist VALUES (3168,1,1,1000,4064,500);  -- Rem tale 1
INSERT INTO mob_droplist VALUES (3168,1,1,1000,4065,500);  -- Rem tale 2
-- Yacumama
INSERT INTO mob_droplist VALUES (3169,1,0,500,11632,125);    -- Karka Ring Yacumama
INSERT INTO mob_droplist VALUES (3169,1,0,500,11629,125);    -- Zilant Ring 
INSERT INTO mob_droplist VALUES (3169,1,0,500,11633,125);    -- Galdr Ring 
INSERT INTO mob_droplist VALUES (3169,1,0,500,19248,125);    -- Lucky Coin
INSERT INTO mob_droplist VALUES (3169,0,0,1000,2884,1000); -- Krabkatoa Shell (Always, 100%)
INSERT INTO mob_droplist VALUES (3169,0,0,1000,2884,900);  -- Krabkatoa Shell (90.0%)
INSERT INTO mob_droplist VALUES (3169,0,0,1000,2884,30);   -- Krabkatoa Shell (3.0%)
INSERT INTO mob_droplist VALUES (3169,0,0,1000,837,350);   -- Malboro Fiber
INSERT INTO mob_droplist VALUES (3169,1,1,1000,4065,500);  -- Rem tale 2
INSERT INTO mob_droplist VALUES (3169,1,1,1000,4066,500);  -- Rem tale 3
-- Lamprey Lord
INSERT INTO mob_droplist VALUES (3170,1,0,500,11631,125);    -- Blobnag Ring Lamprey
INSERT INTO mob_droplist VALUES (3170,1,0,500,11629,125);    -- Zilant Ring 
INSERT INTO mob_droplist VALUES (3170,1,0,500,11633,125);    -- Galdr Ring 
INSERT INTO mob_droplist VALUES (3170,1,0,500,19248,125);    -- Lucky Coin
INSERT INTO mob_droplist VALUES (3170,0,0,1000,2882,1000); -- Baby Blobdingnag (Always, 100%)
INSERT INTO mob_droplist VALUES (3170,0,0,1000,2882,900);  -- Baby Blobdingnag (90.0%)
INSERT INTO mob_droplist VALUES (3170,0,0,1000,2882,30);   -- Baby Blobdingnag (3.0%)
INSERT INTO mob_droplist VALUES (3170,0,0,1000,1110,350);  -- Beetle Blood
INSERT INTO mob_droplist VALUES (3170,1,1,1000,4066,500);  -- Rem tale 3
INSERT INTO mob_droplist VALUES (3170,1,1,1000,4067,500);  -- Rem tale 4
-- Shoggoth
INSERT INTO mob_droplist VALUES (3171,1,0,500,11631,125);    -- Blobnag Ring Shoggoth
INSERT INTO mob_droplist VALUES (3171,1,0,500,11629,125);    -- Zilant Ring 
INSERT INTO mob_droplist VALUES (3171,1,0,500,11633,125);    -- Galdr Ring 
INSERT INTO mob_droplist VALUES (3171,1,0,500,19248,125);    -- Lucky Coin
INSERT INTO mob_droplist VALUES (3171,0,0,1000,2882,1000); -- Baby Blobdingnag (Always, 100%)
INSERT INTO mob_droplist VALUES (3171,0,0,1000,2882,900);  -- Baby Blobdingnag (90.0%)
INSERT INTO mob_droplist VALUES (3171,0,0,1000,2882,30);   -- Baby Blobdingnag (3.0%)
INSERT INTO mob_droplist VALUES (3171,0,0,1000,836,350);   -- Damascene Cloth
INSERT INTO mob_droplist VALUES (3171,1,1,1000,4067,500);  -- Rem tale 4
INSERT INTO mob_droplist VALUES (3171,1,1,1000,4068,500);  -- Rem tale 5
-- Jyeshtha
INSERT INTO mob_droplist VALUES (3172,1,0,500,11630,125);    -- Corneus Ring Jyeshtha
INSERT INTO mob_droplist VALUES (3172,1,0,500,11629,125);    -- Zilant Ring 
INSERT INTO mob_droplist VALUES (3172,1,0,500,11633,125);    -- Galdr Ring 
INSERT INTO mob_droplist VALUES (3172,1,0,500,19248,125);    -- Lucky Coin
INSERT INTO mob_droplist VALUES (3172,0,0,1000,2885,1000); -- Orcus Mandible (Always, 100%)
INSERT INTO mob_droplist VALUES (3172,0,0,1000,2885,900);  -- Orcus Mandible (90.0%)
INSERT INTO mob_droplist VALUES (3172,0,0,1000,2885,30);   -- Orcus Mandible (3.0%)
INSERT INTO mob_droplist VALUES (3172,0,0,1000,1311,350);  -- Oxblood 
INSERT INTO mob_droplist VALUES (3172,1,1,1000,4068,500);  -- Rem tale 5
INSERT INTO mob_droplist VALUES (3172,1,1,1000,4064,500);  -- Rem tale 1
-- Farruca Fly
INSERT INTO mob_droplist VALUES (3173,1,0,500,11630,125);    -- Corneus Ring Farruca
INSERT INTO mob_droplist VALUES (3173,1,0,500,11629,125);    -- Zilant Ring 
INSERT INTO mob_droplist VALUES (3173,1,0,500,11633,125);    -- Galdr Ring 
INSERT INTO mob_droplist VALUES (3173,1,0,500,19248,125);    -- Lucky Coin
INSERT INTO mob_droplist VALUES (3173,0,0,1000,2885,1000); -- Orcus Mandible (Always, 100%)
INSERT INTO mob_droplist VALUES (3173,0,0,1000,2885,900);  -- Orcus Mandible (90.0%)
INSERT INTO mob_droplist VALUES (3173,0,0,1000,2885,30);   -- Orcus Mandible (3.0%)
INSERT INTO mob_droplist VALUES (3173,0,0,1000,844,350);   -- Pheonix Feather
INSERT INTO mob_droplist VALUES (3173,1,1,1000,4064,500);  -- Rem tale 1
INSERT INTO mob_droplist VALUES (3173,1,1,1000,4065,500);  -- Rem tale 2
-- Skurd
INSERT INTO mob_droplist VALUES (3174,1,0,500,11634,125);    -- add Veela Ring  Skurd
INSERT INTO mob_droplist VALUES (3174,1,0,500,11629,125);    -- Zilant Ring 
INSERT INTO mob_droplist VALUES (3174,1,0,500,11633,125);    -- Galdr Ring 
INSERT INTO mob_droplist VALUES (3174,1,0,500,19248,125);    -- Lucky Coin
INSERT INTO mob_droplist VALUES (3174,0,0,1000,2881,1000); -- Eye Of Verthandi (Always, 100%)
INSERT INTO mob_droplist VALUES (3174,0,0,1000,2881,900);  -- Eye Of Verthandi (90.0%)
INSERT INTO mob_droplist VALUES (3174,0,0,1000,2881,30);   -- Eye Of Verthandi (3.0%)
INSERT INTO mob_droplist VALUES (3174,0,0,1000,837,350);   -- Malboro Fiber
INSERT INTO mob_droplist VALUES (3174,1,1,1000,4065,500);  -- Rem tale 2
INSERT INTO mob_droplist VALUES (3174,1,1,1000,4066,500);  -- Rem tale 3
-- Urd
INSERT INTO mob_droplist VALUES (3175,1,0,500,11634,125);    -- add Veela Ring  Urd
INSERT INTO mob_droplist VALUES (3175,1,0,500,11629,125);    -- Zilant Ring 
INSERT INTO mob_droplist VALUES (3175,1,0,500,11633,125);    -- Galdr Ring 
INSERT INTO mob_droplist VALUES (3175,1,0,500,19248,125);    -- Lucky Coin
INSERT INTO mob_droplist VALUES (3175,0,0,1000,2881,1000); -- Eye Of Verthandi (Always, 100%)
INSERT INTO mob_droplist VALUES (3175,0,0,1000,2881,900);  -- Eye Of Verthandi (90.0%)
INSERT INTO mob_droplist VALUES (3175,0,0,1000,2881,30);   -- Eye Of Verthandi (3.0%)
INSERT INTO mob_droplist VALUES (3175,0,0,1000,1110,350);  -- Beetle Blood
INSERT INTO mob_droplist VALUES (3175,1,1,1000,4066,500);  -- Rem tale 3
INSERT INTO mob_droplist VALUES (3175,1,1,1000,4067,500);  -- Rem tale 4
-- Erebus
INSERT INTO mob_droplist VALUES (3177,1,0,500,11628,125);    -- Strigoi Ring Erebus
INSERT INTO mob_droplist VALUES (3177,1,0,500,11629,125);    -- Zilant Ring 
INSERT INTO mob_droplist VALUES (3177,1,0,500,11633,125);    -- Galdr Ring 
INSERT INTO mob_droplist VALUES (3177,1,0,500,19248,125);    -- Lucky Coin
INSERT INTO mob_droplist VALUES (3177,0,0,1000,2883,1000); -- Ruthvens Nail (Always, 100%)
INSERT INTO mob_droplist VALUES (3177,0,0,1000,2883,900);  -- Ruthvens Nail (90.0%)
INSERT INTO mob_droplist VALUES (3177,0,0,1000,2883,30);   -- Ruthvens Nail (3.0%)
INSERT INTO mob_droplist VALUES (3177,0,0,1000,836,350);   -- Damascene Cloth
INSERT INTO mob_droplist VALUES (3177,1,1,1000,4067,500);  -- Rem tale 4
INSERT INTO mob_droplist VALUES (3177,1,1,1000,4068,500);  -- Rem tale 5
-- Feuerunke
INSERT INTO mob_droplist VALUES (3176,1,0,500,11628,125);    -- Strigoi Ring Feuerunke
INSERT INTO mob_droplist VALUES (3176,1,0,500,11629,125);    -- Zilant Ring 
INSERT INTO mob_droplist VALUES (3176,1,0,500,11633,125);    -- Galdr Ring 
INSERT INTO mob_droplist VALUES (3176,1,0,500,19248,125);    -- Lucky Coin
INSERT INTO mob_droplist VALUES (3176,0,0,1000,2883,1000); -- Ruthvens Nail (Always, 100%)
INSERT INTO mob_droplist VALUES (3176,0,0,1000,2883,900);  -- Ruthvens Nail (90.0%)
INSERT INTO mob_droplist VALUES (3176,0,0,1000,2883,30);   -- Ruthvens Nail (3.0%)
INSERT INTO mob_droplist VALUES (3176,0,0,1000,1311,350);  -- Oxblood 
INSERT INTO mob_droplist VALUES (3176,1,1,1000,4068,500);  -- Rem tale 5
INSERT INTO mob_droplist VALUES (3176,1,1,1000,4064,500);  -- Rem tale 1
-- Chesma
INSERT INTO mob_droplist VALUES (3178,1,0,500,15859,125);    -- Succor Ring Chesma
INSERT INTO mob_droplist VALUES (3178,1,0,500,11629,125);    -- Zilant Ring 
INSERT INTO mob_droplist VALUES (3178,1,0,500,11633,125);    -- Galdr Ring 
INSERT INTO mob_droplist VALUES (3178,1,0,500,19248,125);    -- Lucky Coin
INSERT INTO mob_droplist VALUES (3178,0,0,1000,2570,1000); -- Pelt Of Dawon (Always, 100%)
INSERT INTO mob_droplist VALUES (3178,0,0,1000,2570,900);  -- Pelt Of Dawon (90.0%)
INSERT INTO mob_droplist VALUES (3178,0,0,1000,2570,30);   -- Pelt Of Dawon (3.0%)
INSERT INTO mob_droplist VALUES (3178,0,0,1000,837,350);   -- Malboro Fiber
INSERT INTO mob_droplist VALUES (3178,1,1,1000,4064,500);  -- Rem tale 1
INSERT INTO mob_droplist VALUES (3178,1,1,1000,4065,500);  -- Rem tale 2
-- Tammuz
INSERT INTO mob_droplist VALUES (3179,1,0,500,15859,125);    -- Succor Ring Tammuz
INSERT INTO mob_droplist VALUES (3179,1,0,500,11629,125);    -- Zilant Ring 
INSERT INTO mob_droplist VALUES (3179,1,0,500,11633,125);    -- Galdr Ring 
INSERT INTO mob_droplist VALUES (3179,1,0,500,19248,125);    -- Lucky Coin
INSERT INTO mob_droplist VALUES (3179,0,0,1000,2570,1000); -- Pelt Of Dawon (Always, 100%)
INSERT INTO mob_droplist VALUES (3179,0,0,1000,2570,900);  -- Pelt Of Dawon (90.0%)
INSERT INTO mob_droplist VALUES (3179,0,0,1000,2570,30);   -- Pelt Of Dawon (3.0%)
INSERT INTO mob_droplist VALUES (3179,0,0,1000,1110,350);  -- Beetle Blood
INSERT INTO mob_droplist VALUES (3179,1,1,1000,4065,500);  -- Rem tale 2
INSERT INTO mob_droplist VALUES (3179,1,1,1000,4066,500);  -- Rem tale 3
-- Tier III
-- Krabkatoa 3180
INSERT INTO mob_droplist VALUES (3180,0,0,1000,9281,250);  -- P. War card
INSERT INTO mob_droplist VALUES (3180,0,0,1000,9282,250);  -- P. Mnk card
INSERT INTO mob_droplist VALUES (3180,0,0,1000,9283,250);  -- P. Whm card
INSERT INTO mob_droplist VALUES (3180,0,0,1000,9299,250);  -- P. Dnc card

INSERT INTO mob_droplist VALUES (3180,1,1,750,9281,187);  -- P. War card
INSERT INTO mob_droplist VALUES (3180,1,1,750,9282,187);  -- P. Mnk card
INSERT INTO mob_droplist VALUES (3180,1,1,750,9283,187);  -- P. Whm card
INSERT INTO mob_droplist VALUES (3180,1,1,750,9299,187);  -- P. Dnc card

INSERT INTO mob_droplist VALUES (3180,1,2,500,9281,125);  -- P. War card
INSERT INTO mob_droplist VALUES (3180,1,2,500,9282,125);  -- P. Mnk card
INSERT INTO mob_droplist VALUES (3180,1,2,500,9283,125);  -- P. Whm card
INSERT INTO mob_droplist VALUES (3180,1,2,500,9299,125);  -- P. Dnc card

INSERT INTO mob_droplist VALUES (3180,1,3,250,9281,62);  -- P. War card
INSERT INTO mob_droplist VALUES (3180,1,3,250,9282,62);  -- P. Mnk card
INSERT INTO mob_droplist VALUES (3180,1,3,250,9283,62);  -- P. Whm card
INSERT INTO mob_droplist VALUES (3180,1,3,250,9299,62);  -- P. Dnc card

INSERT INTO mob_droplist VALUES (3180,1,4,50,9281,12);  -- P. War card
INSERT INTO mob_droplist VALUES (3180,1,4,50,9282,12);  -- P. Mnk card
INSERT INTO mob_droplist VALUES (3180,1,4,50,9283,12);  -- P. Whm card
INSERT INTO mob_droplist VALUES (3180,1,4,50,9299,12);  -- P. Dnc card


-- Blobdingnag 3181
INSERT INTO mob_droplist VALUES (3181,0,0,1000,9284,250);  -- P. Blm card
INSERT INTO mob_droplist VALUES (3181,0,0,1000,9285,250);  -- P. Rdm card
INSERT INTO mob_droplist VALUES (3181,0,0,1000,9286,250);  -- P. Thf card
INSERT INTO mob_droplist VALUES (3181,0,0,1000,9300,250);  -- P. Sch card

INSERT INTO mob_droplist VALUES (3181,1,1,750,9284,187);  -- P. Blm card
INSERT INTO mob_droplist VALUES (3181,1,1,750,9285,187);  -- P. Rdm card
INSERT INTO mob_droplist VALUES (3181,1,1,750,9286,187);  -- P. Thf card
INSERT INTO mob_droplist VALUES (3181,1,1,750,9300,187);  -- P. Sch card

INSERT INTO mob_droplist VALUES (3181,1,2,500,9284,125);  -- P. Blm card
INSERT INTO mob_droplist VALUES (3181,1,2,500,9285,125);  -- P. Rdm card
INSERT INTO mob_droplist VALUES (3181,1,2,500,9286,125);  -- P. Thf card
INSERT INTO mob_droplist VALUES (3181,1,2,500,9300,125);  -- P. Sch card

INSERT INTO mob_droplist VALUES (3181,1,3,250,9284,62);  -- P. Blm card
INSERT INTO mob_droplist VALUES (3181,1,3,250,9285,62);  -- P. Rdm card
INSERT INTO mob_droplist VALUES (3181,1,3,250,9286,62);  -- P. Thf card
INSERT INTO mob_droplist VALUES (3181,1,3,250,9300,62);  -- P. Sch card

INSERT INTO mob_droplist VALUES (3181,1,4,50,9284,12);  -- P. Blm card
INSERT INTO mob_droplist VALUES (3181,1,4,50,9285,12);  -- P. Rdm card
INSERT INTO mob_droplist VALUES (3181,1,4,50,9286,12);  -- P. Thf card
INSERT INTO mob_droplist VALUES (3181,1,4,50,9300,12);  -- P. Sch card


-- Orcus 3182
INSERT INTO mob_droplist VALUES (3182,0,0,1000,9287,250);  -- P. Pld card
INSERT INTO mob_droplist VALUES (3182,0,0,1000,9288,250);  -- P. Drk card
INSERT INTO mob_droplist VALUES (3182,0,0,1000,9289,250);  -- P. Bst card
INSERT INTO mob_droplist VALUES (3182,0,0,1000,9301,250);  -- P. Geo card

INSERT INTO mob_droplist VALUES (3182,1,1,750,9287,187);  -- P. Pld card
INSERT INTO mob_droplist VALUES (3182,1,1,750,9288,187);  -- P. Drk card
INSERT INTO mob_droplist VALUES (3182,1,1,750,9289,187);  -- P. Bst card
INSERT INTO mob_droplist VALUES (3182,1,1,750,9301,187);  -- P. Geo card

INSERT INTO mob_droplist VALUES (3182,1,2,500,9287,125);  -- P. Pld card
INSERT INTO mob_droplist VALUES (3182,1,2,500,9288,125);  -- P. Drk card
INSERT INTO mob_droplist VALUES (3182,1,2,500,9289,125);  -- P. Bst card
INSERT INTO mob_droplist VALUES (3182,1,2,500,9301,125);  -- P. Geo card

INSERT INTO mob_droplist VALUES (3182,1,3,250,9287,62);  -- P. Pld card
INSERT INTO mob_droplist VALUES (3182,1,3,250,9288,62);  -- P. Drk card
INSERT INTO mob_droplist VALUES (3182,1,3,250,9289,62);  -- P. Bst card
INSERT INTO mob_droplist VALUES (3182,1,3,250,9301,62);  -- P. Geo card

INSERT INTO mob_droplist VALUES (3182,1,4,50,9287,12);  -- P. Pld card
INSERT INTO mob_droplist VALUES (3182,1,4,50,9288,12);  -- P. Drk card
INSERT INTO mob_droplist VALUES (3182,1,4,50,9289,12);  -- P. Bst card
INSERT INTO mob_droplist VALUES (3182,1,4,50,9301,12);  -- P. Geo card


-- Verthandi 3183
INSERT INTO mob_droplist VALUES (3183,0,0,1000,9290,250);  -- P. Brd card
INSERT INTO mob_droplist VALUES (3183,0,0,1000,9291,250);  -- P. Rng card
INSERT INTO mob_droplist VALUES (3183,0,0,1000,9292,250);  -- P. Sam card
INSERT INTO mob_droplist VALUES (3183,0,0,1000,9302,250);  -- P. Run card

INSERT INTO mob_droplist VALUES (3183,1,1,750,9290,187);  -- P. Brd card
INSERT INTO mob_droplist VALUES (3183,1,1,750,9291,187);  -- P. Rng card
INSERT INTO mob_droplist VALUES (3183,1,1,750,9292,187);  -- P. Sam card
INSERT INTO mob_droplist VALUES (3183,1,1,750,9302,187);  -- P. Run card

INSERT INTO mob_droplist VALUES (3183,1,2,500,9290,125);  -- P. Brd card
INSERT INTO mob_droplist VALUES (3183,1,2,500,9291,125);  -- P. Rng card
INSERT INTO mob_droplist VALUES (3183,1,2,500,9292,125);  -- P. Sam card
INSERT INTO mob_droplist VALUES (3183,1,2,500,9302,125);  -- P. Run card

INSERT INTO mob_droplist VALUES (3183,1,3,250,9290,62);  -- P. Brd card
INSERT INTO mob_droplist VALUES (3183,1,3,250,9291,62);  -- P. Rng card
INSERT INTO mob_droplist VALUES (3183,1,3,250,9292,62);  -- P. Sam card
INSERT INTO mob_droplist VALUES (3183,1,3,250,9302,62);  -- P. Run card

INSERT INTO mob_droplist VALUES (3183,1,4,50,9290,12);  -- P. Brd card
INSERT INTO mob_droplist VALUES (3183,1,4,50,9291,12);  -- P. Rng card
INSERT INTO mob_droplist VALUES (3183,1,4,50,9292,12);  -- P. Sam card
INSERT INTO mob_droplist VALUES (3183,1,4,50,9302,12);  -- P. Run card


-- Dawon 3184
INSERT INTO mob_droplist VALUES (3184,0,0,1000,9293,250);  -- P. Nin card
INSERT INTO mob_droplist VALUES (3184,0,0,1000,9294,250);  -- P. Drg card
INSERT INTO mob_droplist VALUES (3184,0,0,1000,9295,250);  -- P. Smn card

INSERT INTO mob_droplist VALUES (3184,1,1,750,9293,250);  -- P. Nin card
INSERT INTO mob_droplist VALUES (3184,1,1,750,9294,250);  -- P. Drg card
INSERT INTO mob_droplist VALUES (3184,1,1,750,9295,250);  -- P. Smn card

INSERT INTO mob_droplist VALUES (3184,1,2,500,9293,166);  -- P. Nin card
INSERT INTO mob_droplist VALUES (3184,1,2,500,9294,166);  -- P. Drg card
INSERT INTO mob_droplist VALUES (3184,1,2,500,9295,166);  -- P. Smn card

INSERT INTO mob_droplist VALUES (3184,1,3,250,9293,83);  -- P. Nin card
INSERT INTO mob_droplist VALUES (3184,1,3,250,9294,83);  -- P. Drg card
INSERT INTO mob_droplist VALUES (3184,1,3,250,9295,83);  -- P. Smn card

INSERT INTO mob_droplist VALUES (3184,1,4,50,9293,16);  -- P. Nin card
INSERT INTO mob_droplist VALUES (3184,1,4,50,9294,16);  -- P. Drg card
INSERT INTO mob_droplist VALUES (3184,1,4,50,9295,16);  -- P. Smn card

-- Lord Ruthven 3186
INSERT INTO mob_droplist VALUES (3186,0,0,1000,9296,250);  -- P. Blu card
INSERT INTO mob_droplist VALUES (3186,0,0,1000,9297,250);  -- P. Cor card
INSERT INTO mob_droplist VALUES (3186,0,0,1000,9298,250);  -- P. Pup card

INSERT INTO mob_droplist VALUES (3186,1,1,750,9296,250);  -- P. Blu card
INSERT INTO mob_droplist VALUES (3186,1,1,750,9297,250);  -- P. Cor card
INSERT INTO mob_droplist VALUES (3186,1,1,750,9298,250);  -- P. Pup card

INSERT INTO mob_droplist VALUES (3186,1,2,500,9296,166);  -- P. Blu card
INSERT INTO mob_droplist VALUES (3186,1,2,500,9297,166);  -- P. Cor card
INSERT INTO mob_droplist VALUES (3186,1,2,500,9298,166);  -- P. Pup card

INSERT INTO mob_droplist VALUES (3186,1,3,250,9296,83);  -- P. Blu card
INSERT INTO mob_droplist VALUES (3186,1,3,250,9297,83);  -- P. Cor card
INSERT INTO mob_droplist VALUES (3186,1,3,250,9298,83);  -- P. Pup card

INSERT INTO mob_droplist VALUES (3186,1,4,50,9296,16);  -- P. Blu card
INSERT INTO mob_droplist VALUES (3186,1,4,50,9297,16);  -- P. Cor card
INSERT INTO mob_droplist VALUES (3186,1,4,50,9298,16);  -- P. Pup card

-- Tier IV
-- Yildegan 3185
INSERT INTO mob_droplist VALUES (3185,1,1,400,26723,133);  -- SU1 Wildheitschaller Head
INSERT INTO mob_droplist VALUES (3185,1,1,400,26727,133);  -- SU1 Revealer's Crown Head +1
INSERT INTO mob_droplist VALUES (3185,1,1,400,26725,133);  -- SU1 Sombra Tiara Head +1

INSERT INTO mob_droplist VALUES (3185,1,2,300,26882,100);  -- SU1 Wildheitbrust Body
INSERT INTO mob_droplist VALUES (3185,1,2,300,26886,100);  -- SU1 Revealer's Tunic Body +1
INSERT INTO mob_droplist VALUES (3185,1,2,300,26884,100);  -- SU1 Sombra Harness Body +1

INSERT INTO mob_droplist VALUES (3185,1,3,400,27988,133);  -- SU1 Wildheithentzes Hands
INSERT INTO mob_droplist VALUES (3185,1,3,400,27992,133);  -- SU1 Revealer's Mitts Hands +1
INSERT INTO mob_droplist VALUES (3185,1,3,400,27990,133);  -- SU1 Sombra Mittens Hands +1

INSERT INTO mob_droplist VALUES (3185,1,4,400,27225,133);  -- SU1 Wildheitdiechlings Legs
INSERT INTO mob_droplist VALUES (3185,1,4,400,27229,133);  -- SU1 Revealer's Pants Legs +1
INSERT INTO mob_droplist VALUES (3185,1,4,400,27227,133);  -- SU1 Sombra Tights Legs +1

INSERT INTO mob_droplist VALUES (3185,1,5,400,27397,133);  -- SU1 Wildheitschuhs Feet
INSERT INTO mob_droplist VALUES (3185,1,5,400,27401,133);  -- SU1 Revealer's Pumps Feet +1
INSERT INTO mob_droplist VALUES (3185,1,5,400,27399,133);  -- SU1 Sombra Leggings Feet +1

INSERT INTO mob_droplist VALUES (3185,1,6,150,22022,3);  -- SU2 Weapons Ames +1
INSERT INTO mob_droplist VALUES (3185,1,6,150,21457,3);  -- SU2 Weapons Animator P +1
INSERT INTO mob_droplist VALUES (3185,1,6,150,21459,3);  -- SU2 Weapons Animator P II +1
INSERT INTO mob_droplist VALUES (3185,1,6,150,21707,3);  -- SU2 Weapons Barbarity +1
INSERT INTO mob_droplist VALUES (3185,1,6,150,21557,3);  -- SU2 Weapons Beryllium Kris +1
INSERT INTO mob_droplist VALUES (3185,1,6,150,22024,3);  -- SU2 Weapons Beryllium Mace +1
INSERT INTO mob_droplist VALUES (3185,1,6,150,21709,3);  -- SU2 Weapons Beryllium Pick +1
INSERT INTO mob_droplist VALUES (3185,1,6,150,21660,3);  -- SU2 Weapons Beryllium Sword +1
INSERT INTO mob_droplist VALUES (3185,1,6,150,21964,3);  -- SU2 Weapons Beryllium Tachi +1
INSERT INTO mob_droplist VALUES (3185,1,6,150,20803,3);  -- SU2 Weapons Blurred Axe +1
INSERT INTO mob_droplist VALUES (3185,1,6,150,21218,3);  -- SU2 Weapons Blurred Bow +1
INSERT INTO mob_droplist VALUES (3185,1,6,150,20526,3);  -- SU2 Weapons Blurred Claws +1
INSERT INTO mob_droplist VALUES (3185,1,6,150,20850,3);  -- SU2 Weapons Blurred Cleaver +1
INSERT INTO mob_droplist VALUES (3185,1,6,150,21481,3);  -- SU2 Weapons Blurred Crossbow +1
INSERT INTO mob_droplist VALUES (3185,1,6,150,21401,3);  -- SU2 Weapons Blurred Harp +1
INSERT INTO mob_droplist VALUES (3185,1,6,150,20602,3);  -- SU2 Weapons Blurred Knife +1
INSERT INTO mob_droplist VALUES (3185,1,6,150,20941,3);  -- SU2 Weapons Blurred Lance +1
INSERT INTO mob_droplist VALUES (3185,1,6,150,21094,3);  -- SU2 Weapons Blurred Rod +1
INSERT INTO mob_droplist VALUES (3185,1,6,150,20897,3);  -- SU2 Weapons Blurred Scythe +1
INSERT INTO mob_droplist VALUES (3185,1,6,150,27644,3);  -- SU2 Weapons Blurred Shield +1
INSERT INTO mob_droplist VALUES (3185,1,6,150,21158,3);  -- SU2 Weapons Blurred Staff +1
INSERT INTO mob_droplist VALUES (3185,1,6,150,20712,3);  -- SU2 Weapons Blurred Sword +1
INSERT INTO mob_droplist VALUES (3185,1,6,150,21657,3);  -- SU2 Weapons Dyrnwyn +1
INSERT INTO mob_droplist VALUES (3185,1,6,150,21607,3);  -- SU2 Weapons Enriching Sword +1
INSERT INTO mob_droplist VALUES (3185,1,6,150,22126,3);  -- SU2 Weapons Exalted Bow +1
INSERT INTO mob_droplist VALUES (3185,1,6,150,22138,3);  -- SU2 Weapons Exalted Crossbow +1
INSERT INTO mob_droplist VALUES (3185,1,6,150,21870,3);  -- SU2 Weapons Exalted Spear +1
INSERT INTO mob_droplist VALUES (3185,1,6,150,22079,3);  -- SU2 Weapons Exalted Staff +1
INSERT INTO mob_droplist VALUES (3185,1,6,150,21766,3);  -- SU2 Weapons Hepatizon Axe +1
INSERT INTO mob_droplist VALUES (3185,1,6,150,21512,3);  -- SU2 Weapons Hepatizon Baghnakhs +1
INSERT INTO mob_droplist VALUES (3185,1,6,150,21611,3);  -- SU2 Weapons Hepatizon Rapier +1
INSERT INTO mob_droplist VALUES (3185,1,6,150,21615,3);  -- SU2 Weapons Hepatizon Sapara +1
INSERT INTO mob_droplist VALUES (3185,1,6,150,21507,3);  -- SU2 Weapons Jolt Counter +1
INSERT INTO mob_droplist VALUES (3185,1,6,150,20985,3);  -- SU2 Weapons Kujaku +1
INSERT INTO mob_droplist VALUES (3185,1,6,150,21033,3);  -- SU2 Weapons Kunitsuna +1
INSERT INTO mob_droplist VALUES (3185,1,6,150,20755,3);  -- SU2 Weapons Malfeasance +1
INSERT INTO mob_droplist VALUES (3185,1,6,150,21816,3);  -- SU2 Weapons Maliya Sickle +1
INSERT INTO mob_droplist VALUES (3185,1,6,150,21395,3);  -- SU2 Weapons Sancus Sachet +1
INSERT INTO mob_droplist VALUES (3185,1,6,150,22077,3);  -- SU2 Weapons Was +1

INSERT INTO mob_droplist VALUES (3185,1,7,50,26878,16);  -- SU2 Armor Foppish Tunica +1
INSERT INTO mob_droplist VALUES (3185,1,7,50,26876,16);  -- SU2 Armor Ravenous Breastplate +1
INSERT INTO mob_droplist VALUES (3185,1,7,50,26880,16);  -- SU2 Armor Wretched Coat +1

INSERT INTO mob_droplist VALUES (3185,1,8,20,4074,1);  -- SU3 Mats Thought Crystal
INSERT INTO mob_droplist VALUES (3185,1,8,20,4075,1);  -- SU3 Mats Hope Crystal
INSERT INTO mob_droplist VALUES (3185,1,8,20,4076,1);  -- SU3 Mats Fulfillment Crystal
INSERT INTO mob_droplist VALUES (3185,1,8,20,9064,1);  -- SU3 Mats Tartarian Chain
INSERT INTO mob_droplist VALUES (3185,1,8,20,9003,1);  -- SU3 Mats Plovid Flesh
INSERT INTO mob_droplist VALUES (3185,1,8,20,9006,1);  -- SU3 Mats Defiant Scarf
INSERT INTO mob_droplist VALUES (3185,1,8,20,9005,1);  -- SU3 Mats Macuil horn
INSERT INTO mob_droplist VALUES (3185,1,8,20,9007,1);  -- SU3 Mats Defiant Sweat
INSERT INTO mob_droplist VALUES (3185,1,8,20,9002,1);  -- SU3 Mats Plovid Effluvium
INSERT INTO mob_droplist VALUES (3185,1,8,20,9061,1);  -- SU3 Mats Hades' Claw
INSERT INTO mob_droplist VALUES (3185,1,8,20,8754,1);  -- SU3 Mats Cehuetzi Pelt
INSERT INTO mob_droplist VALUES (3185,1,8,20,9004,1);  -- SU3 Mats Macuil Plating
INSERT INTO mob_droplist VALUES (3185,1,8,20,8752,1);  -- SU3 Mats Cehuetzi Claw
INSERT INTO mob_droplist VALUES (3185,1,8,20,3981,1);  -- SU3 Mats Bztavian Wing
