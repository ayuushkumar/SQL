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
-- =========================================================================
-- 2. String Functions

-- LENGTH()
-- Length of user names:
SELECT name, LENGTH(name) AS name_length FROM users;

-- =========================================================================
-- LOWER() and UPPER()
-- Convert names to lowercase or uppercase:
SELECT name, LOWER(name) AS lowercase_name FROM users;
SELECT name, UPPER(name) AS uppercase_name FROM users;

-- =========================================================================
-- CONCAT()
-- Combine name and email:
SELECT CONCAT(name, ' <', email, '>') AS user_contact FROM users;

-- =========================================================================
-- =========================================================================
-- 3. Date Functions

-- NOW()
-- Current date and time:
SELECT NOW();

-- =========================================================================
-- YEAR(), MONTH(), DAY()
-- Extract parts of date_of_birth:
SELECT name, YEAR(date_of_birth) AS birth_year FROM users;

-- =========================================================================
-- DATEDIFF()
-- Find number of days between today and birthdate:
SELECT name, DATEDIFF(CURDATE(), date_of_birth) AS days_lived FROM users;

-- =========================================================================
-- TIMESTAMPDIFF()
-- Calculate age in years:
SELECT name, TIMESTAMPDIFF(YEAR, date_of_birth, CURDATE()) AS age FROM users;

-- =========================================================================
-- =========================================================================
-- 4. Mathematical Functions
-- ROUND(), FLOOR(), CEIL()
SELECT salary,
       ROUND(salary) AS rounded,
       FLOOR(salary) AS floored,
       CEIL(salary) AS ceiled
FROM users;

-- =========================================================================
-- MOD()
-- Find even or odd user IDs:
SELECT id, MOD(id, 2) AS remainder FROM users;

-- =========================================================================
