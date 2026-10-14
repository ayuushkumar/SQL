-- 1. Disabling AutoCommit
-- When AutoCommit is off, you can explicitly control when to commit or rollback changes.

-- To disable AutoCommit:
SET autocommit = 0;

-- ⚠️ Note: Until you execute a COMMIT, your changes are not permanent.

-- ======================================================================================
-- 2. COMMIT — Save Changes to the Database

-- To commit a transaction:
COMMIT;

-- ======================================================================================
-- 3. ROLLBACK — Revert Changes to the Last Safe Point

-- To rollback a transaction:
ROLLBACK;

-- ======================================================================================
-- 4. Enabling AutoCommit Again
SET autocommit = 1;

-- ======================================================================================
-- Example Workflow
-- Here’s a simple example of using COMMIT and ROLLBACK in a transaction:

--Turn off AutoCommit:
SET autocommit = 0;

-- Make some changes (e.g., updating a salary):
UPDATE users SET salary = 80000 WHERE id = 5;

-- Decide whether to commit or rollback:
-- If you’re happy with the changes, run:
COMMIT;

-- If you’re not happy and want to revert the changes, run:
ROLLBACK;