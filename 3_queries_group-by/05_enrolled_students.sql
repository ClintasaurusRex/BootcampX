-- Get currently enrooled students average assignment completion time
-- Select the students name and average time from assignment submissions
-- Order the results from greatest duration to least greatest
-- A student will have a null end_date if they are currently enrolled

-- 1 start basic
SELECT students.name AS student, AVG(assignment_submissions.duration) AS average_assignment_duration
FROM students
-- 2 add the join with assignments_submissions
JOIN assignment_submissions ON students.id = assignment_submissions.student_id
-- 3 add a where clause to filter for currently enrolled students
WHERE students.end_date IS NULL
--4  Add the AVR calc and group by
GROUP BY students.name
-- 5 add the order by clause
ORDER BY average_assignment_duration DESC;