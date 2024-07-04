-- Create the Student table
CREATE TABLE Student (
  SID INT UNSIGNED NOT NULL,
  name VARCHAR(20) NOT NULL,
  major VARCHAR(50),
  grade VARCHAR(5),
  PRIMARY KEY (SID)
);

-- Create the CourseTaken table
CREATE TABLE CourseTaken (
  SID VARCHAR(4),
  CID VARCHAR(4),
  Semester VARCHAR(5),
  Year VARCHAR(4),
  Grade INT
);

-- Create the Course table
CREATE TABLE Course (
  CID VARCHAR(4),
  Semester VARCHAR(5),
  Year VARCHAR(4),
  Name VARCHAR(20),
  Credit INT,
  Prereq VARCHAR(4),
  PRIMARY KEY (CID)
);

-- Create the Lecturer table
CREATE TABLE Lecturer (
  LID VARCHAR(4),
  Name VARCHAR(20),
  BOD DATE,
  Gender VARCHAR(1),
  Address VARCHAR(20),
  PRIMARY KEY (LID)
);



-- Add records to the tables
INSERT INTO Student (SID, name, major, grade) VALUES
  (1, 'John', 'Computer Science', 'A'),
  (2, 'Jane', 'Physics', 'B'),
  (3, 'Mike', 'Mathematics', 'C');

INSERT INTO CourseTaken (SID, CID, Semester, Year, Grade) VALUES
  ('1', 'C001', 'Fall', '2022', 85),
  ('2', 'C002', 'Spring', '2023', 72),
  ('3', 'C003', 'Fall', '2022', 68);

INSERT INTO Course (CID, Semester, Year, Name, Credit, Prereq) VALUES
  ('C001', 'Fall', '2022', 'Introduction to Programming', 3, NULL),
  ('C002', 'Spring', '2023', 'Physics 101', 4, 'C001'),
  ('C003', 'Fall', '2022', 'Calculus 101', 4, NULL);

INSERT INTO Lecturer (LID, Name, BOD, Gender, Address) VALUES
  ('L001', 'Dr. Smith', '1978-05-12', 'M', '123 Main St'),
  ('L002', 'Dr. Johnson', '1982-09-25', 'F', '456 Elm St'),
  ('L003', 'Dr. Williams', '1975-03-19', 'M', '789 Oak St');

-- Browse all tables
SELECT * FROM Student;
SELECT * FROM CourseTaken;
SELECT * FROM Course;
SELECT * FROM Lecturer;



-- Delete one record from each table 
DELETE FROM Student WHERE SID = 2;
DELETE FROM CourseTaken WHERE SID = '1' AND CID = 'C001';
DELETE FROM Course WHERE CID = 'C002';
DELETE FROM Lecturer WHERE LID = 'L003';

-- MODIFY/ALTER THE TABLE STRUCTURE

-- Example: Rename SID column to student_id in the Student table
ALTER TABLE Student CHANGE SID student_id INT UNSIGNED; /** It is still NOT NULL even if you do not put it */

-- Add a new column to the Student table
ALTER TABLE Student ADD COLUMN email VARCHAR(50);

-- Modify the "data type" of the Grade column in the CourseTaken table
ALTER TABLE CourseTaken MODIFY Grade VARCHAR(2);

-- Delete a column
ALTER TABLE Lecturer DROP COLUMN Gender;

-- Print screen the results
SELECT * FROM Student;
SELECT * FROM CourseTaken;
SELECT * FROM Course;
SELECT * FROM Lecturer;
