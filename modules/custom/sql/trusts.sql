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
INSERT INTO `mob_spell_lists` (`spell_list_name`, `spell_list_id`, `spell_id`, `min_level`, `max_level`) VALUES ('TRUST_Ajido-Marujido', 316, 260, 64, 255);

--
-- Bart / Trion
--
UPDATE `mob_skills` SET `mob_skill_id`=3193, `mob_anim_id`=669, `mob_skill_name`='royal_bash', `mob_skill_aoe`=2, `mob_skill_distance`=7.0, `mob_anim_time`=2000, `mob_prepare_time`=500, `mob_valid_targets`=4, `mob_skill_flag`=0, `mob_skill_param`=0, `knockback`=0, `primary_sc`=0, `secondary_sc`=0, `tertiary_sc`=0 WHERE `mob_skill_id`=3193;
UPDATE `mob_skills` SET `mob_skill_id`=3194, `mob_anim_id`=670, `mob_skill_name`='royal_savior', `mob_skill_aoe`=1, `mob_skill_distance`=7.0, `mob_anim_time`=2000, `mob_prepare_time`=500, `mob_valid_targets`=1, `mob_skill_flag`=0, `mob_skill_param`=0, `knockback`=0, `primary_sc`=0, `secondary_sc`=0, `tertiary_sc`=0 WHERE `mob_skill_id`=3194;
UPDATE `mob_skill_lists` SET `skill_list_name`='TRUST_Trion', `skill_list_id`=1020, `mob_skill_id`=34 WHERE `skill_list_id`=1020 AND `mob_skill_id`=34;
UPDATE `mob_skill_lists` SET `skill_list_name`='TRUST_Trion', `skill_list_id`=1020, `mob_skill_id`=35 WHERE `skill_list_id`=1020 AND `mob_skill_id`=35;
UPDATE `mob_skill_lists` SET `skill_list_name`='TRUST_Trion', `skill_list_id`=1020, `mob_skill_id`=42 WHERE `skill_list_id`=1020 AND `mob_skill_id`=42;
UPDATE `mob_skill_lists` DELETE `skill_list_name`='TRUST_Trion', `skill_list_id`=1020, `mob_skill_id`=3193 WHERE `skill_list_id`=1020 AND `mob_skill_id`=3193;
UPDATE `mob_skill_lists` DELETE `skill_list_name`='TRUST_Trion', `skill_list_id`=1020, `mob_skill_id`=3194 WHERE `skill_list_id`=1020 AND `mob_skill_id`=3194;

