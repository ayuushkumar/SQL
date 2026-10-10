-- 1. UNIQUE Constraint
-- Ensures that all values in a column are different.
CREATE TABLE users (
    id INT PRIMARY KEY,email VARCHAR(100) UNIQUE);

-- Add UNIQUE using ALTER TABLE:
ALTER TABLE users
    ADD CONSTRAINT unique_email UNIQUE (email);

-- ===============================================================