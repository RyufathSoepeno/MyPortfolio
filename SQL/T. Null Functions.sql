-- Create a table named 'Employees'
CREATE TABLE Employees (
  employee_id INT PRIMARY KEY,
  first_name VARCHAR(50),
  last_name VARCHAR(50),
  salary DECIMAL(10, 2),
  hire_date DATE,
  manager_id INT
);

-- Insert sample data into the 'Employees' table
INSERT INTO Employees (employee_id, first_name, last_name, salary, hire_date, manager_id) VALUES
  (1, 'John', 'Doe', 50000.00, '2023-01-15', NULL),
  (2, 'Jane', 'Smith', NULL, '2023-02-10', 1),
  (3, 'Mike', 'Johnson', 55000.00, '2023-03-05', 1),
  (4, 'Sara', 'Williams', 60000.00, '2023-04-20', 2);



/** IFNULL: This function returns the first non-NULL value in a list of expressions. */

-- Use IFNULL to select the salary or a default value
SELECT first_name, last_name, IFNULL(salary, 0) AS 'Adjusted Salary'
FROM Employees;


/** ISNULL: This function checks if a value is NULL and returns 1 for true or 0 for false. */

-- Use ISNULL to check if salary is NULL
SELECT first_name, last_name, ISNULL(salary) AS 'SalaryIsNull'
FROM Employees;


/** COALESCE: This function returns the first non-NULL value in a list of expressions. */

-- Use COALESCE to select the salary or a default value
SELECT first_name, last_name, COALESCE(salary, 0) AS 'Adjusted Salary'
FROM Employees;
