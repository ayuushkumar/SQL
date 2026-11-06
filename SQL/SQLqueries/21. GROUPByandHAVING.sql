-- GROUP BY Example: Average Salary by Gender
SELECT gender, AVG(salary) AS average_salary
FROM users
GROUP BY gender;

-- Explanation:
-- This groups users by gender.
-- Then calculates the average salary for each group.

--===============================================================================

-- GROUP BY with COUNT
-- Find how many users were referred by each user:

SELECT referred_by_id, COUNT(*) AS total_referred
FROM users
WHERE referred_by_id IS NOT NULL
GROUP BY referred_by_id;

-- Output:
-- referred_by_id	total_referred
-- 1	2
-- 2	1

--=================================================================================

-- HAVING Clause: Filtering Groups
-- Let’s say we only want to show genders where the average salary is greater than ₹75,000.

SELECT gender, AVG(salary) AS avg_salary
FROM users
GROUP BY gender
HAVING AVG(salary) > 75000;

-- Why not WHERE?
-- WHERE is used before grouping.
-- HAVING is used after groups are formed — it's the only way to filter aggregated values.

--====================================================================================

-- Another Example: Groups with More Than 1 Referral
SELECT referred_by_id, COUNT(*) AS total_referred
FROM users
WHERE referred_by_id IS NOT NULL
GROUP BY referred_by_id
HAVING COUNT(*) > 1;