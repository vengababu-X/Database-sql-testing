-- I1: Age domain violations
SELECT * FROM users
WHERE age < 0 OR age > 120;

-- I2: Email uniqueness violations
SELECT email, COUNT(*)
FROM users
WHERE email IS NOT NULL
GROUP BY email
HAVING COUNT(*) > 1;

-- I3: Name null violations
SELECT * FROM users
WHERE name IS NULL;

-- I4: Missing timestamp violations
SELECT * FROM users
WHERE created_at IS NULL;
