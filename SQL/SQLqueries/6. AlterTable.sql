-- Add a Column
ALTER TABLE users ADD COLUMN is_active BOOLEAN DEFAULT TRUE;

-- Drop a Column
ALTER TABLE users DROP COLUMN is_active;

-- Modify a Column Type
ALTER TABLE users MODIFY COLUMN name VARCHAR(150);

-- To move a column (e.g., email) to the first position
ALTER TABLE users MODIFY COLUMN email VARCHAR(100) FIRST;

-- To move a column after another column (e.g., move gender after name)
ALTER TABLE users MODIFY COLUMN gender ENUM('Male', 'Female', 'Other') AFTER name;