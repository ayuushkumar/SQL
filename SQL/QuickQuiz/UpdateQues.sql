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
