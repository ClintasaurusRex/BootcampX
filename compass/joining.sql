-- It's easy for us to use this relationship to see that Armand Hilll was in the FEB12 cohort. But the database doesn't know that we want to JOIN the tables using these columns. We must explicitly tell the database to join these two tables using the cohort_id from students and the id from cohorts. We do this with the ON keyword.

-- We name the columns on each table and how they link together.
-- This query joins the students and cohorts tables to get student and cohort information together

-- Select the columns we want to display in our result
SELECT
  students.name as student_name, -- Rename students.name to student_name for clarity
  email,                         -- Email from the students table
  cohorts.name as cohort_name    -- Rename cohorts.name to cohort_name for clarity

-- Specify the main table we're querying from
FROM cohorts

-- Join the students table to the cohorts table
JOIN students ON cohort_id = cohorts.id;
-- This JOIN clause specifies how the two tables are related:
-- The cohort_id in the students table corresponds to the id in the cohorts table

-- This query works because:
-- 1. It combines data from two related tables (students and cohorts)
-- 2. It uses the relationship between cohort_id and id to match records
-- 3. It selects specific columns from both tables to display relevant information
-- 4. It renames some columns (using 'as') to make the output more readable
