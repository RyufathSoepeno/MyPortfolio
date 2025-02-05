# SQL-Self-Taught

To run in MySQL workbench, click the database icon, click ok, enter the password after pressing the ok button, and run the codes by highlighting a line, and clicking the thunder button after the selected highlight. 

Some require to use CommandLine, to run, just press enter after deciding a delimiter (The default delimiter is (;), so remember that)

Yours, 
Ryufath ;-)

=====================

Tip: Dependencies in SQL mean one entity or query cannot work without ahving the other query or entity

B is Dependent on A

If A does not exist, B cannot work

Data Integrity: How complete a data is, does it need updates, etc?

=====================

The following constraints are commonly used in SQL:

NOT NULL - Ensures that a column cannot have a NULL value

UNIQUE - Ensures that all values in a column are different

PRIMARY KEY - A combination of a NOT NULL and UNIQUE. Uniquely identifies each row in a table. <b>Has to be unique value<b/>

FOREIGN KEY - Prevents actions that would destroy links between tables

CHECK - Ensures that the values in a column satisfies a specific condition

DEFAULT - Sets a default value for a column if no value is specified

CREATE INDEX - Used to create and retrieve data from the database very quickly

