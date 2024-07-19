CREATE DATABASE Viewing;
USE Viewing;

-- Create the Products table
CREATE TABLE Products (
  product_id INT PRIMARY KEY,
  product_name VARCHAR(50),
  price DECIMAL(8, 2)
);

-- Insert sample data into the Products table
INSERT INTO Products (product_id, product_name, price) VALUES
  (1, 'Product A', 25.00),
  (2, 'Product B', 30.00),
  (3, 'Product C', 15.50);



-- Create a view that selects products with a price less than $30
CREATE VIEW LowPricedProducts AS
SELECT product_id, product_name, price
FROM Products
WHERE price < 30.00;
/** We've created a view named LowPricedProducts that selects products with a price less than $30 from the Products table. 
The view acts like a virtual table that displays data meeting the specified criteria. */



-- You can query the view like you would with a regular table:

-- Select all rows from the view
SELECT * FROM LowPricedProducts;


/** -- Update the view to change the price of 'Product B'
UPDATE LowPricedProducts
SET price = 28.00
WHERE product_name = 'Product B';
*/
