-- Select the cohort name and count the total submisions
SELECT cohorts.name as cohort, COUNT(assignment_submissions.*) as total_submissions
-- Start with the cohorts table
FROM cohorts
-- Join with the stdents table to connect cohorts to students
JOIN students ON cohorts.id = students.cohort_id
-- Jon with the assignment_submissions table to connect students to their submissions
JOIN assignment_submissions ON students.id = assignment_submissions.student_id
-- Group the result by cohort name to get totals for each cohort
GROUP BY cohorts.name
-- Order the results by total submissions in descending order
ORDER BY total_submissions DESC;
