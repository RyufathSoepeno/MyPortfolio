CREATE DATABASE Casey;
USE Casey;

-- Create a table named 'Employees'
CREATE TABLE Employees (
  employee_id INT PRIMARY KEY,
  first_name VARCHAR(50),
  last_name VARCHAR(50),
  salary DECIMAL(10, 2)
);

-- Insert sample data into the 'Employees' table
INSERT INTO Employees (employee_id, first_name, last_name, salary) VALUES
  (1, 'John', 'Doe', 50000.00),
  (2, 'Jane', 'Smith', 60000.00),
  (3, 'Mike', 'Johnson', 55000.00),
  (4, 'Sara', 'Williams', 70000.00);



-- Categorize employees based on salary
SELECT
  employee_id,
  first_name,
  last_name,
  salary,
  CASE
    WHEN salary >= 60000.00 THEN 'High Salary'
    WHEN salary >= 50000.00 THEN 'Medium Salary'
    ELSE 'Low Salary'
  END AS 'Salary Category'
FROM Employees;
