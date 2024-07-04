CREATE DATABASE RelationalAlgebra;
USE RelationalAlgebra;

-- Create the Students table
CREATE TABLE Students (
  student_id INT PRIMARY KEY,
  student_name VARCHAR(50)
);

-- Create the Courses table
CREATE TABLE Courses (
  course_id INT PRIMARY KEY,
  course_name VARCHAR(50),
  instructor VARCHAR(50)
);

-- Insert sample data into the Students table
INSERT INTO Students (student_id, student_name) VALUES
  (1, 'John Doe'),
  (2, 'Jane Smith'),
  (3, 'Mike Johnson');

-- Insert sample data into the Courses table
INSERT INTO Courses (course_id, course_name, instructor) VALUES
  (101, 'Mathematics', 'Prof. Smith'),
  (102, 'English', 'Prof. Johnson'),
  (103, 'Science', 'Prof. Brown');


/* Union:
Union combines the rows of two tables into a single result set. */

-- Perform Union of Students and Courses tables to retrieve all students and courses
SELECT student_name, NULL AS course_name, NULL AS instructor FROM Students
UNION
SELECT NULL AS student_name, course_name, instructor FROM Courses;


/** Intersection:
Intersection retrieves the common rows between two tables. */

-- Perform Intersection of Students and Courses tables based on student_name column
SELECT student_name FROM Students
INTERSECT
SELECT instructor FROM Courses;


/** Difference:
Difference retrieves the rows that are present in one table but not in the other. */

-- Perform Difference between Students and Courses tables based on student_name column
SELECT student_name FROM Students
EXCEPT
SELECT instructor FROM Courses;
