--               Skill Chain Update
UPDATE mob_skills SET primary_sc = 4, secondary_sc = 6  WHERE mob_skill_name = 'debonair_rush';
UPDATE mob_skills SET primary_sc = 9, secondary_sc = 5  WHERE mob_skill_name = 'lunar_revolution';
UPDATE mob_skills SET primary_sc = 13, secondary_sc = 12  WHERE mob_skill_name = 'iridal_pierce';
--
UPDATE spell_list SET AOE = 1  WHERE name = 'meteor';
UPDATE spell_list SET AOE = 1  WHERE name = 'meteor_ii';