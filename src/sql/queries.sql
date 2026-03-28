-- PLEASE READ THIS BEFORE RUNNING THE EXERCISE

-- ⚠️ IMPORTANT: This SQL file may crash due to two common issues: comments and missing semicolons.

-- ✅ Suggestions:
-- 1) Always end each SQL query with a semicolon `;`
-- 2) Ensure comments are well-formed:
--    - Use `--` for single-line comments only
--    - Avoid inline comments after queries
--    - Do not use `/* */` multi-line comments, as they may break execution

-- -----------------------------------------------
-- queries.sql
-- Complete each mission by writing your SQL query
-- directly below the corresponding instruction
-- -----------------------------------------------

SELECT * FROM regions;
SELECT * FROM species;
SELECT * FROM climate;
SELECT * FROM observations;


-- MISSION 1
-- Your query here;
 1
SELECT * FROM observations
LIMIT 10;

 2
SELECT DISTINCT region_id FROM observations;

 3
SELECT COUNT(DISTINCT species_id) FROM observations;

 4
SELECT COUNT(*) FROM observations WHERE region_id = 2;

 5
SELECT COUNT(*) FROM observations WHERE observation_date = '1998-08-08';

-- MISSION 2
-- Your query here;
 6
SELECT region_id, COUNT(*) AS total
FROM observations
GROUP BY region_id
ORDER BY total DESC
LIMIT 1;
 7
SELECT species_id, COUNT(*) AS total
FROM observations
GROUP BY species_id
ORDER BY total DESC
LIMIT 5;

 8
SELECT species_id, COUNT(*) AS total
FROM observations
GROUP BY species_id
HAVING COUNT(*) < 5;

 9
SELECT observer, COUNT(*) AS total
FROM observations
GROUP BY observer
ORDER BY total DESC;

-- MISSION 3
-- Your query here;
10
SELECT observations.*, regions.name
FROM observations
JOIN regions ON observations.region_id = regions.id;

11
SELECT observations.*, species.scientific_name
FROM observations
JOIN species ON observations.species_id = species.id;

12
SELECT observations.region_id, observations.species_id, COUNT(*) AS total
FROM observations
GROUP BY observations.region_id, observations.species_id
ORDER BY total DESC;


-- MISSION 4
-- Your query here;


-- MISSION 5
-- Your query here;


-- MISSION 6
-- Your query here;


-- MISSION 7
-- Your query here;


-- MISSION 8
-- Your query here;
