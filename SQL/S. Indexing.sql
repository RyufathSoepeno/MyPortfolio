CREATE DATABASE Indexing;
USE Indexing;


-- Create a table named 'Customers'
CREATE TABLE Customers (
  customer_id INT PRIMARY KEY,
  first_name VARCHAR(50),
  last_name VARCHAR(50),
  email VARCHAR(100)
);

-- Insert sample data into the 'Customers' table
INSERT INTO Customers (customer_id, first_name, last_name, email) VALUES
  (1, 'John', 'Doe', 'johndoe@email.com'),
  (2, 'Jane', 'Smith', 'janesmith@email.com'),
  (3, 'Mike', 'Johnson', 'mikejohnson@email.com'),
  (4, 'Sara', 'Williams', 'saraw@email.com');


-- Create an index on the 'email' column
CREATE INDEX idx_email ON Customers (email);

/** 
We create an index named idx_email on the email column of the 'Customers' table. The index is used to speed up queries that involve searching for customers by their email addresses.
Indexes are essential for optimizing the performance of your database, especially when dealing with large datasets. They allow the database engine to quickly locate the rows that match a specific query condition, resulting in faster query execution. 
However, it's important to use indexes judiciously, as they come with some trade-offs, such as increased storage and potential performance overhead during data updates.
*/
