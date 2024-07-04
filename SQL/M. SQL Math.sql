-- Create a table named 'Orders'
CREATE TABLE Orders (
  order_id INT PRIMARY KEY,
  product_name VARCHAR(50),
  quantity INT,
  price DECIMAL(10, 2)
);

-- Insert sample data into the 'Orders' table
INSERT INTO Orders (order_id, product_name, quantity, price) VALUES
  (1, 'Product A', 5, 25.00),
  (2, 'Product B', 3, 30.00),
  (3, 'Product C', 4, 15.50),
  (4, 'Product A', 2, 25.00);


-- Count the number of orders (number of rows that meet condition)
SELECT 
    COUNT(order_id) AS 'Total Orders'
FROM
    Orders;
    
-- Calculate the total price of all orders
SELECT SUM(price) AS 'Total Price' FROM Orders;

-- Calculate the average price of products
SELECT AVG(price) AS 'Average Price' FROM Orders;