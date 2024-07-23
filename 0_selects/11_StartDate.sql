-- Select specific columns from students and cohorts tables
SELECT students.name, cohorts.name, cohorts.start_date as cohort_start_date, students.start_date as student_start_date

FROM students
JOIN cohorts ON cohort_id = cohorts.id
-- Filter for students whose start date doesn't match their cohort's start date
WHERE cohorts.start_date != students.start_date
-- Sort the results by the cohort's start date
ORDER BY cohort_start_date;
