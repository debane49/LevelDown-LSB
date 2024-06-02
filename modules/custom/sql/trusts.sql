--
-- General / Morimar --- still working on trust
--

INSERT INTO `mob_skill_lists` VALUES ('TRUST_Morimar',4000,3160); -- vehement_resolution anim 2335
INSERT INTO `mob_skill_lists` VALUES ('TRUST_Morimar',4000,3161); -- camaraderie_of_the_crevasse anim 2336
INSERT INTO `mob_skill_lists` VALUES ('TRUST_Morimar',4000,3162); -- into_the_light anim 2337
INSERT INTO `mob_skill_lists` VALUES ('TRUST_Morimar',4000,3163); -- arduous_decision anim 2338
INSERT INTO `mob_skill_lists` VALUES ('TRUST_Morimar',4000,3164); -- 12_blades_of_remorse anim 2339


UPDATE mob_pools SET skill_list_id = 4000 WHERE poolid = 5990; -- 5990

UPDATE mob_skills SET mob_anim_id = 2335 WHERE mob_skill_id = 3160;
UPDATE mob_skills SET mob_anim_id = 2336 WHERE mob_skill_id = 3161;
UPDATE mob_skills SET mob_anim_id = 2337 WHERE mob_skill_id = 3162;
UPDATE mob_skills SET mob_anim_id = 2338 WHERE mob_skill_id = 3163;
UPDATE mob_skills SET mob_anim_id = 2339 WHERE mob_skill_id = 3164;



--
-- Bart / Halver
--

INSERT INTO mob_skill_lists VALUES ('TRUST_Halver',1087,116);
INSERT INTO mob_skill_lists VALUES ('TRUST_Halver',1087,123);
INSERT INTO mob_skill_lists VALUES ('TRUST_Halver',1087,129);


--
-- Bart / Lion II
--
REPLACE INTO `mob_skills` VALUES (2891, 2029, 'grapeshot', 4, 7.0, 2000, 0, 4, 0, 0, 0, 3, 2, 0);
REPLACE INTO `mob_skills` VALUES (2892, 2030, 'pirate_pummel', 0, 7.0, 2000, 0, 4, 0, 0, 0, 9, 0, 0);
REPLACE INTO `mob_skills` VALUES (2893, 2031, 'powder_keg', 4, 7.0, 2000, 0, 4, 0, 0, 0, 5, 1, 0);
REPLACE INTO `mob_skills` VALUES (2894, 2032, 'walk_the_plank', 1, 7.0, 2000, 0, 4, 0, 0, 0, 11, 0, 0);

INSERT INTO `mob_skill_lists` VALUES ('TRUST_Lion_II',1124,2891);
INSERT INTO `mob_skill_lists` VALUES ('TRUST_Lion_II',1124,2892);
INSERT INTO `mob_skill_lists` VALUES ('TRUST_Lion_II',1124,2893);
INSERT INTO `mob_skill_lists` VALUES ('TRUST_Lion_II',1124,2894);

--
-- Bart / Tenzen II
--
INSERT INTO `mob_skill_lists` VALUES ('TRUST_Tenzen_II', 1129, 1397);

--
-- General / Iroha I & II
--
INSERT INTO mob_skill_lists VALUES ('TRUST_Iroha', 1112, 3732);
INSERT INTO mob_skill_lists VALUES ('TRUST_Iroha', 1112, 3733);
INSERT INTO mob_skill_lists VALUES ('TRUST_Iroha', 1112, 3734);
INSERT INTO mob_skill_lists VALUES ('TRUST_Iroha', 1112, 3735);
INSERT INTO mob_skill_lists VALUES ('TRUST_Iroha', 1112, 3736);
INSERT INTO mob_skill_lists VALUES ('TRUST_Iroha', 1112, 3737);

INSERT INTO mob_skill_lists VALUES ('TRUST_Iroha_II', 1133, 3732);
INSERT INTO mob_skill_lists VALUES ('TRUST_Iroha_II', 1133, 3733);
INSERT INTO mob_skill_lists VALUES ('TRUST_Iroha_II', 1133, 3734);
INSERT INTO mob_skill_lists VALUES ('TRUST_Iroha_II', 1133, 3735);
INSERT INTO mob_skill_lists VALUES ('TRUST_Iroha_II', 1133, 3736);
INSERT INTO mob_skill_lists VALUES ('TRUST_Iroha_II', 1133, 3737);
INSERT INTO mob_skill_lists VALUES ('TRUST_Iroha_II', 1133, 3738);

INSERT INTO mob_spell_lists VALUES ('TRUST_Iroha', 410, 205, 99, 255);
UPDATE mob_skills SET mob_anim_id = 2541, primary_sc = 11, secondary_sc = 13 WHERE mob_skill_id = 3737;
UPDATE mob_skills SET mob_anim_id = 2540, primary_sc = 7 WHERE mob_skill_id = 3733;
UPDATE mob_skills SET mob_anim_id = 2539, primary_sc = 13, secondary_sc = 12 WHERE mob_skill_id = 3736;
UPDATE mob_skills SET mob_anim_id = 2538, primary_sc = 11 WHERE mob_skill_id = 3735;
UPDATE mob_skills SET mob_anim_id = 2537, primary_sc = 5, secondary_sc = 8 WHERE mob_skill_id = 3734;
UPDATE mob_skills SET mob_anim_id = 2536, primary_sc = 8 WHERE mob_skill_id = 3732;
UPDATE mob_skills SET mob_anim_id = 2564, mob_skill_aoe = 1, mob_skill_distance = 10.0, mob_valid_targets = 3, mob_skill_flag = 128 WHERE mob_skill_id = 3738;

--
-- Bart / Curilla
--
INSERT INTO `mob_skill_lists` (`skill_list_name`, `skill_list_id`, `mob_skill_id`) VALUES ('TRUST_Curilla', 1017, 42);
INSERT INTO `mob_skill_lists` (`skill_list_name`, `skill_list_id`, `mob_skill_id`) VALUES ('TRUST_Curilla', 1017, 45);
INSERT INTO `mob_skill_lists` (`skill_list_name`, `skill_list_id`, `mob_skill_id`) VALUES ('TRUST_Curilla', 1017, 32);

-- 
-- Bart / Ajido
--
INSERT INTO `mob_spell_lists` (`spell_list_name`, `spell_list_id`, `spell_id`, `min_level`, `max_level`) VALUES ('TRUST_Ajido-Marujido', 316, 235, 50, 255);
INSERT INTO `mob_spell_lists` (`spell_list_name`, `spell_list_id`, `spell_id`, `min_level`, `max_level`) VALUES ('TRUST_Ajido-Marujido', 316, 237, 50, 255);
INSERT INTO `mob_spell_lists` (`spell_list_name`, `spell_list_id`, `spell_id`, `min_level`, `max_level`) VALUES ('TRUST_Ajido-Marujido', 316, 239, 50, 255);
-- duplicate below
-- INSERT INTO `mob_spell_lists` (`spell_list_name`, `spell_list_id`, `spell_id`, `min_level`, `max_level`) VALUES ('TRUST_Ajido-Marujido', 316, 260, 64, 255);

--
-- Bart / Trion
--
UPDATE `mob_skills` SET `mob_skill_id`=3193, `mob_anim_id`=669, `mob_skill_name`='royal_bash', `mob_skill_aoe`=2, `mob_skill_distance`=7.0, `mob_anim_time`=2000, `mob_prepare_time`=500, `mob_valid_targets`=4, `mob_skill_flag`=0, `mob_skill_param`=0, `knockback`=0, `primary_sc`=0, `secondary_sc`=0, `tertiary_sc`=0 WHERE `mob_skill_id`=3193;
UPDATE `mob_skills` SET `mob_skill_id`=3194, `mob_anim_id`=670, `mob_skill_name`='royal_savior', `mob_skill_aoe`=1, `mob_skill_distance`=7.0, `mob_anim_time`=2000, `mob_prepare_time`=500, `mob_valid_targets`=1, `mob_skill_flag`=0, `mob_skill_param`=0, `knockback`=0, `primary_sc`=0, `secondary_sc`=0, `tertiary_sc`=0 WHERE `mob_skill_id`=3194;
UPDATE `mob_skill_lists` SET `skill_list_name`='TRUST_Trion', `skill_list_id`=1020, `mob_skill_id`=34 WHERE `skill_list_id`=1020 AND `mob_skill_id`=34;
UPDATE `mob_skill_lists` SET `skill_list_name`='TRUST_Trion', `skill_list_id`=1020, `mob_skill_id`=35 WHERE `skill_list_id`=1020 AND `mob_skill_id`=35;
UPDATE `mob_skill_lists` SET `skill_list_name`='TRUST_Trion', `skill_list_id`=1020, `mob_skill_id`=42 WHERE `skill_list_id`=1020 AND `mob_skill_id`=42;
DELETE FROM mob_skill_lists WHERE skill_list_name = 'TRUST_Trion' AND mob_skill_id=3193;
DELETE FROM mob_skill_lists WHERE skill_list_name = 'TRUST_Trion' AND mob_skill_id=3194;
--
-- Bart / Iron Eater
--

INSERT INTO `mob_skill_lists` (`skill_list_name`, `skill_list_id`, `mob_skill_id`) VALUES ('TRUST_Iron_Eater', 1032, 81);
INSERT INTO `mob_skill_lists` (`skill_list_name`, `skill_list_id`, `mob_skill_id`) VALUES ('TRUST_Iron_Eater', 1032, 82);
INSERT INTO `mob_skill_lists` (`skill_list_name`, `skill_list_id`, `mob_skill_id`) VALUES ('TRUST_Iron_Eater', 1032, 84);
INSERT INTO `mob_skill_lists` (`skill_list_name`, `skill_list_id`, `mob_skill_id`) VALUES ('TRUST_Iron_Eater', 1032, 85);
INSERT INTO `mob_skill_lists` (`skill_list_name`, `skill_list_id`, `mob_skill_id`) VALUES ('TRUST_Iron_Eater', 1032, 86);
INSERT INTO `mob_skill_lists` (`skill_list_name`, `skill_list_id`, `mob_skill_id`) VALUES ('TRUST_Iron_Eater', 1032, 87);
INSERT INTO `mob_skill_lists` (`skill_list_name`, `skill_list_id`, `mob_skill_id`) VALUES ('TRUST_Iron_Eater', 1032, 89);
INSERT INTO `mob_skill_lists` (`skill_list_name`, `skill_list_id`, `mob_skill_id`) VALUES ('TRUST_Iron_Eater', 1032, 90);
INSERT INTO `mob_skill_lists` (`skill_list_name`, `skill_list_id`, `mob_skill_id`) VALUES ('TRUST_Iron_Eater', 1032, 91);
INSERT INTO `mob_skill_lists` (`skill_list_name`, `skill_list_id`, `mob_skill_id`) VALUES ('TRUST_Iron_Eater', 1032, 92);
INSERT INTO `mob_skill_lists` (`skill_list_name`, `skill_list_id`, `mob_skill_id`) VALUES ('TRUST_Iron_Eater', 1032, 93);

--
-- Bart / Semih Lafihna
--
INSERT INTO `mob_skill_lists` (`skill_list_name`, `skill_list_id`, `mob_skill_id`) VALUES ('TRUST_Semih_Lafihna', 1055, 202);
INSERT INTO `mob_skill_lists` (`skill_list_name`, `skill_list_id`, `mob_skill_id`) VALUES ('TRUST_Semih_Lafihna', 1055, 203);

--
-- Bart / Koru
--
INSERT INTO `mob_skill_lists` (`skill_list_name`, `skill_list_id`, `mob_skill_id`) VALUES ('TRUST_Koru-Moru', 1067, 173);

--
-- General / Arciela II
--

INSERT INTO mob_spell_lists VALUES ('TRUST_Arciela_II',426,43,7,255); -- protect
INSERT INTO mob_spell_lists VALUES ('TRUST_Arciela_II',426,44,27,255); -- protect_ii
INSERT INTO mob_spell_lists VALUES ('TRUST_Arciela_II',426,45,47,255); -- protect_iii
INSERT INTO mob_spell_lists VALUES ('TRUST_Arciela_II',426,46,63,255); -- protect_iv
INSERT INTO mob_spell_lists VALUES ('TRUST_Arciela_II',426,47,77,255); -- protect_v
INSERT INTO mob_spell_lists VALUES ('TRUST_Arciela_II',426,48,17,255); -- shell
INSERT INTO mob_spell_lists VALUES ('TRUST_Arciela_II',426,51,68,255); -- shell_iv
INSERT INTO mob_spell_lists VALUES ('TRUST_Arciela_II',426,49,37,255); -- shell_ii
INSERT INTO mob_spell_lists VALUES ('TRUST_Arciela_II',426,50,57,255); -- shell_iii
INSERT INTO mob_spell_lists VALUES ('TRUST_Arciela_II',426,52,76,255); -- shell_v

INSERT INTO mob_skill_lists VALUES ('TRUST_Arciela_II',1132, 2448); -- Ascension
INSERT INTO mob_skill_lists VALUES ('TRUST_Arciela_II',1132, 2449); -- Descension
INSERT INTO mob_skill_lists VALUES ('TRUST_Arciela_II',1132, 2450); -- Expunge Magic
INSERT INTO mob_skill_lists VALUES ('TRUST_Arciela_II',1132, 2451); -- harmonic displacement
INSERT INTO mob_skill_lists VALUES ('TRUST_Arciela_II',1132, 2452); -- sight unseen
INSERT INTO mob_skill_lists VALUES ('TRUST_Arciela_II',1132, 2453); -- darkest hour
INSERT INTO mob_skill_lists VALUES ('TRUST_Arciela_II',1132, 2454); -- unceasing dread
INSERT INTO mob_skill_lists VALUES ('TRUST_Arciela_II',1132, 2455); -- dignified awe
INSERT INTO mob_skill_lists VALUES ('TRUST_Arciela_II',1132, 2456); -- naakuals vengance

UPDATE mob_skills SET mob_anim_id = 2448 WHERE mob_skill_id = 3697; -- Ascension
UPDATE mob_skills SET mob_anim_id = 2449 WHERE mob_skill_id = 3698; -- Descension
UPDATE mob_skills SET mob_anim_id = 2450, primary_sc =  6, secondary_sc =  4 WHERE mob_skill_id = 3699; -- Expunge Magic Disctortion 6 / Scission 4
UPDATE mob_skills SET mob_anim_id = 2451, primary_sc = 11, secondary_sc =  5 WHERE mob_skill_id = 3700; -- harmonic displacement Fusion 11 / Reverberation 5
UPDATE mob_skills SET mob_anim_id = 2452, primary_sc =  9, secondary_sc =  3 WHERE mob_skill_id = 3701; -- sight unseen Gravitation 9 / Liquification 3
UPDATE mob_skills SET mob_anim_id = 2453, primary_sc = 12, secondary_sc =  2 WHERE mob_skill_id = 3702; -- darkest hour Fragmentation 12 / Compression 2
UPDATE mob_skills SET mob_anim_id = 2454 WHERE mob_skill_id = 3703; -- unceasing dread -- adds Paralyze
UPDATE mob_skills SET mob_anim_id = 2455 WHERE mob_skill_id = 3704; -- dignified awe -- Adds Amnesia
UPDATE mob_skills SET mob_anim_id = 2456, primary_sc = 13, secondary_sc = 11 WHERE mob_skill_id = 3705; -- naakuals vengance Light 13 / Fusion 11 -- Recovers Own HP & MP Fully 5 Minute Cool down

--
-- General / Joachim / custom
--

INSERT INTO mob_spell_lists VALUES ('TRUST_Joachim', 323, 394, 99, 255);	-- valor_minuet
INSERT INTO mob_spell_lists VALUES ('TRUST_Joachim', 323, 395, 99, 255);	-- valor_minuet_ii
INSERT INTO mob_spell_lists VALUES ('TRUST_Joachim', 323, 396, 99, 255);	-- valor_minuet_iii
INSERT INTO mob_spell_lists VALUES ('TRUST_Joachim', 323, 397, 99, 255);	-- valor_minuet_iv
INSERT INTO mob_spell_lists VALUES ('TRUST_Joachim', 323, 398, 99, 255);	-- valor_minuet_v
INSERT INTO mob_spell_lists VALUES ('TRUST_Joachim', 323, 417, 99, 255);	-- honor march
UPDATE spell_list SET name = 'honor_march', jobs = 0x00000000000000000063000000000000000000000000 WHERE spellid = 417;