-- select the columsn from student table
SELECT name, id, cohort_id
-- specify the table to query
FROM students
-- filter the students missing contact info
WHERE email IS NULL OR phone IS NULL;