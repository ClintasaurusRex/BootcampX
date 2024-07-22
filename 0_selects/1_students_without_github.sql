-- Select the columns from the students table
SELECT id, name, email, cohort_id
FROM students
-- Filter for the students who dont have github account linked
WHERE github is NULL
--  Sort the results by the cohort_id in ascending order
ORDER BY cohort_id;