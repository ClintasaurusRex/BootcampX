-- This is the same query as before but INNER has been replaced with OUTER.
-- there are 3 different types of OUTER JOIN and we need to specify which one we want to perform: LEFT, RIGHT, or FULL.

-- The LEFT OUTER JOIN will return all of the students, even ones without a cohort_id.
SELECT students.name as student_name, email, cohorts.name as cohort_name
FROM students LEFT OUTER JOIN cohorts ON cohorts.id = cohort_id;

-- The RIGHT OUTER JOIN will return all cohorts, even ones without any students enrolled
SELECT students.name as student_name, email, cohorts.name as cohort_name
FROM students RIGHT OUTER JOIN cohorts ON cohorts.id = cohort_id;

-- The FULL OUTER JOIN will return all cohorts and all students, even when there is no match.
SELECT students.name as student_name, email, cohorts.name as cohort_name
FROM students FULL OUTER JOIN cohorts ON cohorts.id = cohort_id;

-- When we write a LEFT OUTER JOIN or a RIGHT OUTER JOIN, we can omit the word OUTER. In the rest of our examples, we will omit the OUTER keyword.

1. FROM students LEFT JOIN cohorts ON cohorts.id = cohort_id;
2. FROM cohorts RIGHT JOIN students ON cohorts.id = cohort_id;
