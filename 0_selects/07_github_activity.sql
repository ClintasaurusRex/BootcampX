-- Get all the grads without linked github
-- Select the tables to query
SELECT name, email, phone
-- Specify tables to query
FROM students
-- Filter students missing linked github accounts
WHERE github IS NULL
AND end_date IS NOT NULL;