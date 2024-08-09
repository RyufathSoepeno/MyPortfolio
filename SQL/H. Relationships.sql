CREATE DATABASE OneAndMany;
USE OneAndMany;

------- In a nutshell, basically these relationships is defined by how you name or want your data to be, 
------- so if you put more than one data for a column, then it will be classified as "many" not "one" anymore, that simple :)

------- The Foreign Key makes it "Many", not "One" anymore

------- This applies to all except Many-to-Many

--- One-to-One Relationship

CREATE TABLE users (
    user_id INT PRIMARY KEY,
    username VARCHAR(50));
CREATE TABLE user_profiles (
    profile_id INT PRIMARY KEY,
    user_id INT UNIQUE,
    profile_data VARCHAR(255),
    FOREIGN KEY (user_id) REFERENCES users(user_id));

--- One-to-Many Relationship

CREATE TABLE authors (
    author_id INT PRIMARY KEY,         
    author_name VARCHAR(100)           
);

    --- One author can write many books, not one book write many authors :)

CREATE TABLE books (
    book_id INT PRIMARY KEY,           
    title VARCHAR(255),                
    author_id INT,                     
    FOREIGN KEY (author_id) REFERENCES authors(author_id)
);

--- Many-to-Many Relationship

CREATE TABLE students (
    student_id INT PRIMARY KEY,
    student_name VARCHAR(50));
CREATE TABLE courses (
    course_id INT PRIMARY KEY,
    course_name VARCHAR(50));

-- Creating a junction table 'student_courses' to establish the many-to-many relationship.
CREATE TABLE student_courses (
    student_id INT,
    course_id INT,
    PRIMARY KEY (student_id, course_id), -- Composite primary key to ensure unique student-course pairs.
    FOREIGN KEY (student_id) REFERENCES students(student_id), -- 'student_id' references 'students.student_id'.
    FOREIGN KEY (course_id) REFERENCES courses(course_id)  -- 'course_id' references 'courses.course_id'.

/// Many-to-One Relationship

CREATE TABLE departments (
    department_id INT PRIMARY KEY,    
    department_name VARCHAR(100)      
);

-- Many employees can be linked to one department

CREATE TABLE employees (
    employee_id INT PRIMARY KEY,      
    employee_name VARCHAR(100),       
    department_id INT,                
    FOREIGN KEY (department_id) REFERENCES departments(department_id)
);
