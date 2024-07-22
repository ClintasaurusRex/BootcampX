-- Select the columns to query
SELECT name, id, email, cohort_id
-- Specify table to query
FROM students
-- filter the students
WHERE email NOT LIKE '%gmail.com'
  AND phone IS NULL;

  -- NOT LIKE is a SQL operator used for pattern matching
  -- % is a wildcard char that represents any number of character
  -- '%gmail.com' is the pattern we're matching against. The % at the beginning means "anything can come before gmail.com".