-- The UPDATE statement is used to change values in one or more rows.

-- syntax
UPDATE table_name
SET column1 = value1, column2 = value2
WHERE condition;

-- Update One Column
UPDATE users
SET name = 'Ayush'
WHERE id = 1;

-- Update Multiple Columns
UPDATE users
SET name = 'Rohit', email = 'rohit@example.com'
WHERE id = 2;

-- Without WHERE Clause
UPDATE users
SET gender = 'Male'; -- ⚠️ This updates every row in the table.
