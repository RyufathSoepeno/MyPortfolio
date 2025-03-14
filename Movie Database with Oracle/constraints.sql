-- Constraint 1: The default actor name is 'Adam Sandler'
-- We can use DEFAULT to easily state the default value of a table tuple
ALTER TABLE Actor
MODIFY Name VARCHAR(255) DEFAULT 'Adam Sandler';

-- Testing Constraint 1
-- This will show Adam Sandler's name when we add the ActorID value without a name
INSERT INTO Actor (ActorID) VALUES (1001);
SELECT * FROM Actor WHERE ActorID = 1001; 

-- Constraint 2: The score for a movie must be between 0 and 10
-- Adding a constraint or rule that checks the scores between 0 and 10, and if it it false, it fails. Can be nested
ALTER TABLE Movie
ADD CONSTRAINT ScoreRange CHECK (
									Score BETWEEN 0 AND 10
									);

-- Testing Constraint 2
-- Any Score above 10 will cause the insertion to fail
INSERT INTO Movie (MovieID, Title, Year, Score, Votes) 
VALUES (100, 'Test Movie', 2024, 11, 5000);

-- Constraint 3: Disable and Enable the score constraint
ALTER TABLE Movie DISABLE CONSTRAINT ScoreRange; -- To Disable. These are all different for Oracle and MySQL, Oracle

-- Inserting a test case that would normally violate the constraint
INSERT INTO Movie (MovieID, Title, Year, Score, Votes) 
VALUES (101, 'Another Test Movie', 2024, 15, 3000); -- Should succeed while disabled

ALTER TABLE Movie ENABLE CONSTRAINT ScoreRange; -- To Enable
