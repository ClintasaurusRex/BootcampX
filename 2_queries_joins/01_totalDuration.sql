-- Calculate the total duration of all assignment submissions for a specific student
SELECT sum(assignment_submissions.duration) as total_duration
FROM assignment_submissions
JOIN students ON students.id = student_id
WHERE students.name = 'Ibrahim Schimmel';

-- Step 1: Start with the assignment_submissions table
-- Step 2: Join the students table to get access to student names
-- Step 3: Filter the results to only include the specific student 'Ibrahim Schimmel'
-- Step 4: Sum up the duration column from assignment_submissions
-- Step 5: Alias the sum result as 'total_duration' for clarity in the output
