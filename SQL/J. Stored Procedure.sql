/** Stored procedures are useful for encapsulating and reusing SQL logic and can be more complex than this example. 
They help maintain and manage database operations efficiently. */


-- Create the Employees table
CREATE TABLE Employees (
  employee_id INT PRIMARY KEY,
  first_name VARCHAR(50),
  last_name VARCHAR(50),
  hire_date DATE
);

-- Insert sample data into the Employees table
INSERT INTO Employees (employee_id, first_name, last_name, hire_date) VALUES
  (1, 'John', 'Doe', '2023-01-15'),
  (2, 'Jane', 'Smith', '2022-11-20'),
  (3, 'Mike', 'Johnson', '2023-03-05');



-- Create a stored procedure to insert a new employee
DELIMITER //

CREATE PROCEDURE InsertEmployee(
  IN p_first_name VARCHAR(50),
  IN p_last_name VARCHAR(50),
  IN p_hire_date DATE
)
BEGIN
  INSERT INTO Employees (first_name, last_name, hire_date)
  VALUES (p_first_name, p_last_name, p_hire_date);
END;
//
DELIMITER ;

/** In the above code:

We use DELIMITER // to change the delimiter temporarily to // so that we can define the stored procedure.
We create a stored procedure named InsertEmployee with three input parameters: p_first_name, p_last_name, and p_hire_date.
The stored procedure uses an INSERT INTO statement to insert the provided values into the Employees table.
We use DELIMITER ; to reset the delimiter to the default ;. */

-- Call the stored procedure to insert a new employee
CALL InsertEmployee('Sarah', 'Williams', '2023-04-10');

-- Use drop procedure to delete a procedure