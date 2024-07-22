--  Count the number of students
SELECT COUNT(id)
-- specify which table were querying
FROM students
-- filters for students in first 3 cohorts
WHERE cohort_id IN (1, 2, 3);

-- IN clause explanation
--  IN clause is used to filter results of search
-- tje IN operator allows you to take in multiple values in a WHERE clause