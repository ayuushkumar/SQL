-- Ques 1
-- What does the following queries do?
DELETE FROM users
WHERE salary < 50000;
--=================================================================================
-- It deletes all users whose salary is less than 50,000 from the users table.

-- Before
+----+--------+--------+
| id | name   | salary |
+----+--------+--------+
| 1  | Rahul  | 70000  |
| 2  | Ayush  | 40000  |
| 3  | Ravi   | 30000  |
| 4  | Karan  | 80000  |
| 5  | Raj    | 50000  |
+----+--------+--------+

-- After
+----+--------+--------+
| id | name   | salary |
+----+--------+--------+
| 1  | Rahul  | 70000  |
| 4  | Karan  | 80000  |
| 5  | Raj    | 50000  |
+----+--------+--------+

--==========================================================================
-- Ques 2
-- What does the following queries do?
DELETE FROM users
WHERE salary IS NULL;
--==========================================================================
--It deletes all users whose salary is NULL
-- (meaning their salary value is missing or unknown).

-- Before
+----+--------+--------+
| id | name   | salary |
+----+--------+--------+
| 1  | Rahul  | 70000  |
| 2  | Ayush  | NULL   |
| 3  | Ravi   | 50000  |
| 4  | Karan  | NULL   |
| 5  | Raj    | 60000  |
+----+--------+--------+

-- After
+----+--------+--------+
| id | name   | salary |
+----+--------+--------+
| 1  | Rahul  | 70000  |
| 3  | Ravi   | 50000  |
| 5  | Raj    | 60000  |
+----+--------+--------+