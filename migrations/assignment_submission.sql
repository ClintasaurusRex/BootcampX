--  create the assignments table
CREATE TABLE assignments (
  id SERIAL PRIMARY KEY NOT NULL, -- Unique identifier for each assignment
  name VARCHAR(255),              -- Name of the assignment
  content TEXT,                   -- Detailed content description of assignment
  day INTEGER,                    -- Day number of the assignment
  chapter INTEGER,                -- Chapter number the assignment belongs to
  duration INTEGER                -- Expected duration to complete assignment
);

-- Create the assignment submission table
CREATE TABLE assignment_submissions (
  id SERIAL PRIMARY KEY NOT NULL,  -- Unique id for each submission
                       -- Foreign key referenceing the assignments table
  assignment_id INTEGER REFERENCES assignments(id) ON DELETE CASCADE,

                       -- Foreign key referencing the students table
  student_id INTEGER REFERENCES students(id) ON DELETE CASCADE,
  duration INTEGER,    -- Time take by student to complete assignment
  submission_date DATE -- The date the assignment was submitted
);





