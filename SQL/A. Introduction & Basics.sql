CREATE DATABASE iNTRO;
USE iNTRO;

CREATE TABLE employees (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    salary DECIMAL(10, 2)
);

INSERT INTO employees (id, name, salary)
VALUES (1, 'John Doe', 50000),
       (2, 'Jane Smith', 60000),
       (3, 'Robert Johnson', 55000);

SELECT * FROM employees; /* To Print */

SELECT name, salary FROM employees; /* To select specific columns in a table */

/** Congratulations to make it this far, here's a very great query to get you started! */

SELECT * FROM employees WHERE salary > 55000;
