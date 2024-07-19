CREATE DATABASE GoExist;
USE GoExist;

-- Create a table named 'Products'
CREATE TABLE Products (
  product_id INT PRIMARY KEY,
  product_name VARCHAR(50),
  price DECIMAL(10, 2)
);

-- Insert sample data into the 'Products' table
INSERT INTO Products (product_id, product_name, price) VALUES
  (1, 'Product A', 25.00),
  (2, 'Product B', 30.00),
  (3, 'Product C', 15.50),
  (4, 'Product D', 40.00);


/** EXISTS: This operator checks for the existence of rows in a subquery. It returns TRUE if the subquery returns any rows, and FALSE otherwise. */

-- Check if there are products with a price greater than $35
SELECT product_name
FROM Products
WHERE EXISTS (SELECT 1 FROM Products WHERE price > 35.00);



/** ANY: This operator compares a value to a set of values returned by a subquery. 
It returns TRUE if the comparison is true for at least one row in the subquery. */

-- Check if any product has a price greater than $35
SELECT product_name
FROM Products
WHERE 40.00 > ANY (SELECT price FROM Products);



/** ALL: This operator compares a value to a set of values returned by a subquery. 
It returns TRUE if the comparison is true for all rows in the subquery. */

-- Check if all products have a price greater than $10
SELECT product_name
FROM Products
WHERE 10.00 < ALL (SELECT price FROM Products);
