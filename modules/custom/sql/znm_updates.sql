-- updated levels 
UPDATE mob_groups SET HP =  37000, minLevel =  80, maxLevel =  85 WHERE name = 'Chamrosh';
UPDATE mob_groups SET HP =  37000, minLevel =  80, maxLevel =  85 WHERE name = 'Cheese_Hoarder_Gigiroon';
UPDATE mob_groups SET HP =  37000, minLevel =  80, maxLevel =  85 WHERE name = 'Vulpangue';
UPDATE mob_groups SET HP =  37000, minLevel =  80, maxLevel =  85 WHERE name = 'Brass_Borer';
UPDATE mob_groups SET HP =  37000, minLevel =  80, maxLevel =  85 WHERE name = 'Claret';
UPDATE mob_groups SET HP =  37000, minLevel =  80, maxLevel =  85 WHERE name = 'Ob';
UPDATE mob_groups SET HP =  37000, minLevel =  80, maxLevel =  85 WHERE name = 'Chigre';
UPDATE mob_groups SET HP =  37000, minLevel =  80, maxLevel =  85 WHERE name = 'Lil_Apkallu';
UPDATE mob_groups SET HP =  37000, minLevel =  80, maxLevel =  85 WHERE name = 'Velionis';
UPDATE mob_groups SET HP =  50000, minLevel =  85, maxLevel =  90 WHERE name = 'Iriri_Samariri';
UPDATE mob_groups SET HP =  50000, minLevel =  85, maxLevel =  90 WHERE name = 'Iriz_Ima';
UPDATE mob_groups SET HP =  50000, minLevel =  85, maxLevel =  90 WHERE name = 'Lividroot_Amooshah';
UPDATE mob_groups SET HP =  50000, minLevel =  85, maxLevel =  90 WHERE name = 'Anantaboga';
UPDATE mob_groups SET HP =  50000, minLevel =  85, maxLevel =  90 WHERE name = 'Dextrose';
UPDATE mob_groups SET HP =  50000, minLevel =  85, maxLevel =  90 WHERE name = 'Reacton';
UPDATE mob_groups SET HP =  50000, minLevel =  85, maxLevel =  90 WHERE name = 'Verdelet';
UPDATE mob_groups SET HP =  50000, minLevel =  85, maxLevel =  90 WHERE name = 'Wulgaru';
UPDATE mob_groups SET HP =  50000, minLevel =  85, maxLevel =  90 WHERE name = 'Zareehkl_the_Jubilant';
UPDATE mob_groups SET HP =  75000, minLevel =  90, maxLevel =  95 WHERE name = 'Armed_Gears';
UPDATE mob_groups SET HP =  75000, minLevel =  90, maxLevel =  95 WHERE name = 'Dea';
UPDATE mob_groups SET HP =  75000, minLevel =  90, maxLevel =  95 WHERE name = 'Gotoh_Zha_the_Redolent';
UPDATE mob_groups SET HP =  75000, minLevel =  90, maxLevel =  95 WHERE name = 'Achamoth';
UPDATE mob_groups SET HP =  75000, minLevel =  90, maxLevel =  95 WHERE name = 'Khromasoul_Bhurborlor';
UPDATE mob_groups SET HP =  75000, minLevel =  90, maxLevel =  95 WHERE name = 'Nosferatu';
UPDATE mob_groups SET HP =  75000, minLevel =  90, maxLevel =  95 WHERE name = 'Experimental_Lamia';
UPDATE mob_groups SET HP =  75000, minLevel =  90, maxLevel =  95 WHERE name = 'Mahjlaef_the_Paintorn';
UPDATE mob_groups SET HP =  75000, minLevel =  90, maxLevel =  95 WHERE name = 'Nuhn';
UPDATE mob_groups SET HP = 100000, minLevel = 100, maxLevel = 105 WHERE name = 'Tinnin';
UPDATE mob_groups SET HP = 100000, minLevel = 100, maxLevel = 105 WHERE name = 'Sarameya';
UPDATE mob_groups SET HP = 100000, minLevel = 100, maxLevel = 105 WHERE name = 'Tyger';
UPDATE mob_groups SET HP = 147000, minLevel = 119, maxLevel = 119 WHERE name = 'Pandemonium_Warden';


DELETE FROM mob_droplist WHERE dropId = 1536 AND itemId = 18852; -- delete octave club from LoO
INSERT INTO mob_droplist VALUES (1536, 0, 0, 1000, 17440, 50);   -- add kraken club to LoO 

INSERT INTO mob_droplist VALUES (2418, 0, 1, 100, 18552, 334);   -- add Octave club to Tinnin
INSERT INTO mob_droplist VALUES (2162, 0, 1, 100, 18552, 333);   -- add Octave club to Sarameya
INSERT INTO mob_droplist VALUES (2508, 0, 1, 100, 18552, 333);   -- add Octave club to Tyger
INSERT INTO mob_droplist VALUES (2418, 0, 1, 100, 19163, 333);  -- add Nightfall to Tinnin
INSERT INTO mob_droplist VALUES (2162, 0, 1, 100, 19163, 333);   -- add Nightfall to Sarameya
INSERT INTO mob_droplist VALUES (2508, 0, 1, 100, 19163, 334);   -- add Nightfall to Tyger






