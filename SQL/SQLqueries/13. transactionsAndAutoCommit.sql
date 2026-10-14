-- 1. Disabling AutoCommit
-- When AutoCommit is off, you can explicitly control when to commit or rollback changes.

-- To disable AutoCommit:
SET autocommit = 0;

-- ⚠️ Note: Until you execute a COMMIT, your changes are not permanent.

