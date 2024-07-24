SELECT AVG(started_at - created_at) AS avg_wait
FROM assistance_requests;

-- cpoy from avg_time and \d assistance_requests
-- calculate started and and creteaed at