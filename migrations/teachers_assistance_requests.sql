CREATE TABLE teachers (
  id SERIAL PRIMARY KEY NOT NULL,
  name VARCHAR(255) NOT NULL,
  is_active BOOLEAN DEFAULT TRUE,
  start_date DATE,
  end_date DATE
);

CREATE TABLE assistance_requests (
  id  SERIAL PRIMARY KEY NOT NULL,
  student_id    INTEGER REFERENCES students(id)    ON DELETE CASCADE,
  teacher_id    INTEGER REFERENCES teachers(id)    ON DELETE CASCADE,
  assignment_id INTEGER REFERENCES assignments(id) ON DELETE CASCADE,
  created_at    TIMESTAMP,
  started_at    TIMESTAMP,
  completed_at  TIMESTAMP,
  student_feedback TEXT,
  teacher_feedback TEXT
);

/*
-- Create a table to store information about teachers
CREATE TABLE teachers (
  id SERIAL PRIMARY KEY NOT NULL,  -- Unique identifier for each teacher, auto-incrementing
  name VARCHAR(255) NOT NULL,      -- Teacher's name, required field
  is_active BOOLEAN DEFAULT TRUE,  -- Indicates if the teacher is currently active, defaults to true
  start_date DATE,                 -- The date when the teacher started working
  end_date DATE                    -- The date when the teacher stopped working (if applicable)
);

-- Create a table to store information about assistance requests
CREATE TABLE assistance_requests (
  id SERIAL PRIMARY KEY NOT NULL,  -- Unique identifier for each assistance request, auto-incrementing
  student_id INTEGER REFERENCES students(id) ON DELETE CASCADE,
    -- Foreign key referencing the students table, cascade delete if student is removed
  teacher_id INTEGER REFERENCES teachers(id) ON DELETE CASCADE,
    -- Foreign key referencing the teachers table, cascade delete if teacher is removed
  assignment_id INTEGER REFERENCES assignments(id) ON DELETE CASCADE,
    -- Foreign key referencing the assignments table, cascade delete if assignment is removed
  created_at TIMESTAMP,    -- When the assistance request was created
  started_at TIMESTAMP,    -- When the teacher started helping the student
  completed_at TIMESTAMP,  -- When the assistance was completed
  student_feedback TEXT,   -- Feedback provided by the student about the assistance
  teacher_feedback TEXT    -- Feedback provided by the teacher about the assistance
);

*/