CREATE DATABASE Storage;
USE Storage;

-- Create the Employees table
CREATE TABLE Employees (
  employee_id INT PRIMARY KEY,
  first_name VARCHAR(50),
  last_name VARCHAR(50),
  salary DECIMAL(10, 2)
);

-- Insert sample data into the Employees table
INSERT INTO Employees (employee_id, first_name, last_name, salary) VALUES
  (1, 'John', 'Doe', 50000.00),
  (2, 'Jane', 'Smith', 60000.00),
  (3, 'Mike', 'Johnson', 55000.00);



-- Create a stored procedure with a cursor
DELIMITER //

CREATE PROCEDURE GetEmployeeSalaries()
BEGIN
  DECLARE done INT DEFAULT 0;  -- A variable to track if we're done with the cursor
  DECLARE emp_first_name VARCHAR(50);
  DECLARE emp_last_name VARCHAR(50);
  DECLARE emp_salary DECIMAL(10, 2);
  
  -- Declare a cursor to select employee names and salaries
  DECLARE emp_cursor CURSOR FOR
    SELECT first_name, last_name, salary
    FROM Employees;
    
  -- Handle exceptions if any
  DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = 1;
  
  OPEN emp_cursor;  -- Open the cursor
  
  -- Loop through the cursor
  read_loop: LOOP
    FETCH emp_cursor INTO emp_first_name, emp_last_name, emp_salary;
    
    IF done THEN
      LEAVE read_loop;  -- Exit the loop when there are no more records
    END IF;
    
    -- Display the employee's full name and salary
    SELECT CONCAT(emp_first_name, ' ', emp_last_name) AS 'Employee Name', emp_salary AS 'Salary';
  END LOOP;
  
  CLOSE emp_cursor;  -- Close the cursor
END;
//
DELIMITER ;

/** 
In the code above:

1.We use DELIMITER // to temporarily change the delimiter to // for defining the stored procedure.
 2.We create a stored procedure named GetEmployeeSalaries. Inside the procedure, we declare variables for tracking, employee first name, last name, and salary.
  3.We declare a cursor named emp_cursor to select employee names and salaries from the Employees table.
    4.We handle exceptions using a CONTINUE HANDLER that sets the done variable to 1 when there are no more records to fetch.
     5.We open the cursor, loop through the data, fetch each record into the variables, and display the employee name and salary.
      6.Finally, we close the cursor and reset the delimiter to the default ;.
*/

-- Call the stored procedure to get employee names and salaries
CALL GetEmployeeSalaries();
