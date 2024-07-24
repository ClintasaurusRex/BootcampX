SELECT cohorts.name AS cohort,
  AVG(completed_at - started_at) AS avg_assistance_duration
FROM assistance_requests
JOIN students ON students.id = student_id
JOIN cohorts ON cohorts.id = students.cohort_id
GROUP BY cohorts.name
ORDER BY avg_assistance_duration DESC
LIMIT 1;