-- The DELETE statement removes rows from a table.

-- Syntax
DELETE FROM table_name
WHERE condition;

-- Delete One Row
DELETE FROM users
WHERE id = 3;

-- Delete Multiple Rows
DELETE FROM users
WHERE gender = 'Other';

-- Delete All Rows (but keep table structure)
DELETE FROM users;

-- ⚠️ Drop the Entire Table
DROP TABLE users;

-- NOTE :
-- Always use WHERE unless you're intentionally updating/deleting everything.
-- Consider running a SELECT with the same WHERE clause first to confirm what will be affected:
