-- Select the name of the student, their average completion time and avg suggested completion time
-- Order by average completion time from smallest to largest
-- Only get currently enrolled students
-- this will require students, assignment_submissions and assignments

-- Select students who, on average, complete assignments faster than the estimated duration
SELECT
  students.name as student,
  avg(assignment_submissions.duration) as average_assignment_duration,
  avg(assignments.duration) as average_estimated_duration
FROM students
-- Join with assignment_submissions to get student's submitted assignments
JOIN assignment_submissions ON student_id = students.id
-- Join with assignments to get the estimated duration for each assignment
JOIN assignments ON assignments.id = assignment_id
-- Filter for currently enrolled students (those without an end date)
WHERE end_date IS NULL
-- Group results by student name
GROUP BY student
-- Only include students whose average completion time is less than the average estimated time
HAVING avg(assignment_submissions.duration) < avg(assignments.duration)
-- Order results by average assignment duration, from shortest to longest
ORDER BY average_assignment_duration;
