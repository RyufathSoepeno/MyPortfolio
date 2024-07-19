CREATE DATABASE DataTypes;
USE DataTypes;

CREATE TABLE products (
    id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY, /** It is also unsigned (UNSIGNED), meaning it only accepts positive values. */
    name VARCHAR(50) NOT NULL, /** NOT NULL means it must have a value */
    quantity INT DEFAULT 0, /** has a default value of 0 */
    price DECIMAL(10, 2) UNSIGNED,
    is_available TINYINT(1) DEFAULT 1 /** Boolean, a default value of 1 */
);

INSERT INTO products (name, quantity, price)
VALUES ('Product 1', 10, 29.99),
       ('Product 2', 5, 49.99),
       ('Product 3', 2, 9.99);

SELECT * FROM products;

SELECT name, price FROM products WHERE quantity > 5;

SELECT CAST(price AS UNSIGNED) AS integer_price FROM products; /** Selecting an integer with decimal values */
/** This query uses the CAST function to convert the "price" column to an unsigned integer, effectively truncating any decimal values. 
The result is returned as "integer_price". */


/** The CAST() function converts a value (of any type) into the specified datatype. */

/*===================================================================================================================*/
/*===================================================================================================================*/

CREATE TABLE sample_table (
  varchar_column VARCHAR(20),
  tinyint_column TINYINT,
  text_column TEXT,
  date_column DATE,
  smallint_column SMALLINT,
  mediumint_column MEDIUMINT,
  int_column INT,
  bigint_column BIGINT,
  float_column FLOAT(10, 2),
  double_column DOUBLE,
  decimal_column DECIMAL(10, 2),
  datetime_column DATETIME,
  timestamp_column TIMESTAMP,
  time_column TIME,
  year_column YEAR,
  char_column CHAR(10),
  tinyblob_column TINYBLOB,
  tinytext_column TINYTEXT,
  blob_column BLOB,
  mediumblob_column MEDIUMBLOB,
  mediumtext_column MEDIUMTEXT,
  longblob_column LONGBLOB,
  longtext_column LONGTEXT,
  enum_column ENUM('1', '2', '3'),
  set_column SET('1', '2', '3'),
  bool_column BOOL,
  binary_column BINARY(20),
  varbinary_column VARBINARY(20)
);


INSERT INTO sample_table (varchar_column, tinyint_column, text_column, date_column, smallint_column, mediumint_column, int_column, 
bigint_column, float_column, double_column, decimal_column, datetime_column, timestamp_column, time_column, year_column, char_column,
tinyblob_column, tinytext_column, blob_column, mediumblob_column, mediumtext_column, longblob_column, longtext_column, enum_column,
set_column, bool_column, binary_column, varbinary_column) 
VALUES (
  'Value 1', /* varchar_column */
  1, /* tinyint_column */
  'Text 1', /*  text_column */
  '2023-05-31', /* date_column*/
  
  100, /* smallint_column */
  1000, /* mediumint_column */
  10000, /* int_column */
  100000, /* bigint_column */
  10.50, /* float_column */
  10.123, /* decimal_column */
  
  12.34, /* datetime_column*/
  '2023-05-31 10:00:00', /* timestamp_column */ 
  '10:00:00', /** time_column */
  2023, /* year_column */
  
  'ABC', /* char_column */
  BINARY '010101', /* tinyblob_column */
  'Tiny Text', /* tinytext_column */
  BINARY '010101', /* blob_column */
  'Medium Text', /* mediumtext_column */
  BINARY '010101', /* mediumblob_column */
  'Long Text', /* longtext_column */
  
  'a', 'b', 'c', /* enum column, for a column defined as ENUM('a','b','c'), values such as '', 'd', or 'ax' are invalid and are rejected.*/
  'a','b', 'c', /* set column, for a column defined as SET('a','b','c'), values such as 'd' or 'a,b,c,d' are invalid and are rejected.*/
  /* These can be integers too */
  
  TRUE, /* bool_column */
  BINARY '010101', /* binary_column, another varchar clone, with specific bytes */
  BINARY '010101' /* varbinary_column, another varchar clone, with specific bytes */
)


/** In SQL, the term "BLOB" stands for "Binary Large Object." It is a data type used to store large amounts of binary data, 
such as images, audio files, videos, or any other binary data.

A BLOB column can store various types of binary data, including:

TINYBLOB: Can store up to 255 bytes of binary data.
BLOB: Can store up to 65,535 bytes of binary data.
MEDIUMBLOB: Can store up to 16,777,215 bytes of binary data.
LONGBLOB: Can store up to 4,294,967,295 bytes of binary data.

BLOB data is typically used when you need to store files or large binary data directly within the database. 
It allows you to save and retrieve binary data efficiently.
*/
