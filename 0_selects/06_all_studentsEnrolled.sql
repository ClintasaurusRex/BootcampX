-- Get all the students enrolled(name, id, cohort id)
-- order them by cohort_id
SELECT name, id, cohort_id
-- specify the table to query
FROM students
-- filter for currently enrolled students
WHERE end_date IS NULL
-- Order results by the cohort id
ORDER BY cohort_id;