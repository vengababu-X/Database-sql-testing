-- Validate state after INSERT
SELECT COUNT(*) AS invalid_rows
FROM users
WHERE age < 0 OR age > 120
   OR name IS NULL;

-- Validate state after UPDATE
SELECT COUNT(*) AS invalid_updates
FROM users
WHERE email IS NOT NULL
GROUP BY email
HAVING COUNT(*) > 1;
