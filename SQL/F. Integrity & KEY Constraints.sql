CREATE DATABASE Constr;
USE Constr;

/** Primary Key: Unique identifier for each record in a table.
Foreign Key: A link between records in different tables.
Unique Key: Ensures no duplicate values in a specific field. */

-- Create the Employees table
CREATE TABLE Employees (
  employee_id INT PRIMARY KEY,

/** Primary Key:
The PRIMARY KEY constraint "uniquely identifies" each row in a table. 
It ensures that the values in the specified column(s) are unique and not null.

In the example above, the employee_id column is defined as the primary key using the PRIMARY KEY constraint. 
It guarantees that each employee has a "unique" ID.
*/
  
  first_name VARCHAR(50),
  last_name VARCHAR(50),
  department_id INT,
  
  UNIQUE (first_name, last_name),
  
  /** Unique Key:
The UNIQUE constraint ensures that the values in the specified column(s) are "unique across all rows" in the table.

In the example above, the combination of first_name and last_name columns is defined as a unique key using the UNIQUE constraint. 
It guarantees that each employee's first name and last name "combination" is "unique".
*/

  FOREIGN KEY (department_id) REFERENCES Departments (department_id)
  
  /** Foreign Key:
The FOREIGN KEY constraint "establishes a link" between two tables based on a column(s). 
It ensures that the values in the specified column(s) in one table match the values in the referenced column(s) in another table.

In the example above, the department_id column in the Employees table is defined as a foreign key using the FOREIGN KEY constraint. 
It references the department_id column in the Departments table. 
This constraint ensures that the values in the department_id column of the Employees table "correspond to valid values" in the Departments table.
*/

);

-- Insert sample data into the Employees table
INSERT INTO Employees (employee_id, first_name, last_name, department_id) VALUES
  (1, 'John', 'Doe', 1),
  (2, 'Jane', 'Smith', 2),
  (3, 'Mike', 'Johnson', 1);

