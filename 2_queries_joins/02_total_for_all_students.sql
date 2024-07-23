-- Get the total time spent on assignments for all students in the FEB12 cohort
SELECT sum(assignment_submissions.duration) as total_duration
FROM assignment_submissions
JOIN students ON students.id = assignment_submissions.student_id
JOIN cohorts ON cohorts.id = students.cohort_id
WHERE cohorts.name = 'FEB12';

-- Step 1: start with the assignment_submissions table
-- This table contains the duration of each assignment submission

-- Step 2: Join with the students table
-- This links each submission to a specific student

-- Step 3: Join with the cohorts table
-- This connects each student to their respective cohort

-- Step 4: Filter for the FEB12 cohort
-- This ensres we only consider students from the FEB12 cohort

-- Step 5: Sum the duration of all filtered submissions
-- This gives us the total time spent by all FEB12 students on assignments

-- The result is a single column total_duration with the total time
