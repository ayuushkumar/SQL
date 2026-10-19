-- We’ll use the following two tables:

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

-- ===================================================================================

-- 1. INNER JOIN
SELECT users.name, addresses.city
FROM users
INNER JOIN addresses ON users.id = addresses.user_id;

-- Output:
-- name	city
-- Aarav	Mumbai
-- Sneha	Kolkata

-- ====================================================================================

-- 2. LEFT JOIN
SELECT users.name, addresses.city
FROM users
LEFT JOIN addresses ON users.id = addresses.user_id;

-- Output:
-- name	city
-- Aarav	Mumbai
-- Sneha	Kolkata
-- Raj	NULL

-- ====================================================================================

-- 3. RIGHT JOIN
SELECT users.name, addresses.city
FROM users
RIGHT JOIN addresses ON users.id = addresses.user_id;

-- Output:
-- name	city
-- Aarav	Mumbai
-- Sneha	Kolkata
-- NULL	Delhi

=====================================================================================
