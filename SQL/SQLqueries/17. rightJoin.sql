-- Returns all rows from the right table (addresses),
-- and matching rows from the left table (users).
-- If no match is found, NULLs are returned.

SELECT users.name, addresses.city
FROM users
RIGHT JOIN addresses ON users.id = addresses.user_id;

-- Output:
-- name	city
-- Aarav	Mumbai
-- Sneha	Kolkata
-- NULL	Delhi