-- 1. Aggregate Functions
-- These return a single value from a set of rows.

-- =========================================================================
-- COUNT()

-- Count total number of users:
SELECT COUNT(*) FROM users;

-- Count users who are Female:
SELECT COUNT(*) FROM users WHERE gender = 'Female';

-- =========================================================================
-- MIN() and MAX()

-- Get the minimum and maximum salary:
SELECT MIN(salary) AS min_salary, MAX(salary) AS max_salary FROM users;

-- =========================================================================
-- SUM()

-- Calculate total salary payout:
SELECT SUM(salary) AS total_payroll FROM users;

-- =========================================================================
-- AVG()

-- Find average salary:
SELECT AVG(salary) AS avg_salary FROM users;

-- =========================================================================
-- GROUP BY

-- Average salary by gender:
SELECT gender, AVG(salary) AS avg_salary
FROM users
GROUP BY gender;

-- users table
+----+--------+--------+--------+
| id | name   | gender | salary |
+----+--------+--------+--------+
| 1  | Rahul  | Male   | 60000  |
| 2  | Ayush  | Male   | 80000  |
| 3  | Priya  | Female | 50000  |
| 4  | Neha   | Female | 70000  |
| 5  | Ravi   | Other  | 40000  |
+----+--------+--------+--------+

-- Result:
+--------+------------+
| gender | avg_salary |
+--------+------------+
| Male   | 70000      |
| Female | 60000      |
| Other  | 40000      |
+--------+------------+

-- =========================================================================


