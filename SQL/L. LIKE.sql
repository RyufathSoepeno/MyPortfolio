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


-- Select customers whose email addresses contain 'john'
SELECT * FROM Customers
WHERE email LIKE '%john%';

/** In this example:

LIKE is used to search for a specified pattern in the email column.
'%' is a WILDCARD character that matches any sequence of characters. 
So, %john% will match any email address containing "john" anywhere in the email.

In SQL, a wildcard is like a joker card that can represent one or more characters in a text pattern. It's used in queries to search for data that matches a pattern, even if you're not sure about all the characters in that pattern.

Here are two common wildcards:

- `%`: Represents any number of characters. For example, `A%` could match "Apple," "Ant," or "Alphabet."

- `_`: Represents a single character. For example, `H_t` could match "Hat," "Hot," or "Hit."

Wildcards make it easier to find data that you might not know the exact details of, but you know a part of it.
*/