-- Active: 1729786522647@@127.0.0.1@5432@university_db

--Create a students table
CREATE TABLE students (
    student_id SERIAL PRIMARY KEY,
    student_name VARCHAR(50) NOT NULL,  
    age INTEGER NOT NULL,  
    email VARCHAR(100) NOT NULL, 
    frontend_mark INTEGER,  
    backend_mark INTEGER, 
    status VARCHAR(20)  
);

---create a courses table
CREATE Table courses (
  course_id SERIAL PRIMARY KEY,
  course_name VARCHAR(50) NOT NULL,
  credits INTEGER NOT NULL
);

---create a courses table
CREATE Table enrollment (
  enrollment_id SERIAL PRIMARY KEY,
  student_id INT REFERENCES students (student_id) NOT NULL,
  course_id INT REFERENCES courses (course_id) NOT NULL
);

-- Insert some sample data into the students table
INSERT INTO students (student_name, age, email, frontend_mark, backend_mark, status)
VALUES 
('Aziz', 28, 'aziz@gmail.com', 90, 95, NUll);

-- Insert some sample data into the courses table
INSERT INTO courses ( course_name, credits )
VALUES ('Next.js', 3),
('React.js', 4),
('Dat abases', 3),
('Prisma', 3);

-- Insert some sample data into the enrollment table
INSERT INTO enrollment (student_id, course_id)
VALUES (13, 1),
  (12, 2),
  (14,1),
  (11,2);

--Retrieve the names of all students who are enrolled in the course titled 'Next.js'.
  SELECT s.student_name 
  FROM students s 
  JOIN enrollment e ON s.student_id = e.student_id 
JOIN courses c ON e.course_id =c.course_id
  WHERE 
  c.course_name = 'Next.js' ;

--Update the status of the student with the highest total (frontend_mark + backend_mark) to 'Awarded'.

UPDATE students
SET status = 'Awarded'
WHERE student_id = (
    SELECT student_id
    FROM students
    ORDER BY frontend_mark + backend_mark DESC LIMIT 1)

--Delete all courses that have no students enrolled.

DELETE FROM courses
WHERE NOT EXISTS (
  SELECT 1
  FROM enrollment
  WHERE courses.course_id = enrollment.course_id
);

--Retrieve the names of students using a limit of 2, starting from the 3rd student.
SELECT student_name
FROM students
OFFSET 2 ROWS
FETCH NEXT 2 ROWS ONLY;


--Retrieve the course names and the number of students enrolled in each course.
SELECT c.course_name, COUNT(e.student_id) AS students_enrolled
FROM courses c
LEFT JOIN enrollment e ON c.course_id = e.course_id
GROUP BY c.course_name;

--Calculate and display the average age of all students.
SELECT AVG (age) as average_age
FROM students

--Retrieve the names of students whose email addresses contain 'example.com'.
SELECT student_name
FROM students 
WHERE email LIKE '%example.com%'

  SELECT * FROM students;
  SELECT * FROM courses;
  SELECT * FROM enrollment;
  
