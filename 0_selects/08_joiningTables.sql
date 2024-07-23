SELECT students.name as student_name, email, cohorts.name as cohort_name
FROM cohorts JOIN students ON cohort_id = cohorts.id;

-- Explanation:
-- 1. were using 3 columns: student name, email and cohort name
-- 2.we're using alias(student_name, cohort_name) to make output more readable
-- 3.The main table we're quering from is cohorts
-- 4.We're joining the students table to the cohorts table
-- 5.The join condition is that the cohort_id in students matches id in cohorts
-- 6.This query will return a list of students with emails and name of the cohort