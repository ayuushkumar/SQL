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
