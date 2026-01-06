-- Age invariant violation
INSERT INTO users (user_id, name, email, age)
VALUES (10, 'InvalidAge', 'age@test.com', 200);

-- Name invariant violation
INSERT INTO users (user_id, name, email, age)
VALUES (11, NULL, 'null@test.com', 30);

-- Email uniqueness violation
INSERT INTO users (user_id, name, email, age)
VALUES (12, 'Duplicate', 'alice@test.com', 22);
