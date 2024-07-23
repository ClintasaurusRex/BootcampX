-- An INNER JOIN will only give us rows where there is a match between the two tables. Any students with a cohort_id of NULL will not appear in the results of this kind of join.
-- Most of the time, like 99% of the time, we want to use an INNER JOIN. With a query like this, where we're getting a list of students and their cohort names, we probably don't want to include any students without a cohort. However, there are times when we do want to include data where there isn't a match. In these cases, we have to use an OUTER JOIN.

-- This query performs an INNER JOIN between the students and cohorts tables
-- to retrieve information about students and their associated cohorts.

SELECT
    students.name as student_name,  -- Select the student's name and alias it as student_name
    email,                          -- Select the student's email
    cohorts.name as cohort_name     -- Select the cohort's name and alias it as cohort_name
FROM
    students                        -- Start with the students table
INNER JOIN
    cohorts                         -- Join with the cohorts table
ON
    cohorts.id = cohort_id;         -- Join condition: match cohorts.id with students.cohort_id


-- How it works:
-- 1. The INNER JOIN conbines the rows from both tables
-- 2. Only the students with a valid cohort_id that match an id in the cohorts table will be included
-- 3. The ON clause specifies the join condition, linking the tables

-- Why its structured this way:
-- 1. INNER JOIN ensures we only get data for students who are in the cohort
-- 2. Aliasing (AS) is used to provide clear, descriptive column names in the result set.
-- 3. Selecting specific columns (names,email,cohort name) gives us the info we need.

-- What we're doing:
-- 1. Retieving a list of students along with their email and name of their cohort
-- 2. Excluding any students who dont have a cohort (cohort_id is null)