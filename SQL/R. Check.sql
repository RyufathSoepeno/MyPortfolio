CREATE DATABASE Checker;
USE Checker;


-- Create a table named 'Products'
CREATE TABLE Products (
  product_id INT PRIMARY KEY,
  product_name VARCHAR(50),
  price DECIMAL(10, 2),
  stock_quantity INT,
  CHECK (price >= 0),  -- Check constraint for non-negative prices
  CHECK (stock_quantity >= 0)  -- Check constraint for non-negative stock quantities
);

-- Insert sample data into the 'Products' table
INSERT INTO Products (product_id, product_name, price, stock_quantity) VALUES
  (1, 'Product A', 25.00, 50),
  (2, 'Product B', -10.00, 30),  -- This will violate the CHECK constraint
  (3, 'Product C', 15.50, -5);    -- This will violate the CHECK constraint



/** In the above code:

- We create a table named 'Products' with columns for product_id, product_name, price, and stock_quantity.
- We use CHECK constraints to ensure that the price and stock_quantity are non-negative values. 
  The CHECK constraints are defined after each column's data type
*/
