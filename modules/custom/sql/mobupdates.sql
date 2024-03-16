--						Mob Pools settings						--
UPDATE mob_pools SET aggro = "1" WHERE name = "Apex_Eft";
UPDATE mob_pools SET aggro = "1" WHERE name = "Apex_Toad";
UPDATE mob_pools SET aggro = "1" WHERE name = "Apex_Mandragora";
UPDATE mob_pools SET aggro = "1" WHERE name = "Apex_Crab";
UPDATE mob_pools SET links = "1" WHERE name = "Apex_Crab";
UPDATE mob_pools SET aggro = "1" WHERE name = "Eschan_Opo-Opo";
UPDATE mob_pools SET links = "1" WHERE name = "Eschan_Opo-Opo";
--						Mob Group settings						--
--							Zone 190						--
UPDATE mob_groups SET HP = "9800" WHERE name = "Locus_Spartoi_Sorcerer";
UPDATE mob_groups SET HP = "9800" WHERE name = "Locus_Spartoi_Warrior";
UPDATE mob_groups SET HP = "9000" WHERE name = "Locus_Cutlass_Scorpion";
UPDATE mob_groups SET HP = "9000" WHERE name = "Locus_Thousand_Eyes";
UPDATE mob_groups SET HP = "9000" WHERE name = "Locus_Hati";
UPDATE mob_groups SET HP = "9500" WHERE name = "Locus_Armet_Beetle";
UPDATE mob_groups SET HP = "9000" WHERE name = "Locus_Dire_Bat";
UPDATE mob_groups SET HP = "9300" WHERE name = "Locus_Tomb_Worm";
--							Zone 4							--
UPDATE mob_groups SET HP = "9300" WHERE name = "Locus_Bight_Rarab";
UPDATE mob_groups SET HP = "9300" WHERE name = "Locus_Camelopard";
UPDATE mob_groups SET HP = "9300" WHERE name = "Locus_Hypnos_Eft";
UPDATE mob_groups SET HP = "9300" WHERE name = "Locus_Ghost_Crab";
--						Mob Family settings						--
UPDATE mob_family_system SET mobradius = "1.0" WHERE familyID = "77";
UPDATE mob_family_system SET mobradius = "3.0" WHERE familyID = "188";