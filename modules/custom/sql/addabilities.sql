UPDATE abilities SET addType = 0 WHERE abilityId = 61;
UPDATE abilities SET addType = 0 WHERE abilityId = 80;
UPDATE abilities SET addType = 0 WHERE abilityId = 87;
UPDATE abilities SET addType = 0 WHERE abilityId = 245;
UPDATE abilities SET addType = 0 WHERE abilityId = 246;
UPDATE abilities SET addType = 0 WHERE abilityId = 247;
UPDATE abilities SET addType = 0 WHERE abilityId = 248;
UPDATE abilities SET addType = 0 WHERE abilityId = 249;
UPDATE abilities SET addType = 0 WHERE abilityId = 276;
UPDATE abilities SET addType = 0 WHERE abilityId = 321;
UPDATE abilities SET addType = 0 WHERE abilityId = 341;

-- Setting all abilities to make sense --
UPDATE abilities SET recastTime = "0" WHERE name = "ignis";
UPDATE abilities SET recastTime = "0" WHERE name = "gelus";
UPDATE abilities SET recastTime = "0" WHERE name = "flabra";
UPDATE abilities SET recastTime = "0" WHERE name = "tellus";
UPDATE abilities SET recastTime = "0" WHERE name = "sulpor";
UPDATE abilities SET recastTime = "0" WHERE name = "unda";
UPDATE abilities SET recastTime = "0" WHERE name = "lux";
UPDATE abilities SET recastTime = "0" WHERE name = "tenebrae";
