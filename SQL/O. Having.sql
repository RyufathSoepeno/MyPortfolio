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


-- Group orders by customer and filter customers with a total quantity greater than 5
SELECT customer_id, SUM(quantity) AS 'Total Quantity'
FROM Orders
GROUP BY customer_id
HAVING SUM(quantity) > 5;
