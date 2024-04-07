--						Mob Pools settings						--
UPDATE mob_pools SET aggro = 1 WHERE name = "Apex_Eft";
UPDATE mob_pools SET aggro = 1 WHERE name = "Apex_Toad";
UPDATE mob_pools SET aggro = 1 WHERE name = "Apex_Mandragora";
UPDATE mob_pools SET aggro = 1 WHERE name = "Apex_Crab";
UPDATE mob_pools SET links = 1 WHERE name = "Apex_Crab";
UPDATE mob_pools SET aggro = 1 WHERE name = "Eschan_Opo-Opo";
UPDATE mob_pools SET links = 1 WHERE name = "Eschan_Opo-Opo";
--						Mob Group settings						--
--							Zone 190						--
UPDATE mob_groups SET HP = 9800 WHERE name = "Locus_Spartoi_Sorcerer";
UPDATE mob_groups SET HP = 9800 WHERE name = "Locus_Spartoi_Warrior";
UPDATE mob_groups SET HP = 9000 WHERE name = "Locus_Cutlass_Scorpion";
UPDATE mob_groups SET HP = 9000 WHERE name = "Locus_Thousand_Eyes";
UPDATE mob_groups SET HP = 9000 WHERE name = "Locus_Hati";
UPDATE mob_groups SET HP = 9500 WHERE name = "Locus_Armet_Beetle";
UPDATE mob_groups SET HP = 9000 WHERE name = "Locus_Dire_Bat";
UPDATE mob_groups SET HP = 9300 WHERE name = "Locus_Tomb_Worm";
--							Zone 4							--
UPDATE mob_groups SET HP = 9300 WHERE name = "Locus_Bight_Rarab";
UPDATE mob_groups SET HP = 9300 WHERE name = "Locus_Camelopard";
UPDATE mob_groups SET HP = 9300 WHERE name = "Locus_Hypnos_Eft";
UPDATE mob_groups SET HP = 9300 WHERE name = "Locus_Ghost_Crab";
--						Mob Family settings						--
UPDATE mob_family_system SET mobradius = 1.0 WHERE familyID = 77;
UPDATE mob_family_system SET mobradius = 3.0 WHERE familyID = 188;
--                      Mob Respawn Time
UPDATE mob_groups SET respawntime = 180 WHERE respawntime = 60; --All
UPDATE mob_groups SET respawntime = 180 WHERE respawntime = 300; --All
UPDATE mob_groups SET respawntime = 180 WHERE respawntime = 330; --All
UPDATE mob_groups SET respawntime = 180 WHERE respawntime = 480; --All
UPDATE mob_groups SET respawntime = 420 WHERE respawntime = 600; --All
UPDATE mob_groups SET respawntime = 420 WHERE respawntime = 660; --All
UPDATE mob_groups SET respawntime = 420 WHERE respawntime = 720; --All
UPDATE mob_groups SET respawntime = 420 WHERE respawntime = 792; --All
UPDATE mob_groups SET respawntime = 420 WHERE respawntime = 900; --All
UPDATE mob_groups SET respawntime = 420 WHERE respawntime = 924; --All
UPDATE mob_groups SET respawntime = 420 WHERE respawntime = 960; --All
--                      Zone 178
UPDATE mob_groups SET respawntime = 180 WHERE respawntime = 420 AND zoneid = 178;
UPDATE mob_groups SET respawntime = 180 WHERE respawntime = 600 AND zoneid = 178;
UPDATE mob_groups SET respawntime = 180 WHERE respawntime = 660 AND zoneid = 178;
UPDATE mob_groups SET respawntime = 180 WHERE respawntime = 720 AND zoneid = 178;
UPDATE mob_groups SET respawntime = 180 WHERE respawntime = 792 AND zoneid = 178;
UPDATE mob_groups SET respawntime = 180 WHERE respawntime = 900 AND zoneid = 178;
UPDATE mob_groups SET respawntime = 180 WHERE respawntime = 924 AND zoneid = 178;
UPDATE mob_groups SET respawntime = 180 WHERE respawntime = 960 AND zoneid = 178;
