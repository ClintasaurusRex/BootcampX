-- select assignments table
SELECT day, COUNT(*) AS total_assignments
FROM assignments
GROUP BY day
ORDER BY day;

-- 1. select the day column frm assigments table
-- 2. use count(*) to count the total number of the assignments
-- 3. Group results by day
-- 4. Order results by the day