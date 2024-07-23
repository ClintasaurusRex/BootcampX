-- Select specific columns from students and cohorts tables
SELECT students.name as student_name, email, cohorts.name as cohort_name
FROM students
-- Perform a LEFT JOIN to include all students, even if they don't have a cohort
LEFT JOIN cohorts ON cohorts.id = cohort_id;

-- This query will:
-- 1. Return all students, including those without a cohort
-- 2. Display the student's name (aliased as student_name)
-- 3. Show the student's email
-- 4. Include the cohort name (aliased as cohort_name) if available, or NULL if not
-- The LEFT JOIN ensures that all students are included in the result, even if they don't have a matching cohort
