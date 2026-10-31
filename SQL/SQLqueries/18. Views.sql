-- Creating a View
-- Suppose we want a view that lists all users earning more than ₹70,000.

CREATE VIEW high_salary_users AS
SELECT id, name, salary
FROM users
WHERE salary > 70000;

-- ======================================================================================

-- Querying the View

SELECT * FROM high_salary_users;

-- This will return all users from the users table where salary is above ₹70,000.

-- =====================================================================================

-- Let’s see what happens when the underlying data changes.
-- Step 1: View before update

SELECT * FROM high_salary_users;

-- Output:
-- id	name	salary
-- 2	Sneha	75000
-- 5	Fatima	80000

-- Step 2: Update a user's salary

UPDATE users
SET salary = 72000
WHERE name = 'Raj';

-- Step 3: Query the view again
SELECT * FROM high_salary_users;

-- New Output:
--
-- id	name	salary
-- 2	Sneha	75000
-- 5	Fatima	80000
-- 3	Raj	72000

-- ===================================================================================

-- Dropping a View
DROP VIEW high_salary_users;