-- Get all cohorts with 18 or more students
-- select cohorts.name with total number of students

-- Select the cohort name and count the number of students
SELECT cohorts.name AS cohort_name, COUNT(students.*) AS total_students
FROM cohorts
-- Join the students table to get student information for each cohort
JOIN students ON cohorts.id = students.cohort_id
-- Group the results by cohort name to get totals for each cohort
GROUP BY cohorts.name
-- Filter to only include cohorts with 18 or more students
HAVING COUNT(students.*) >= 18
-- Order the results by the total number of students, ascending
ORDER BY total_students;
