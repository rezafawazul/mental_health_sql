-- Step 1: Preview first 10 rows
SELECT *
FROM survey
LIMIT 10;

-- Step 2: Count total responses
SELECT COUNT(*) AS total_responses
FROM survey;

-- Step 3: Filter: US participants under age 30
SELECT *
FROM survey
WHERE Country = 'United States'
  AND Age < 30
LIMIT 10;

-- Step 4: Number of participants by country
SELECT Country, COUNT(*) AS num_participants
FROM survey
GROUP BY Country
ORDER BY num_participants DESC;

-- Step 5: Average age per country
SELECT Country, AVG(Age) AS avg_age
FROM survey
WHERE Age > 0
GROUP BY Country
ORDER BY avg_age DESC;

-- Step 6: Gender distribution
SELECT Gender, COUNT(*) AS total_by_gender
FROM survey
GROUP BY Gender
ORDER BY total_by_gender DESC;

-- Step 7: Do companies provide mental health benefits?
SELECT benefits, COUNT(*) AS count
FROM survey
GROUP BY benefits;

-- Step 8: Work interference due to mental health (US only)
SELECT work_interfere, COUNT(*) AS total
FROM survey
WHERE Country = 'United States'
GROUP BY work_interfere
ORDER BY total DESC;
