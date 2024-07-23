-- Select specific columns from the students and cohorts tables
-- Alias the student name as 'student_name' and cohort name as 'cohort_name' for clarity
SELECT students.name as student_name, email, cohorts.name as cohort_name
-- Specify the main table to select from (students)
FROM students
-- Perform an INNER JOIN with the cohorts table
-- This joins only the rows where there's a match between students.cohort_id and cohorts.id
INNER JOIN cohorts ON cohorts.id = cohort_id;
