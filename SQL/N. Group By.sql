CREATE DATABASE Grouper;
USE Grouper;


-- Create a table named 'Orders'
CREATE TABLE Orders (
  order_id INT PRIMARY KEY,
  product_name VARCHAR(50),
  quantity INT,
  price DECIMAL(10, 2),
  customer_id INT
);

-- Insert sample data into the 'Orders' table
INSERT INTO Orders (order_id, product_name, quantity, price, customer_id) VALUES
  (1, 'Product A', 5, 25.00, 1),
  (2, 'Product B', 3, 30.00, 2),
  (3, 'Product C', 4, 15.50, 1),
  (4, 'Product A', 2, 25.00, 3);



-- Group orders by customer and calculate the total quantity and total price for each customer
SELECT customer_id, SUM(quantity) AS 'Total Quantity', SUM(price) AS 'Total Price'
FROM Orders
GROUP BY customer_id;

/** the GROUP BY clause is essential for summarizing and analyzing data when you want to see results grouped by specific criteria, 
such as customers, categories, or any other relevant attributes. 
It's a powerful tool for gaining insights into your data. */
