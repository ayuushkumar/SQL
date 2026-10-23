-- Returns only the matching rows from both tables.

-- users table:
-- id	name
-- 1	Aarav
-- 2	Sneha
-- 3	Raj

-- addresses table:
-- id	user_id	    city
-- 1	1	        Mumbai
-- 2	2	        Kolkata
-- 3	4	        Delhi


SELECT users.name, addresses.city
FROM users
INNER JOIN addresses ON users.id = addresses.user_id;

-- Output:
-- name	city
-- Aarav	Mumbai
-- Sneha	Kolkata