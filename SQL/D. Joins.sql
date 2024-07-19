CREATE DATABASE Joined;
USE Joined;


-- Create the Customers table
CREATE TABLE Customers (
  customer_id INT PRIMARY KEY,
  customer_name VARCHAR(50)
);

-- Create the Orders table
CREATE TABLE Orders (
  order_id INT PRIMARY KEY,
  customer_id INT,
  order_date DATE,
  total_amount DECIMAL(10, 2)
);

-- Insert sample data into the Customers table
INSERT INTO Customers (customer_id, customer_name) VALUES
  (1, 'John Doe'),
  (2, 'Jane Smith'),
  (3, 'Mike Johnson');

-- Insert sample data into the Orders table
INSERT INTO Orders (order_id, customer_id, order_date, total_amount) VALUES
  (1, 1, '2022-01-01', 100.00),
  (2, 1, '2022-02-15', 200.00),
  (3, 2, '2022-03-10', 150.00),
  (4, 3, '2022-04-20', 300.00);




-- Select orders with customer information using Inner Join
SELECT Orders.order_id, Customers.customer_name, Orders.order_date, Orders.total_amount
FROM Orders
INNER JOIN Customers ON Orders.customer_id = Customers.customer_id;
/** It retrieves the order ID, customer name, order date, and total amount for all orders with customer information. */

/**In an inner join, only the rows that have matching values in both tables are included in the result set. 
Here's what happens to the rows in an inner join:

Matching Rows: When a row from the left table (specified before the INNER JOIN keyword) has a matching value in the right table 
(specified after the INNER JOIN keyword) based on the join condition, that row is included in the result set.

Non-Matching Rows: Rows that do not have matching values in both tables are excluded from the result set. 
These non-matching rows are not considered in the join and are not included in the final output.

Basically, they are the defaults of all joins
*/

-- Select all customers and their orders using Right Join
SELECT Orders.order_id, Customers.customer_name, Orders.order_date, Orders.total_amount
FROM Orders
RIGHT JOIN Customers ON Orders.customer_id = Customers.customer_id;
/** In a right join, all rows from the right table (Customers) are included, even if there are no matches in the left table (Orders). */

-- Select all orders and their customers using Left Join
SELECT Orders.order_id, Customers.customer_name, Orders.order_date, Orders.total_amount
FROM Orders
LEFT JOIN Customers ON Orders.customer_id = Customers.customer_id;
/** In a left join, all rows from the left table (Orders) are included, even if there are no matches in the right table (Customers). */

-- Select all orders and customers using Full Join
SELECT Orders.order_id, Customers.customer_name, Orders.order_date, Orders.total_amount
FROM Orders
FULL JOIN Customers ON Orders.customer_id = Customers.customer_id;
/** In a full join, all rows from both tables are included, and any unmatched rows are filled with NULL values. */
