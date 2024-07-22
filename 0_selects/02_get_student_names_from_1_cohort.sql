-- Select the id and name columns from the student table
SELECT id, name
-- Specify the table we're querying
FROM students
-- Filter the results to only include students from cohort 1
WHERE cohort_id = 1
--  Sort the students alphabetically by name
ORDER BY name;