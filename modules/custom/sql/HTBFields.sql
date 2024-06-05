-- assign BCNM info into battle fields
INSERT INTO `bcnm_info` VALUES (166,165,'shadow_lord_battle_ii'       ,'nobody',0,1800,1800,99,6,0,5,0);
INSERT INTO `bcnm_info` VALUES (263,179,'return_to_delkfutts_tower_ii','nobody',0,1800,1800,99,6,0,5,0);
INSERT INTO `bcnm_info` VALUES (228,170,'moonlit_path_ii'             ,'nobody',0,1800,1800,99,6,0,5,0);
INSERT INTO `bcnm_info` VALUES (229,170,'waking_the_beast_fullmoon_ii','nobody',0,1800,1800,99,6,0,5,0);
INSERT INTO `bcnm_info` VALUES (294,180,'ark_angels_hm_ii'            ,'nobody',0,1800,1800,99,6,0,5,0);
INSERT INTO `bcnm_info` VALUES (295,180,'ark_angels_tt_ii'            ,'nobody',0,1800,1800,99,6,0,5,0);
INSERT INTO `bcnm_info` VALUES (296,180,'ark_angels_mr_ii'            ,'nobody',0,1800,1800,99,6,0,5,0);
INSERT INTO `bcnm_info` VALUES (297,180,'ark_angels_ev_ii'            ,'nobody',0,1800,1800,99,6,0,5,0);
INSERT INTO `bcnm_info` VALUES (298,180,'ark_angels_gk_ii'            ,'nobody',0,1800,1800,99,6,0,5,0);
INSERT INTO `bcnm_info` VALUES (299,180,'divine_might_ii'             ,'nobody',0,1800,1800,99,6,0,5,0);
INSERT INTO `bcnm_info` VALUES (321,181,'celestial_nexus_ii'          ,'nobody',0,1800,1800,99,6,0,5,0);
INSERT INTO `bcnm_info` VALUES (421,201,'trial_by_wind_ii'            ,'nobody',0,1800,1800,99,6,0,5,0);
INSERT INTO `bcnm_info` VALUES (453,202,'trial_by_lightning_ii'       ,'nobody',0,1800,1800,99,6,0,5,0);
INSERT INTO `bcnm_info` VALUES (485,203,'trial_by_ice_ii'             ,'nobody',0,1800,1800,99,6,0,5,0);
INSERT INTO `bcnm_info` VALUES (548,207,'trial_by_fire_ii'            ,'nobody',0,1800,1800,99,6,0,5,0);
INSERT INTO `bcnm_info` VALUES (581,209,'trial_by_earth_ii'           ,'nobody',0,1800,1800,99,6,0,5,0);
INSERT INTO `bcnm_info` VALUES (612,211,'trial_by_water_ii'           ,'nobody',0,1800,1800,99,6,0,5,0);
INSERT INTO `bcnm_info` VALUES (680,  8,'head_wind_ii'                ,'nobody',0,1800,1800,99,6,0,5,0);
INSERT INTO `bcnm_info` VALUES (707, 10,'waking_dreams_ii'            ,'nobody',0,1800,1800,99,6,0,5,0);
INSERT INTO `bcnm_info` VALUES (968, 31,'savage_ii'                   ,'nobody',0,1800,1800,99,6,0,5,0); 
INSERT INTO `bcnm_info` VALUES (994, 32,'warriors_path_ii'            ,'nobody',0,1800,1800,99,6,0,5,0);
INSERT INTO `bcnm_info` VALUES (995, 32,'one_to_be_feared_ii'         ,'nobody',0,1800,1800,99,6,0,5,0);
INSERT INTO `bcnm_info` VALUES (1059,36,'dawn_ii'                     ,'nobody',0,1800,1800,99,6,0,5,0);
INSERT INTO `bcnm_info` VALUES (1093,57,'legacy_of_the_lost_ii'       ,'nobody',0,1800,1800,99,6,0,5,0);
INSERT INTO `bcnm_info` VALUES (1157,67,'puppet_in_peril_ii'          ,'nobody',0,1800,1800,99,6,0,5,0);
UPDATE bcnm_info SET levelcap = 99 WHERE name = 'call_to_arms';
UPDATE bcnm_info SET levelcap = 99 WHERE name = 'compliments_to_the_chef';
UPDATE bcnm_info SET levelcap = 99 WHERE name = 'tough_nut_to_crack';
UPDATE bcnm_info SET levelcap = 99 WHERE name = 'happy_caster';
UPDATE bcnm_info SET levelcap = 99 WHERE name = 'making_a_mockery';
UPDATE bcnm_info SET levelcap = 99 WHERE name = 'shadows_of_the_mind';
-- assign Mobs into battle fields
-- Garuda Prim HTBF updated
INSERT INTO `bcnm_battlefield` VALUES ( 421, 1,17600540,3); 
INSERT INTO `bcnm_battlefield` VALUES ( 421, 2,17600541,3);
INSERT INTO `bcnm_battlefield` VALUES ( 421, 3,17600542,3);
INSERT INTO mob_spell_lists VALUES ('Garuda_Prime_HTBF', 506, 188, 65, 255); -- Aeroga V
INSERT INTO mob_spell_lists VALUES ('Garuda_Prime_HTBF', 506, 209, 65, 255); -- Tornado 2
INSERT INTO mob_spell_lists VALUES ('Garuda_Prime_HTBF', 506,  79, 65, 255); -- Slow II
INSERT INTO mob_spell_lists VALUES ('Garuda_Prime_HTBF', 506,  80, 65, 255); -- Paralyze II
INSERT INTO mob_spell_lists VALUES ('Garuda_Prime_HTBF', 506, 102, 65, 255); -- Enaero
INSERT INTO mob_spell_lists VALUES ('Garuda_Prime_HTBF', 506, 157, 65, 255); -- Aero IV
INSERT INTO mob_spell_lists VALUES ('Garuda_Prime_HTBF', 506, 158, 65, 255); -- Aero V
INSERT INTO mob_pools VALUES (40000, 'Garuda_Prime_HTBF', 'Garuda_Prime', 324, 0x00001c0300000000000000000000000000000000, 1, 4, 6, 240, 100, 0, 1, 1, 1, 18, 1, 0, 0, 3, 0, 0, 506, 0, 0, 37, 37);  
UPDATE mob_spawn_points SET pos_X =  503.4111, pos_y =   41.6648, pos_z = -366.8300,  pos_rot = 106 WHERE mobid = 17600540;
UPDATE mob_spawn_points SET pos_X =   24.1289, pos_y =  -18.3276, pos_z =   32.7717,  pos_rot = 101 WHERE mobid = 17600541;
UPDATE mob_spawn_points SET pos_X = -375.3079, pos_y =  -78.4023, pos_z =  512.9899,  pos_rot =  97 WHERE mobid = 17600542;
UPDATE mob_groups SET poolid = 40000, dropid = 3921, HP = 115000, MP = 5000, minLevel = 100, maxLevel = 110 WHERE name = 'Garuda_Prime_HTBF' AND groupid = 7;
INSERT INTO mob_droplist VALUES(3921,0,0,1000,4069,1000); -- Rem's Tale Ch. 6
INSERT INTO mob_droplist VALUES(3921,1,1,500,4069,250); -- Rem's Tale Ch. 6
INSERT INTO mob_droplist VALUES(3921,1,2,1000,20615,333); -- Levante Dagger
INSERT INTO mob_droplist VALUES(3921,1,2,1000,20808,333); -- Tramontane Axe
INSERT INTO mob_droplist VALUES(3921,1,2,1000,28538,334); -- Lebeche Ring
INSERT INTO mob_droplist VALUES(3921,1,3,1000,28441,500); -- Ponente Sash
INSERT INTO mob_droplist VALUES(3921,1,3,1000,28286,500); -- Ostro Greaves
INSERT INTO mob_droplist VALUES(3921,1,4,1000,8720,200); -- Maliyakaleya Coral
INSERT INTO mob_droplist VALUES(3921,1,4,1000,8721,200); -- Hepatizon Ore
INSERT INTO mob_droplist VALUES(3921,1,4,1000,8723,200); -- Beryllium Ore
INSERT INTO mob_droplist VALUES(3921,1,4,1000,8725,200); -- Exalted Log
INSERT INTO mob_droplist VALUES(3921,1,4,1000,8727,200); -- Sif's Lock
-- Ramuh Prim HTBF updated
INSERT INTO `bcnm_battlefield` VALUES ( 453, 1,17604639,3); 
INSERT INTO `bcnm_battlefield` VALUES ( 453, 2,17604640,3);
INSERT INTO `bcnm_battlefield` VALUES ( 453, 3,17604641,3);
INSERT INTO mob_spell_lists VALUES ('Ramuh_Prime_HTBF', 507, 198, 65, 255); -- Thundega V
INSERT INTO mob_spell_lists VALUES ('Ramuh_Prime_HTBF', 507, 213, 65, 255); -- Burst 2
INSERT INTO mob_spell_lists VALUES ('Ramuh_Prime_HTBF', 507,  79, 65, 255); -- Slow II
INSERT INTO mob_spell_lists VALUES ('Ramuh_Prime_HTBF', 507,  80, 65, 255); -- Paralyze II
INSERT INTO mob_spell_lists VALUES ('Ramuh_Prime_HTBF', 507, 104, 65, 255); -- Enthunder
INSERT INTO mob_spell_lists VALUES ('Ramuh_Prime_HTBF', 507, 167, 65, 255); -- Thunder IV
INSERT INTO mob_spell_lists VALUES ('Ramuh_Prime_HTBF', 507, 168, 65, 255); -- Thunder V
INSERT INTO mob_pools VALUES (40001, 'Ramuh_Prime_HTBF', 'Ramuh_Prime', 320, 0x00001e0300000000000000000000000000000000, 1, 4, 12, 240, 100, 0, 1, 1, 1, 18, 0, 0, 0, 3, 0, 0, 507, 0, 0, 43, 43);  
UPDATE mob_spawn_points SET pos_X =  504.0446, pos_y =   41.7271, pos_z = -367.8477,  pos_rot =  97 WHERE mobid = 17604639;
UPDATE mob_spawn_points SET pos_X =   23.0873, pos_y =  -18.2112, pos_z =   31.6858,  pos_rot =  97 WHERE mobid = 17604640;
UPDATE mob_spawn_points SET pos_X = -375.9910, pos_y =  -78.3179, pos_z =  512.7903,  pos_rot =  89 WHERE mobid = 17604641;
UPDATE mob_groups SET poolid = 40001, dropid = 3923, HP = 115000, MP = 5000, minLevel = 100, maxLevel = 110 WHERE name = 'Ramuh_Prime_HTBF' AND groupid = 8;
INSERT INTO mob_droplist VALUES(3923,0,0,1000,4070,1000); -- Rem's Tale Ch. 7
INSERT INTO mob_droplist VALUES(3923,1,1,500,4070,250); -- Rem's Tale Ch. 7
INSERT INTO mob_droplist VALUES(3923,1,2,1000,21166,333); -- Staccato Staff
INSERT INTO mob_droplist VALUES(3923,1,2,1000,21274,333); -- Donar Gun
INSERT INTO mob_droplist VALUES(3923,1,2,1000,28354,334); -- Voltsurge Torque
INSERT INTO mob_droplist VALUES(3923,1,3,1000,28432,500); -- Ukko Sash
INSERT INTO mob_droplist VALUES(3923,1,3,1000,28142,500); -- Brontes Cuisses
INSERT INTO mob_droplist VALUES(3923,1,4,1000,8720,200); -- Maliyakaleya Coral
INSERT INTO mob_droplist VALUES(3923,1,4,1000,8721,200); -- Hepatizon Ore
INSERT INTO mob_droplist VALUES(3923,1,4,1000,8723,200); -- Beryllium Ore
INSERT INTO mob_droplist VALUES(3923,1,4,1000,8725,200); -- Exalted Log
INSERT INTO mob_droplist VALUES(3923,1,4,1000,8727,200); -- Sif's Lock
-- Shiva Prim HTBF updated
INSERT INTO `bcnm_battlefield` VALUES ( 485, 1,17608747,3);
INSERT INTO `bcnm_battlefield` VALUES ( 485, 2,17608748,3);
INSERT INTO `bcnm_battlefield` VALUES ( 485, 3,17608749,3);
INSERT INTO mob_spell_lists VALUES ('Shiva_Prime_HTBF', 508, 183, 65, 255); -- Blizzaga V
INSERT INTO mob_spell_lists VALUES ('Shiva_Prime_HTBF', 508, 207, 65, 255); -- Freeze 2
INSERT INTO mob_spell_lists VALUES ('Shiva_Prime_HTBF', 508,  79, 65, 255); -- Slow II
INSERT INTO mob_spell_lists VALUES ('Shiva_Prime_HTBF', 508,  80, 65, 255); -- Paralyze II
INSERT INTO mob_spell_lists VALUES ('Shiva_Prime_HTBF', 508, 101, 65, 255); -- Enblizzard
INSERT INTO mob_spell_lists VALUES ('Shiva_Prime_HTBF', 508, 152, 65, 255); -- Blizzard IV
INSERT INTO mob_spell_lists VALUES ('Shiva_Prime_HTBF', 508, 153, 65, 255); -- Blizzard V
INSERT INTO mob_pools VALUES (40002, 'Shiva_Prime_HTBF', 'Shiva_Prime', 319, 0x00001d0300000000000000000000000000000000, 1, 4, 6, 240, 100, 0, 1, 1, 1, 18, 1, 0, 0, 3, 0, 0, 508, 0, 0, 44, 44);  
UPDATE mob_spawn_points SET pos_X =  504.8676,  pos_y =  41.5439,  pos_z = -366.713,  pos_rot = 102 WHERE mobid = 17608747;
UPDATE mob_spawn_points SET pos_X =   23.9380,  pos_y = -18.2799,  pos_z =  32.3346,  pos_rot = 102 WHERE mobid = 17608748;
UPDATE mob_spawn_points SET pos_X = -374.1309,  pos_y = -78.5339,  pos_z = 512.5617,  pos_rot =  96 WHERE mobid = 17608749;
UPDATE mob_groups SET poolid = 40002, dropid = 3922, HP = 115000, MP = 5000, minLevel = 100, maxLevel = 110 WHERE name = 'Shiva_Prime_HTBF' AND groupid = 7;
INSERT INTO mob_droplist VALUES(3922,0,0,1000,4073,1000); -- Rem's Tale Ch. 10
INSERT INTO mob_droplist VALUES(3922,1,1,500,4073,250); -- Rem's Tale Ch. 10
INSERT INTO mob_droplist VALUES(3922,1,2,1000,20529,333); -- Calved Claws
INSERT INTO mob_droplist VALUES(3922,1,2,1000,21167,333); -- Frazil Staff
INSERT INTO mob_droplist VALUES(3922,1,2,1000,28495,334); -- Rimeice Earring
INSERT INTO mob_droplist VALUES(3922,1,3,1000,28008,500); -- Nilas Gloves
INSERT INTO mob_droplist VALUES(3922,1,3,1000,21366,500); -- Floestone
INSERT INTO mob_droplist VALUES(3922,1,4,1000,8720,200); -- Maliyakaleya Coral
INSERT INTO mob_droplist VALUES(3922,1,4,1000,8721,200); -- Hepatizon Ore
INSERT INTO mob_droplist VALUES(3922,1,4,1000,8723,200); -- Beryllium Ore
INSERT INTO mob_droplist VALUES(3922,1,4,1000,8725,200); -- Exalted Log
INSERT INTO mob_droplist VALUES(3922,1,4,1000,8727,200); -- Sif's Lock
-- Leviathan Prim HTBF updated
INSERT INTO `bcnm_battlefield` VALUES ( 612, 1,17641497,3); 
INSERT INTO `bcnm_battlefield` VALUES ( 612, 2,17641498,3);
INSERT INTO `bcnm_battlefield` VALUES ( 612, 3,17641499,3);
INSERT INTO mob_spell_lists VALUES ('Leviathan_Prime_HTBF', 509, 203, 65, 255); -- Waterga V
INSERT INTO mob_spell_lists VALUES ('Leviathan_Prime_HTBF', 509, 215, 65, 255); -- Flood 2
INSERT INTO mob_spell_lists VALUES ('Leviathan_Prime_HTBF', 509,  79, 65, 255); -- Slow II
INSERT INTO mob_spell_lists VALUES ('Leviathan_Prime_HTBF', 509,  80, 65, 255); -- Paralyze II
INSERT INTO mob_spell_lists VALUES ('Leviathan_Prime_HTBF', 509, 105, 65, 255); -- Enwater
INSERT INTO mob_spell_lists VALUES ('Leviathan_Prime_HTBF', 509, 172, 65, 255); -- Water IV
INSERT INTO mob_spell_lists VALUES ('Leviathan_Prime_HTBF', 509, 173, 65, 255); -- Water V
INSERT INTO mob_pools VALUES (40003, 'Leviathan_Prime_HTBF', 'Leviathan_Prime', 323, 0x00001b0300000000000000000000000000000000, 1, 4, 8, 240, 100, 0, 1, 1, 1, 18, 1, 0, 0, 3, 0, 0, 509, 0, 0, 40, 40);  
UPDATE mob_spawn_points SET pos_X =  505.3401, pos_y =   41.5271, pos_z = -367.2156,  pos_rot = 102 WHERE mobid = 17641497;
UPDATE mob_spawn_points SET pos_X =   25.9310, pos_y =  -18.6385, pos_z =   33.1422,  pos_rot = 100 WHERE mobid = 17641498;
UPDATE mob_spawn_points SET pos_X = -375.2288, pos_y =  -78.4145, pos_z =  513.0482,  pos_rot =  99 WHERE mobid = 17641499;
UPDATE mob_groups SET poolid = 40003, dropid = 3920, HP = 115000, MP = 5000, minLevel = 100, maxLevel = 110 WHERE name = 'Leviathan_Prime_HTBF' AND groupid = 6;
INSERT INTO mob_droplist VALUES(3920,0,0,1000,4072,1000); -- Rem's Tale Ch. 9
INSERT INTO mob_droplist VALUES(3920,1,1,500,4072,250); -- Rem's Tale Ch. 9
INSERT INTO mob_droplist VALUES(3920,1,2,1000,20944,333); -- Pelagos Lance
INSERT INTO mob_droplist VALUES(3920,1,2,1000,21103,333); -- Vadose Rod
INSERT INTO mob_droplist VALUES(3920,1,2,1000,20856,334); -- Phreatic Axe
INSERT INTO mob_droplist VALUES(3920,1,3,1000,21420,500); -- Benthos Grip
INSERT INTO mob_droplist VALUES(3920,1,3,1000,28493,500); -- Neritic Earring
INSERT INTO mob_droplist VALUES(3920,1,4,1000,8720,200); -- Maliyakaleya Coral
INSERT INTO mob_droplist VALUES(3920,1,4,1000,8721,200); -- Hepatizon Ore
INSERT INTO mob_droplist VALUES(3920,1,4,1000,8723,200); -- Beryllium Ore
INSERT INTO mob_droplist VALUES(3920,1,4,1000,8725,200); -- Exalted Log
INSERT INTO mob_droplist VALUES(3920,1,4,1000,8727,200); -- Sif's Lock
-- Ifrit Prim HTBF updated
INSERT INTO `bcnm_battlefield` VALUES ( 548, 1,17625113,3);
INSERT INTO `bcnm_battlefield` VALUES ( 548, 2,17625114,3);
INSERT INTO `bcnm_battlefield` VALUES ( 548, 3,17625115,3);
INSERT INTO mob_spell_lists VALUES ('Ifrit_Prime_HTBF', 510, 178, 65, 255); -- firaga V
INSERT INTO mob_spell_lists VALUES ('Ifrit_Prime_HTBF', 510, 205, 65, 255); -- flare 2
INSERT INTO mob_spell_lists VALUES ('Ifrit_Prime_HTBF', 510,  79, 65, 255); -- Slow II
INSERT INTO mob_spell_lists VALUES ('Ifrit_Prime_HTBF', 510,  80, 65, 255); -- Paralyze II
INSERT INTO mob_spell_lists VALUES ('Ifrit_Prime_HTBF', 510, 100, 65, 255); -- Enfire
INSERT INTO mob_spell_lists VALUES ('Ifrit_Prime_HTBF', 510, 147, 65, 255); -- fire IV
INSERT INTO mob_spell_lists VALUES ('Ifrit_Prime_HTBF', 510, 148, 65, 255); -- fire V
INSERT INTO mob_pools VALUES (40004, 'Ifrit_Prime_HTBF', 'Ifrit_Prime', 322, 0x0000190300000000000000000000000000000000, 1, 4, 5, 240, 100, 0, 1, 1, 1, 18, 1, 0, 0, 3, 0, 0, 510, 0, 0, 38, 38);  
UPDATE mob_spawn_points SET pos_X =  503.4712, pos_y =   41.7094, pos_z = -367.2797,  pos_rot =  97 WHERE mobid = 17625113;
UPDATE mob_spawn_points SET pos_X =   23.6167, pos_y =  -18.3472, pos_z =   33.1332,  pos_rot = 103 WHERE mobid = 17625114;
UPDATE mob_spawn_points SET pos_X = -375.8824, pos_y =  -78.3193, pos_z =  512.7032,  pos_rot = 103 WHERE mobid = 17625115;
UPDATE mob_groups SET poolid = 40004, dropid = 3924, HP = 115000, MP = 5000, minLevel = 100, maxLevel = 110 WHERE name = 'Ifrit_Prime_HTBF' AND groupid = 6;
INSERT INTO mob_droplist VALUES(3924,0,0,1000,4072,1000); -- Rem's Tale Ch. 9
INSERT INTO mob_droplist VALUES(3924,1,1,500,4072,250); -- Rem's Tale Ch. 9
INSERT INTO mob_droplist VALUES(3924,1,2,1000,20716,333); -- Perfervid Sword
INSERT INTO mob_droplist VALUES(3924,1,2,1000,21036,333); -- Atakigiri
INSERT INTO mob_droplist VALUES(3924,1,2,1000,28285,334); -- Coalrake Sabots
INSERT INTO mob_droplist VALUES(3924,1,3,1000,27594,500); -- Annealed Mantle
INSERT INTO mob_droplist VALUES(3924,1,3,1000,21421,500); -- Immolation Grip
INSERT INTO mob_droplist VALUES(3924,1,4,1000,8720,200); -- Maliyakaleya Coral
INSERT INTO mob_droplist VALUES(3924,1,4,1000,8721,200); -- Hepatizon Ore
INSERT INTO mob_droplist VALUES(3924,1,4,1000,8723,200); -- Beryllium Ore
INSERT INTO mob_droplist VALUES(3924,1,4,1000,8725,200); -- Exalted Log
INSERT INTO mob_droplist VALUES(3924,1,4,1000,8727,200); -- Sif's Lock
-- Titan Prim HTBF updated
INSERT INTO `bcnm_battlefield` VALUES ( 581, 1,17633308,3);  
INSERT INTO `bcnm_battlefield` VALUES ( 581, 2,17633309,3);
INSERT INTO `bcnm_battlefield` VALUES ( 581, 3,17633310,3);
INSERT INTO mob_spell_lists VALUES ('Titan_Prime_HTBF', 511, 193, 65, 255); -- stonega V
INSERT INTO mob_spell_lists VALUES ('Titan_Prime_HTBF', 511, 211, 65, 255); -- quake 2
INSERT INTO mob_spell_lists VALUES ('Titan_Prime_HTBF', 511,  79, 65, 255); -- Slow II
INSERT INTO mob_spell_lists VALUES ('Titan_Prime_HTBF', 511,  80, 65, 255); -- Paralyze II
INSERT INTO mob_spell_lists VALUES ('Titan_Prime_HTBF', 511, 103, 65, 255); -- Enstone
INSERT INTO mob_spell_lists VALUES ('Titan_Prime_HTBF', 511, 162, 65, 255); -- stone IV
INSERT INTO mob_spell_lists VALUES ('Titan_Prime_HTBF', 511, 163, 65, 255); -- stone V
INSERT INTO mob_pools VALUES (40005, 'Titan_Prime_HTBF', 'Titan_Prime', 321, 0x00001a0300000000000000000000000000000000, 4, 4, 6, 240, 100, 0, 1, 1, 1, 18, 1, 0, 0, 3, 0, 0, 511, 0, 0, 45, 45);  
UPDATE mob_spawn_points SET pos_X =  503.7151, pos_y =   41.7203, pos_z = -367.5521,  pos_rot =  89 WHERE mobid = 17633308;
UPDATE mob_spawn_points SET pos_X =   24.4596, pos_y =  -18.3895, pos_z =   33.1568,  pos_rot =  97 WHERE mobid = 17633309;
UPDATE mob_spawn_points SET pos_X = -375.5651, pos_y =  -78.3770, pos_z =  513.0141,  pos_rot = 102 WHERE mobid = 17633310;
UPDATE mob_groups SET poolid = 40005, dropid = 3925, HP = 115000, MP = 5000, minLevel = 100, maxLevel = 110 WHERE name = 'Titan_Prime_HTBF' AND groupid = 7;
INSERT INTO mob_droplist VALUES(3925,0,0,1000,4071,1000); -- Rem's Tale Ch. 8
INSERT INTO mob_droplist VALUES(3925,1,1,500,4071,250); -- Rem's Tale Ch. 8
INSERT INTO mob_droplist VALUES(3925,1,2,1000,21102,333); -- Mafic Cudgel
INSERT INTO mob_droplist VALUES(3925,1,2,1000,20757,333); -- Foreshock Sword
INSERT INTO mob_droplist VALUES(3925,1,2,1000,21357,334); -- Togakushi Shuriken
INSERT INTO mob_droplist VALUES(3925,1,3,1000,28535,500); -- Supershear Ring
INSERT INTO mob_droplist VALUES(3925,1,3,1000,21358,500); -- Plumose Sachet
INSERT INTO mob_droplist VALUES(3925,1,4,1000,8720,200); -- Maliyakaleya Coral
INSERT INTO mob_droplist VALUES(3925,1,4,1000,8721,200); -- Hepatizon Ore
INSERT INTO mob_droplist VALUES(3925,1,4,1000,8723,200); -- Beryllium Ore
INSERT INTO mob_droplist VALUES(3925,1,4,1000,8725,200); -- Exalted Log
INSERT INTO mob_droplist VALUES(3925,1,4,1000,8727,200); -- Sif's Lock
-- Fenrir Prim HTBF updated
INSERT INTO `bcnm_battlefield` VALUES ( 228, 1,17473651,3);
INSERT INTO `bcnm_battlefield` VALUES ( 228, 2,17473652,3);
INSERT INTO `bcnm_battlefield` VALUES ( 228, 3,17473653,3);
INSERT INTO mob_pools VALUES (40006, 'Fenrir_Prime_HTBF', 'Fenrir_Prime', 325, 0x0000180300000000000000000000000000000000, 8, 4, 6, 240, 100, 0, 1, 1, 1, 18, 1, 0, 0, 3, 0, 0, 0, 0, 0, 40001, 36);  
UPDATE mob_spawn_points SET mobname = 'Fenrir_Prime_HTBF', pos_X =  339.4457, pos_y =   47.5105, pos_z = -341.6085,  pos_rot =  64 WHERE mobid = 17473651;
UPDATE mob_spawn_points SET mobname = 'Fenrir_Prime_HTBF', pos_X =  -59.9329, pos_y =    9.4368, pos_z =   59.3577,  pos_rot =  64 WHERE mobid = 17473652;
UPDATE mob_spawn_points SET mobname = 'Fenrir_Prime_HTBF', pos_X = -380.1290, pos_y =  -52.5273, pos_z =  418.5986,  pos_rot =  64 WHERE mobid = 17473653;
UPDATE mob_groups SET poolid = 40006, dropid = 3926, HP = 155000, MP = 5000, minLevel = 110, maxLevel = 120 WHERE name = 'Fenrir_Prime_HTBF' AND groupid = 31;
INSERT INTO mob_skill_lists VALUES ('Fenrir_Prime_HTBF', 40001, 831); -- moonlit charge
INSERT INTO mob_skill_lists VALUES ('Fenrir_Prime_HTBF', 40001, 832); -- crescent fang
INSERT INTO mob_skill_lists VALUES ('Fenrir_Prime_HTBF', 40001, 833); -- lunar cry
INSERT INTO mob_skill_lists VALUES ('Fenrir_Prime_HTBF', 40001, 834); -- ecliptic growl
INSERT INTO mob_skill_lists VALUES ('Fenrir_Prime_HTBF', 40001, 835); -- lunar roar
INSERT INTO mob_skill_lists VALUES ('Fenrir_Prime_HTBF', 40001, 836); -- eclipse bite
INSERT INTO mob_skill_lists VALUES ('Fenrir_Prime_HTBF', 40001, 837); -- ecliptic howl
INSERT INTO mob_skill_lists VALUES ('Fenrir_Prime_HTBF', 40001, 839); -- howling moon
INSERT INTO mob_droplist VALUES(3926,0,0,1000,4069,1000); -- Rem's Tale Ch. 6
INSERT INTO mob_droplist VALUES(3926,1,1,500,4069,250); -- Rem's Tale Ch. 6
INSERT INTO mob_droplist VALUES(3926,1,2,1000,20707,333); -- Medeina Kilij
INSERT INTO mob_droplist VALUES(3926,1,2,1000,21412,333); -- Capitoline Strap
INSERT INTO mob_droplist VALUES(3926,1,2,1000,25600,3334); -- Ma'iitsoh Haube
INSERT INTO mob_droplist VALUES(3926,1,3,1000,26969,500); -- Vrikodara Jupon
INSERT INTO mob_droplist VALUES(3926,1,3,1000,27608,500); -- Lupine Cape
INSERT INTO mob_droplist VALUES(3926,1,4,1000,8720,200); -- Maliyakaleya Coral
INSERT INTO mob_droplist VALUES(3926,1,4,1000,8721,200); -- Hepatizon Ore
INSERT INTO mob_droplist VALUES(3926,1,4,1000,8723,200); -- Beryllium Ore
INSERT INTO mob_droplist VALUES(3926,1,4,1000,8725,200); -- Exalted Log
INSERT INTO mob_droplist VALUES(3926,1,4,1000,8727,200); -- Sif's Lock
-- Carbuncle Prim HTBF updated Carbuncle_Prime_HTBF
INSERT INTO `bcnm_battlefield` VALUES ( 229, 1,17473666,3);
INSERT INTO `bcnm_battlefield` VALUES ( 229, 2,17473667,3);
INSERT INTO `bcnm_battlefield` VALUES ( 229, 3,17473668,3);
INSERT INTO mob_pools VALUES (40007, 'Carbuncle_Prime_HTBF', 'Carbuncle_Prime', 34, 0x0000170300000000000000000000000000000000, 3, 4, 7, 240, 100, 0, 1, 1, 0, 18, 0, 0, 0, 0, 0, 0, 0, 0, 0, 34, 34);  
UPDATE mob_spawn_points SET mobname = 'Carbuncle_Prime_HTBF', pos_X =  339.6589, pos_y =   47.5315, pos_z = -342.1236,  pos_rot =  64 WHERE mobid = 17473666;
UPDATE mob_spawn_points SET mobname = 'Carbuncle_Prime_HTBF', pos_X =  -59.7994, pos_y =    9.4894, pos_z =   58.6598,  pos_rot =  64 WHERE mobid = 17473667;
UPDATE mob_spawn_points SET mobname = 'Carbuncle_Prime_HTBF', pos_X = -380.2636, pos_y =  -52.5487, pos_z =  419.2726,  pos_rot =  64 WHERE mobid = 17473668;
UPDATE mob_groups SET poolid = 40007, dropid = 3927, HP = 155000, MP = 5000, minLevel = 110, maxLevel = 120 WHERE name = 'Carbuncle_Prime_HTBF' AND groupid = 32;
INSERT INTO mob_droplist VALUES(3927,0,0,1000,4070,1000); -- Rem's Tale Ch. 7
INSERT INTO mob_droplist VALUES(3927,1,1,500,4070,250); -- Rem's Tale Ch. 7
INSERT INTO mob_droplist VALUES(3927,1,2,1000,21155,333); -- Marquetry Staff
INSERT INTO mob_droplist VALUES(3927,1,2,1000,26970,333); -- Lapidary Tunic
INSERT INTO mob_droplist VALUES(3927,1,2,1000,27466,334); -- Diamantaire Sollerets
INSERT INTO mob_droplist VALUES(3927,1,3,1000,27516,500); -- Satlada Necklace
INSERT INTO mob_droplist VALUES(3927,1,3,1000,28414,500); -- Engraved Belt
INSERT INTO mob_droplist VALUES(3927,1,4,1000,8720,200); -- Maliyakaleya Coral
INSERT INTO mob_droplist VALUES(3927,1,4,1000,8721,200); -- Hepatizon Ore
INSERT INTO mob_droplist VALUES(3927,1,4,1000,8723,200); -- Beryllium Ore
INSERT INTO mob_droplist VALUES(3927,1,4,1000,8725,200); -- Exalted Log
INSERT INTO mob_droplist VALUES(3927,1,4,1000,8727,200); -- Sif's Lock
/*

-- Diablos Prim HTBF updated
UPDATE mob_spawn_points SET mobname = 'Diabolos_HTBF' WHERE mobid = 16818225;
UPDATE mob_spawn_points SET mobname = 'Diabolos_HTBF' WHERE mobid = 16818226;
UPDATE mob_spawn_points SET mobname = 'Diabolos_HTBF' WHERE mobid = 16818227;
INSERT INTO `bcnm_battlefield` VALUES ( 707, 1,16818225,3);
INSERT INTO `bcnm_battlefield` VALUES ( 707, 2,16818226,3);
INSERT INTO `bcnm_battlefield` VALUES ( 707, 3,16818227,3);
-- The celestial nexus - single bf - updated
INSERT INTO `bcnm_battlefield` VALUES ( 321, 1,17518682,3); 
INSERT INTO `bcnm_battlefield` VALUES ( 321, 1,17518598,0); 
INSERT INTO `bcnm_battlefield` VALUES ( 321, 1,17518666,3); 
-- Return to Delkfut Tower updated
UPDATE mob_spawn_points SET mobname = 'Kamlanaut_HTBF' WHERE mobid = 17510473;
UPDATE mob_spawn_points SET mobname = 'Kamlanaut_HTBF' WHERE mobid = 17510474;
UPDATE mob_spawn_points SET mobname = 'Kamlanaut_HTBF' WHERE mobid = 17510475;
INSERT INTO `bcnm_battlefield` VALUES ( 263, 1,17510473,3);
INSERT INTO `bcnm_battlefield` VALUES ( 263, 2,17510474,3);
INSERT INTO `bcnm_battlefield` VALUES ( 263, 3,17510475,3);
-- ark angels hm htbf updated
INSERT INTO `bcnm_battlefield` VALUES ( 294, 1,17514595,3);
INSERT INTO `bcnm_battlefield` VALUES ( 294, 2,17514596,3);
INSERT INTO `bcnm_battlefield` VALUES ( 294, 3,17514597,3);
-- ark angels tt htbf updated
INSERT INTO `bcnm_battlefield` VALUES ( 295, 1,17514752,3);
INSERT INTO `bcnm_battlefield` VALUES ( 295, 2,17514753,3);
INSERT INTO `bcnm_battlefield` VALUES ( 295, 3,17514754,3);
-- ark angels mr htbf updated
INSERT INTO `bcnm_battlefield` VALUES ( 296, 1,17514598,3);
INSERT INTO `bcnm_battlefield` VALUES ( 296, 2,17514599,3);
INSERT INTO `bcnm_battlefield` VALUES ( 296, 3,17514600,3);
INSERT INTO `bcnm_battlefield` VALUES ( 296, 1,17514695,3);
INSERT INTO `bcnm_battlefield` VALUES ( 296, 2,17514696,3);
INSERT INTO `bcnm_battlefield` VALUES ( 296, 3,17514697,3);
-- ark angels ev htbf updated
INSERT INTO `bcnm_battlefield` VALUES ( 297, 1,17514701,3);
INSERT INTO `bcnm_battlefield` VALUES ( 297, 2,17514702,3);
INSERT INTO `bcnm_battlefield` VALUES ( 297, 3,17514703,3);
-- ark angels gk htbf updated
INSERT INTO `bcnm_battlefield` VALUES ( 298, 1,17514707,3);
INSERT INTO `bcnm_battlefield` VALUES ( 298, 2,17514708,3);
INSERT INTO `bcnm_battlefield` VALUES ( 298, 3,17514709,3);
INSERT INTO `bcnm_battlefield` VALUES ( 298, 1,17514710,3);
INSERT INTO `bcnm_battlefield` VALUES ( 298, 2,17514711,3);
INSERT INTO `bcnm_battlefield` VALUES ( 298, 3,17514712,3);



-- divine_might_ii htbf - single bf - updated
INSERT INTO `bcnm_battlefield` VALUES ( 299, 1,17514633,3);
INSERT INTO `bcnm_battlefield` VALUES ( 299, 1,17514630,3);
INSERT INTO `bcnm_battlefield` VALUES ( 299, 1,17514570,3);
INSERT INTO `bcnm_battlefield` VALUES ( 299, 1,17514601,3);
INSERT INTO `bcnm_battlefield` VALUES ( 299, 1,17514781,3);
INSERT INTO `bcnm_battlefield` VALUES ( 299, 1,17514631,3);
INSERT INTO `bcnm_battlefield` VALUES ( 299, 1,17514784,3);
--
INSERT INTO `bcnm_battlefield` VALUES ( 166, 1,17453265,3);
INSERT INTO `bcnm_battlefield` VALUES ( 166, 1,17453264,2);
INSERT INTO `bcnm_battlefield` VALUES ( 680, 1,16810177,3);
INSERT INTO `bcnm_battlefield` VALUES ( 680, 1,16810189,3);
INSERT INTO `bcnm_battlefield` VALUES ( 680, 1,16810166,3);
INSERT INTO `bcnm_battlefield` VALUES ( 680, 1,16810170,3);
INSERT INTO `bcnm_battlefield` VALUES ( 680, 1,16810143,3);
INSERT INTO `bcnm_battlefield` VALUES ( 968, 1,16904295,3);
INSERT INTO `bcnm_battlefield` VALUES ( 994, 1,16908362,3);
INSERT INTO `bcnm_battlefield` VALUES ( 995, 1,16908392,3);  
INSERT INTO `bcnm_battlefield` VALUES ( 995, 1,16908399,3);
INSERT INTO `bcnm_battlefield` VALUES (1059, 1,16924720,3);
INSERT INTO `bcnm_battlefield` VALUES (1089, 1,17010713,3); 
INSERT INTO `bcnm_battlefield` VALUES (1093, 1,17010752,3);
INSERT INTO `bcnm_battlefield` VALUES (1120, 1,17039361,3);
INSERT INTO `bcnm_battlefield` VALUES (1121, 1,17039367,3);
INSERT INTO `bcnm_battlefield` VALUES (1152, 1,17051649,3);
INSERT INTO `bcnm_battlefield` VALUES (1157, 1,17051697,3);
INSERT INTO `bcnm_battlefield` VALUES (1153, 1,17051655,3);
INSERT INTO `bcnm_battlefield` VALUES (1153, 1,17051656,0); 
INSERT INTO `bcnm_battlefield` VALUES (1153, 1,17051657,0); 
INSERT INTO `bcnm_battlefield` VALUES (1153, 1,17051658,0); 
INSERT INTO `bcnm_battlefield` VALUES (1153, 1,17051659,0); 
INSERT INTO `bcnm_battlefield` VALUES (1153, 2,17051661,3); 
INSERT INTO `bcnm_battlefield` VALUES (1153, 2,17051662,0); 
INSERT INTO `bcnm_battlefield` VALUES (1153, 2,17051663,0); 
INSERT INTO `bcnm_battlefield` VALUES (1153, 2,17051664,0); 
INSERT INTO `bcnm_battlefield` VALUES (1153, 2,17051665,0); 
INSERT INTO `bcnm_battlefield` VALUES (1153, 3,17051667,3); 
INSERT INTO `bcnm_battlefield` VALUES (1153, 3,17051668,0); 
INSERT INTO `bcnm_battlefield` VALUES (1153, 3,17051669,0); 
INSERT INTO `bcnm_battlefield` VALUES (1153, 3,17051670,0); 
INSERT INTO `bcnm_battlefield` VALUES (1153, 3,17051671,0); 
INSERT INTO `bcnm_battlefield` VALUES (1088, 1,17010695,3);
INSERT INTO `bcnm_battlefield` VALUES (1088, 1,17010696,2);
INSERT INTO `bcnm_battlefield` VALUES (1088, 1,17010697,2);
INSERT INTO `bcnm_battlefield` VALUES (1088, 1,17010698,2);
INSERT INTO `bcnm_battlefield` VALUES (1088, 1,17010699,2);
INSERT INTO `bcnm_battlefield` VALUES (1088, 2,17010701,3);
INSERT INTO `bcnm_battlefield` VALUES (1088, 2,17010702,2);
INSERT INTO `bcnm_battlefield` VALUES (1088, 2,17010703,2);
INSERT INTO `bcnm_battlefield` VALUES (1088, 2,17010704,2);
INSERT INTO `bcnm_battlefield` VALUES (1088, 2,17010705,2);
INSERT INTO `bcnm_battlefield` VALUES (1088, 3,17010707,3);
INSERT INTO `bcnm_battlefield` VALUES (1088, 3,17010708,2);
INSERT INTO `bcnm_battlefield` VALUES (1088, 3,17010709,2);
INSERT INTO `bcnm_battlefield` VALUES (1088, 3,17010710,2);
INSERT INTO `bcnm_battlefield` VALUES (1088, 3,17010711,2);
*/



-- WAS ALREADY COMMIT PRIOR --
-- INSERT INTO `bcnm_info` VALUES (1088,57,'call_to_arms'                ,'nobody',0,1800,1800,99,6,0,5,0);
-- INSERT INTO `bcnm_info` VALUES (1089,57,'compliments_to_the_chef'     ,'nobody',0,1800,1800,99,6,0,5,0); 
-- INSERT INTO `bcnm_info` VALUES (1120,64,'tough_nut_to_crack'          ,'nobody',0,1800,1800,99,6,0,5,0);
-- INSERT INTO `bcnm_info` VALUES (1121,64,'happy_caster'                ,'nobody',0,1800,1800,99,6,0,5,0);
-- INSERT INTO `bcnm_info` VALUES (1152,67,'making_a_mockery'            ,'nobody',0,1800,1800,99,6,0,5,0);
-- INSERT INTO `bcnm_info` VALUES (1153,67,'shadows_of_the_mind'         ,'nobody',0,1800,1800,99,6,0,5,0);
/**
-- update spawn points
UPDATE mob_spawn_points SET pos_X = -465.4395, pos_y = -167.2311, pos_z = -240.1722,  pos_rot =255 WHERE mobid = 17453264;
UPDATE mob_spawn_points SET pos_X = 0.3556,    pos_y = 202.5,     pos_z = -360.2336,  pos_rot =64  WHERE mobid = 17510577;
UPDATE mob_spawn_points SET pos_X = -13.7793,  pos_y = -18.716,   pos_z = 13.7825,    pos_rot =38  WHERE mobid = 17514689;
UPDATE mob_spawn_points SET pos_X = -13.7793,  pos_y = -18.716,   pos_z = 13.7825,    pos_rot =38  WHERE mobid = 17514574;
UPDATE mob_spawn_points SET pos_X = -13.7793,  pos_y = -18.716,   pos_z = 13.7825,    pos_rot =38  WHERE mobid = 17514646;
UPDATE mob_spawn_points SET pos_X = -14.4887,  pos_y = -18.7161,  pos_z = 15.1491,    pos_rot =38  WHERE mobid = 17514771;
UPDATE mob_spawn_points SET pos_X = -13.7793,  pos_y = -18.716,   pos_z = 13.7825,    pos_rot =38  WHERE mobid = 17514573;
UPDATE mob_spawn_points SET pos_X = -13.7793,  pos_y = -18.716,   pos_z = 13.7825,    pos_rot =38  WHERE mobid = 17514735;
UPDATE mob_spawn_points SET pos_X = -14.4887,  pos_y = -18.7161,  pos_z = 15.1491,    pos_rot =38  WHERE mobid = 17514576;
UPDATE mob_spawn_points SET pos_X = -13.7793,  pos_y = -18.716,   pos_z = 13.7825,    pos_rot =38  WHERE mobid = 17514633;
UPDATE mob_spawn_points SET pos_X = -16.6021,  pos_y = -18.7162,  pos_z = 11.1549,    pos_rot =29  WHERE mobid = 17514630;
UPDATE mob_spawn_points SET pos_X = -12.5777,  pos_y = -18.7162,  pos_z = 16.5445,    pos_rot =44  WHERE mobid = 17514570;
UPDATE mob_spawn_points SET pos_X = -13.1592,  pos_y = -18.7163,  pos_z = 18.3561,    pos_rot =39  WHERE mobid = 17514601;
UPDATE mob_spawn_points SET pos_X = -12.873,   pos_y = -18.7161,  pos_z = 12.157,     pos_rot =42  WHERE mobid = 17514781;
UPDATE mob_spawn_points SET pos_X = -17.7029,  pos_y = -18.7166,  pos_z = 8.2761,     pos_rot =30  WHERE mobid = 17514631;
UPDATE mob_spawn_points SET pos_X = -18.7929,  pos_y = -18.7166,  pos_z = 9.1704,     pos_rot =27  WHERE mobid = 17514784;
UPDATE mob_spawn_points SET groupid = 1, pos_X = -32.1095, pos_y = -18.1303, pos_z = -25.0494,  pos_rot =127 WHERE mobid = 17518682;
UPDATE mob_spawn_points SET mobname = 'Ealdnarche_2', groupid = 3, pos_X = -32.1095, pos_y = -18.1303, pos_z = -25.0494,  pos_rot =127 WHERE mobid = 17518612;
UPDATE mob_spawn_points SET groupid = 2, pos_X = -32.1095, pos_y = -18.1303, pos_z = -25.0494,  pos_rot =127 WHERE mobid = 17518666;
UPDATE mob_spawn_points SET pos_X = -602.4497, pos_y = 82.2,      pos_z = -0.5236,    pos_rot =0   WHERE mobid = 16904295;
UPDATE mob_spawn_points SET pos_X = -560.4644, pos_y = 0,         pos_z = -477.4255,  pos_rot =127 WHERE mobid = 16810177;
UPDATE mob_spawn_points SET pos_X = -559.0723, pos_y = 0.0672,    pos_z = -477.3101,  pos_rot =127 WHERE mobid = 16810189;
UPDATE mob_spawn_points SET pos_X = -558.6032, pos_y = -0.0021,   pos_z = -479.9971,  pos_rot =125 WHERE mobid = 16810166;
UPDATE mob_spawn_points SET pos_X = -561.4904, pos_y = 0.2129,    pos_z = -472.2969,  pos_rot =109 WHERE mobid = 16810170;
UPDATE mob_spawn_points SET pos_X = -562.0448, pos_y = 0.1913,    pos_z = -470.6137,  pos_rot =109 WHERE mobid = 16810143;
UPDATE mob_spawn_points SET pos_X = -639.8851, pos_y = -231.3477, pos_z = 512.536,    pos_rot =189 WHERE mobid = 16908392;
UPDATE mob_spawn_points SET pos_X = -639.8851, pos_y = -231.3477, pos_z = 512.536,    pos_rot =189 WHERE mobid = 16908399;
UPDATE mob_spawn_points SET pos_X = -639.7784, pos_y = -231.3476, pos_z = 528.151,    pos_rot =66  WHERE mobid = 16908362;
UPDATE mob_spawn_points SET pos_X = -519.9426, pos_y = -120,      pos_z = 525.5723,   pos_rot =62  WHERE mobid = 16924720;
UPDATE mob_spawn_points SET pos_X = 242.0675,  pos_y = -31.5,     pos_z = 238.1919,   pos_rot =159 WHERE mobid = 17051697;
UPDATE mob_spawn_points SET pos_X = -178.578,  pos_y = 39.658,    pos_z = 181.3888,   pos_rot =68  WHERE mobid = 17010752;
UPDATE mob_spawn_points SET pos_X = 504.919,   pos_y = 41.553,    pos_z = -366.891,   pos_rot =105 WHERE mobid = 17625121;
UPDATE mob_spawn_points SET pos_X = 504.8676,  pos_y = 41.5439,   pos_z = -366.713,   pos_rot =102 WHERE mobid = 17608749;
UPDATE mob_spawn_points SET pos_X = 505.2479,  pos_y = 41.4935,   pos_z = -366.8473,  pos_rot =98  WHERE mobid = 17600548;
UPDATE mob_spawn_points SET pos_X = 504.4999,  pos_y = 41.6654,   pos_z = -367.6415,  pos_rot =97  WHERE mobid = 17633319;
UPDATE mob_spawn_points SET pos_X = 504.501,   pos_y = 41.6916,   pos_z = -367.9862,  pos_rot =98  WHERE mobid = 17641505;
UPDATE mob_spawn_points SET pos_X = 504.8835,  pos_y = 41.604,    pos_z = -367.3168,  pos_rot =98  WHERE mobid = 17604645;
UPDATE mob_spawn_points SET pos_X = 339.4833,  pos_y = 47.5469,   pos_z = -342.2661,  pos_rot =64  WHERE mobid = 17473648;
UPDATE mob_spawn_points SET pos_X = 340.2175,  pos_y = 47.465,    pos_z = -341.2038,  pos_rot =63  WHERE mobid = 17473666;
UPDATE mob_spawn_points SET pos_X = -240.0028, pos_y = -32,       pos_z = 291.9999,   pos_rot =64  WHERE mobid = 16818239;
UPDATE mob_spawn_points SET pos_X = -179.5685, pos_y = 39.6542,   pos_z = 183.1523,   pos_rot =64  WHERE mobid = 17010713;
UPDATE mob_spawn_points SET pos_X = 382.8363,  pos_y = -116,      pos_z = 380.9192,   pos_rot =128 WHERE mobid = 17039361;
UPDATE mob_spawn_points SET pos_X = 382.365,   pos_y = -116,      pos_z = 380.432,    pos_rot =130 WHERE mobid = 17039367;
UPDATE mob_spawn_points SET pos_X = 242.4376,  pos_y = -31.356,   pos_z = 237.352,    pos_rot =155 WHERE mobid = 17051649;
UPDATE mob_spawn_points SET pos_X = 242.8706,  pos_y = -31.3176,  pos_z = 237.5289,   pos_rot =158 WHERE mobid = 17051655;
UPDATE mob_spawn_points SET pos_X = 242.8706,  pos_y = -31.3176,  pos_z = 237.5289,   pos_rot =158 WHERE mobid = 17051656;
UPDATE mob_spawn_points SET pos_X = 242.8706,  pos_y = -31.3176,  pos_z = 237.5289,   pos_rot =158 WHERE mobid = 17051657;
UPDATE mob_spawn_points SET pos_X = 242.8706,  pos_y = -31.3176,  pos_z = 237.5289,   pos_rot =158 WHERE mobid = 17051658;
UPDATE mob_spawn_points SET pos_X = 242.8706,  pos_y = -31.3176,  pos_z = 237.5289,   pos_rot =158 WHERE mobid = 17051659;
UPDATE mob_spawn_points SET pos_X = 242.8706,  pos_y = -31.3176,  pos_z = 237.5289,   pos_rot =158 WHERE mobid = 17051661;
UPDATE mob_spawn_points SET pos_X = 242.8706,  pos_y = -31.3176,  pos_z = 237.5289,   pos_rot =158 WHERE mobid = 17051662;
UPDATE mob_spawn_points SET pos_X = 242.8706,  pos_y = -31.3176,  pos_z = 237.5289,   pos_rot =158 WHERE mobid = 17051663;
UPDATE mob_spawn_points SET pos_X = 242.8706,  pos_y = -31.3176,  pos_z = 237.5289,   pos_rot =158 WHERE mobid = 17051664;
UPDATE mob_spawn_points SET pos_X = 242.8706,  pos_y = -31.3176,  pos_z = 237.5289,   pos_rot =158 WHERE mobid = 17051665;
UPDATE mob_spawn_points SET pos_X = 242.8706,  pos_y = -31.3176,  pos_z = 237.5289,   pos_rot =158 WHERE mobid = 17051667;
UPDATE mob_spawn_points SET pos_X = 242.8706,  pos_y = -31.3176,  pos_z = 237.5289,   pos_rot =158 WHERE mobid = 17051668;
UPDATE mob_spawn_points SET pos_X = 242.8706,  pos_y = -31.3176,  pos_z = 237.5289,   pos_rot =158 WHERE mobid = 17051669;
UPDATE mob_spawn_points SET pos_X = 242.8706,  pos_y = -31.3176,  pos_z = 237.5289,   pos_rot =158 WHERE mobid = 17051670;
UPDATE mob_spawn_points SET pos_X = 242.8706,  pos_y = -31.3176,  pos_z = 237.5289,   pos_rot =158 WHERE mobid = 17051671;
UPDATE mob_spawn_points SET pos_X = -179.6779, pos_y = 39.6355,   pos_z = 182.3663,   pos_rot =64  WHERE mobid = 17010695;
UPDATE mob_spawn_points SET pos_X = -179.6779, pos_y = 39.6355,   pos_z = 182.3663,   pos_rot =64  WHERE mobid = 17010696;
UPDATE mob_spawn_points SET pos_X = -179.6779, pos_y = 39.6355,   pos_z = 182.3663,   pos_rot =64  WHERE mobid = 17010697;
UPDATE mob_spawn_points SET pos_X = -179.6779, pos_y = 39.6355,   pos_z = 182.3663,   pos_rot =64  WHERE mobid = 17010698;
UPDATE mob_spawn_points SET pos_X = -179.6779, pos_y = 39.6355,   pos_z = 182.3663,   pos_rot =64  WHERE mobid = 17010699;
UPDATE mob_spawn_points SET pos_X = -179.6779, pos_y = 39.6355,   pos_z = 182.3663,   pos_rot =64  WHERE mobid = 17010701;
UPDATE mob_spawn_points SET pos_X = -179.6779, pos_y = 39.6355,   pos_z = 182.3663,   pos_rot =64  WHERE mobid = 17010702;
UPDATE mob_spawn_points SET pos_X = -179.6779, pos_y = 39.6355,   pos_z = 182.3663,   pos_rot =64  WHERE mobid = 17010703;
UPDATE mob_spawn_points SET pos_X = -179.6779, pos_y = 39.6355,   pos_z = 182.3663,   pos_rot =64  WHERE mobid = 17010704;
UPDATE mob_spawn_points SET pos_X = -179.6779, pos_y = 39.6355,   pos_z = 182.3663,   pos_rot =64  WHERE mobid = 17010705;
UPDATE mob_spawn_points SET pos_X = -179.6779, pos_y = 39.6355,   pos_z = 182.3663,   pos_rot =64  WHERE mobid = 17010707;
UPDATE mob_spawn_points SET pos_X = -179.6779, pos_y = 39.6355,   pos_z = 182.3663,   pos_rot =64  WHERE mobid = 17010708;
UPDATE mob_spawn_points SET pos_X = -179.6779, pos_y = 39.6355,   pos_z = 182.3663,   pos_rot =64  WHERE mobid = 17010709;
UPDATE mob_spawn_points SET pos_X = -179.6779, pos_y = 39.6355,   pos_z = 182.3663,   pos_rot =64  WHERE mobid = 17010710;
UPDATE mob_spawn_points SET pos_X = -179.6779, pos_y = 39.6355,   pos_z = 182.3663,   pos_rot =64  WHERE mobid = 17010711;
*/
-- update pool ids
UPDATE mob_groups SET poolid = 5106 WHERE name = 'Promathia_htbf';
UPDATE mob_groups SET poolid = 636 WHERE name = 'Carbuncle_Prime_HTBF';



-- insert mob ability
INSERT INTO `mob_skills` VALUES (1712,1183,'bugle_call',1,10.0,2000,1500,4,4,0,0,0,0,0); -- imp -- bugal call
INSERT INTO `mob_skills` VALUES (1980,1197,'boreas_mantle',0,7.0,2000,1500,1,4,0,0,0,0,0); -- phantom puk
INSERT INTO `mob_skills` VALUES (3290,3034,'bowels_of_agony',0,7.0,2000,0,4,0,0,0,0,0,0); -- Bowels of Agony - Shadow Lord

INSERT INTO `mob_skill_lists` VALUES ('ShadowLord', 225, 3290);

-- update loot pools
-- INSERT INTO `mob_droplist` VALUES (3827,0,0,1000,9084,1000);

