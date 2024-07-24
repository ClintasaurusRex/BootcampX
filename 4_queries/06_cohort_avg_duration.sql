SELECT cohorts.name AS cohort,
  AVG(completed_at - started_at) AS avg_assistance_duration
FROM assistance_requests
JOIN students ON students.id = student_id
JOIN cohorts ON cohorts.id = students.cohort_id
GROUP BY cohorts.name
ORDER BY avg_assistance_duration;

--1. select assistance request
-- SELECT cohorts.name AS cohort
-- FROM assistance_requests;

--2.JOIN with students and cohorts otherwise error
-- SELECT cohorts.name AS cohort
-- FROM assistance_requests
-- JOIN students ON students.id = assistance_requests.student_id;

--3.avg duration calculation
-- SELECT cohorts.name AS cohort,
--        AVG(completed_at - started_at) AS average_assistance_time
-- FROM assistance_requests
-- JOIN students ON students.id = assistance_requests.student_id
-- JOIN cohorts ON cohorts.id = students.cohort_id;

--4.GROUP BY clause
-- SELECT cohorts.name AS cohort,
--        AVG(completed_at - started_at) AS average_assistance_time
-- FROM assistance_requests
-- JOIN students ON students.id = assistance_requests.student_id
-- JOIN cohorts ON cohorts.id = students.cohort_id
-- GROUP BY cohorts.name;

-- step five is the final code above