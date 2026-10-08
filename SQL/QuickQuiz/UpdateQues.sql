-- Ques 1
-- Update the salary of user with id = 5 to ₹70,000.
-- ===================================================================
UPDATE users
SET salary = 70000
WHERE id = 5;
+----+--------+--------+
| id | name   | salary |
+----+--------+--------+
| 1  | Rahul  | 70000  |
| 2  | Ayush  | 90000  |
| 3  | Ravi   | 50000  |
| 4  | Karan  | 80000  |
| 5  | Raj    | 60000  |
+----+--------+--------+

-- Output
+----+--------+--------+
| id | name   | salary |
+----+--------+--------+
| 1  | Rahul  | 70000  |
| 2  | Ayush  | 90000  |
| 3  | Ravi   | 50000  |
| 4  | Karan  | 80000  |
| 5  | Raj    | 70000  |
+----+--------+--------+

-- =========================================================================
-- Ques 2
-- Change the name of the user with email karan@example.com to Karan Kumar.
-- =========================================================================
UPDATE users
SET name = 'Karan Kumar'
WHERE email = 'karan@example.com';

-- Before
+----+--------+-------------------+
| id | name   | email             |
+----+--------+-------------------+
| 1  | Rahul  | rahul@example.com |
| 2  | Ayush  | ayush@example.com |
| 3  | Karan  | karan@example.com |
+----+--------+-------------------+

-- After
+----+-------------+-------------------+
| id | name        | email             |
+----+-------------+-------------------+
| 1  | Rahul       | rahul@example.com |
| 2  | Ayush       | ayush@example.com |
| 3  | Karan Kumar | karan@example.com |
+----+-------------+-------------------+

-- ============================================================================
-- Ques 3
-- Increase salary by ₹10,000 for all users whose salary is less than ₹60,000.
-- ============================================================================
UPDATE users
SET salary = salary + 10000
WHERE salary < 60000;

-- Before
+----+--------+--------+
| id | name   | salary |
+----+--------+--------+
| 1  | Rahul  | 70000  |
| 2  | Ayush  | 90000  |
| 3  | Ravi   | 50000  |
| 4  | Karan  | 80000  |
| 5  | Raj    | 55000  |
+----+--------+--------+

-- After
+----+--------+--------+
| id | name   | salary |
+----+--------+--------+
| 1  | Rahul  | 70000  |
| 2  | Ayush  | 90000  |
| 3  | Ravi   | 60000  |
| 4  | Karan  | 80000  |
| 5  | Raj    | 65000  |
+----+--------+--------+

-- ============================================================================
-- Ques 4
-- Set the gender of user Ravi to Other.
-- ============================================================================
UPDATE users
SET gender = 'Other'
WHERE name = 'Ravi';

-- Before
+----+-------+--------+
| id | name  | gender |
+----+-------+--------+
| 1  | Rahul | Male   |
| 2  | Ayush | Male   |
| 3  | Ravi  | Male   |
| 4  | Karan | Male   |
+----+-------+--------+

-- After
+----+-------+--------+
| id | name  | gender |
+----+-------+--------+
| 1  | Rahul | Male   |
| 2  | Ayush | Male   |
| 3  | Ravi  | Other  |
| 4  | Karan | Male   |
+----+-------+--------+

-- ============================================================================
-- Ques 4
-- Reset salary of all users to ₹50,000
-- ============================================================================
UPDATE users
SET salary = 50000;

-- Before
+----+--------+--------+
| id | name   | salary |
+----+--------+--------+
| 1  | Rahul  | 70000  |
| 2  | Ayush  | 90000  |
| 3  | Ravi   | 50000  |
| 4  | Karan  | 80000  |
+----+--------+--------+

-- After
+----+--------+--------+
| id | name   | salary |
+----+--------+--------+
| 1  | Rahul  | 50000  |
| 2  | Ayush  | 50000  |
| 3  | Ravi   | 50000  |
| 4  | Karan  | 50000  |
+----+--------+--------+