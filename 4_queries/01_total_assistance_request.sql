-- Select the teachers name and the total assistance requests
SELECT COUNT(assistance_requests.*) AS total_assistances, teachers.name
FROM assistance_requests
JOIN teachers ON teachers.id = teacher_id
WHERE name = 'Waylon Boehm'
GROUP BY teachers.name;

--JOIN teachers ON teachers.id = teacher_id This line joins the teachers table with the assistance_requests table. It connects the two tables based on matching the teacher's ID in both tables.