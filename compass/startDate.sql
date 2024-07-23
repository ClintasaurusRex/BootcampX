-- Select specific columns from students and cohorts tables
SELECT students.name, cohorts.name, cohorts.start_date as cohort_start_date, students.start_date as student_start_date

FROM students
JOIN cohorts ON cohort_id = cohorts.id
-- Filter for students whose start date doesn't match their cohort's start date
WHERE cohorts.start_date != students.start_date
-- Sort the results by the cohort's start date
ORDER BY cohort_start_date;

-- This query does the following:
-- 1. Joins the students and cohorts tables using the cohort_id foreign key
-- 2. Selects the student's name, cohort name, cohort start date, and student start date
-- 3. Filters for cases where the student's start date differs from their cohort's start date
-- 4. Orders the results by the cohort's start date

-- The purpose of this query is to identify students who started on a different date
-- than their assigned cohort, which could indicate transfers or special circumstances.
-- This information can be useful for administrative purposes or to track non-standard enrollments.
