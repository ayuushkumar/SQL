-- 1. UNIQUE Constraint
-- Ensures that all values in a column are different.
CREATE TABLE users (
    id INT PRIMARY KEY,email VARCHAR(100) UNIQUE);

-- Add UNIQUE using ALTER TABLE:
ALTER TABLE users
    ADD CONSTRAINT unique_email UNIQUE (email);

-- ===============================================================
-- 2. NOT NULL Constraint
-- Ensures that a column cannot contain NULL values.
CREATE TABLE users (
    id INT PRIMARY KEY, name VARCHAR(100) NOT NULL);

-- Change an existing column to NOT NULL:
ALTER TABLE users
    MODIFY COLUMN name VARCHAR(100) NOT NULL;

-- Make a column nullable again:
ALTER TABLE users
    MODIFY COLUMN name VARCHAR(100) NULL;

-- ===============================================================
-- 3. CHECK Constraint
-- Ensures that values in a column satisfy a specific condition.
ALTER TABLE users
    ADD CONSTRAINT chk_dob CHECK (date_of_birth > '2000-01-01');

-- ===============================================================
-- 4. DEFAULT Constraint
-- Sets a default value for a column if none is provided during insert.
CREATE TABLE users (
    id INT PRIMARY KEY, is_active BOOLEAN DEFAULT TRUE);

-- Add DEFAULT using ALTER TABLE:
ALTER TABLE users
    ALTER COLUMN is_active SET DEFAULT TRUE;

-- ===============================================================
-- 5. PRIMARY KEY Constraint
-- Uniquely identifies each row. Must be NOT NULL and UNIQUE.
CREATE TABLE users (
    id INT PRIMARY KEY, name VARCHAR(100));

-- Add later with ALTER TABLE:
ALTER TABLE users
    ADD PRIMARY KEY (id);

-- ===============================================================