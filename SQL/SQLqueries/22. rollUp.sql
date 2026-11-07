-- To get subtotals and grand totals, you can use ROLLUP:

SELECT gender, COUNT(*) AS total_users
FROM users
GROUP BY gender WITH ROLLUP;

-- Explanation:
-- This will give you a count of users by gender, along with a grand total for all users.