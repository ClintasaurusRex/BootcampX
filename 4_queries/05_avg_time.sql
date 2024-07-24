SELECT AVG(completed_at - started_at) AS avg_assistance_duration
FROM assistance_requests;

--1. select start and end times
--SELECT started_at, completed_at
-- FROM assistance_requests;

-- 2. calculate duration
-- SELECT completed_at - started_at AS duration
-- FROM assistance_requests;

-- 3. seen above is the average duration
-- \d assistance_requests to see the table