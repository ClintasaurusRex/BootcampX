SELECT
  day, COUNT(*) AS number_of_assignments,
  SUM(duration) AS total_duration
FROM assignments
GROUP BY day
ORDER BY day;


--1. select the day
-- SELECT day
-- FROM assignments;

-- 2. add the count of assignments for each day
-- SELECT
--   day,
--   COUNT(*) AS number_of_assignments
-- FROM assignments
-- GROUP BY day;

-- 3. add the total duration of assignments for eachday
-- SELECT
--   day,
--   COUNT(*) AS number_of_assignments,
--   SUM(duration) AS total_duration
-- FROM assignments
-- GROUP BY day;

-- 4. order the results by day(final)
