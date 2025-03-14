-- See tuples.sql for the values

CREATE TABLE Movie (
    MovieID INT PRIMARY KEY AUTO_INCREMENT,
    Title VARCHAR(255) NOT NULL,
    Year INT NOT NULL,
    Score DECIMAL(3,1),
    Votes INT
);

CREATE TABLE Actor (
    ActorID INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(255) NOT NULL
);

CREATE TABLE Casting (
    MovieID INT,
    ActorID INT,
    Ordinal INT,
    PRIMARY KEY (MovieID, ActorID),
    FOREIGN KEY (MovieID) REFERENCES Movie(MovieID) ON DELETE CASCADE,
    FOREIGN KEY (ActorID) REFERENCES Actor(ActorID) ON DELETE CASCADE
);




-- Query 1
-- List the movieid value of movie Titanic.
SELECT MovieID 
FROM Movie 
WHERE Title = 'Titanic';

-- Query 2
-- List the actorid value of actor Kevin Bacon.
SELECT ActorID 
FROM Actor 
WHERE Name = 'Kevin Bacon';

-- Query 3
-- List the average movie score in the movie database.
-- We use AVG() to count the average score(int). We can then make a column/attribute named Average_Score  later on
SELECT AVG(Score) AS Average_Score 
FROM Movie;

-- Query 4
-- List the title of movies that have scores greater than the average score.
-- We can make a nested query in this scenario to make it more tidier
SELECT Title 
FROM Movie WHERE Score > (
	SELECT AVG(Score) 
    FROM Movie
);

-- Query 5
-- List the names of actors who were cast in movie with movieid = 4.
SELECT Name 
FROM Actor 
JOIN Casting ON Actor.ActorID = Casting.ActorID
WHERE MovieID = 4;

-- Query 6
-- List the titles of movies that cast the actor Kevin Bacon.
-- We reference the MovieID keys, with the MovieID on movie as the primary key. 

-- We select the values from Movie table because we want to see the titles of the movie. And since the actor values are not available in casting, 
-- we can connect the Movie table and the Casting table using the MovieID column to link it to actor ID and find the actor name
SELECT Title FROM Movie
JOIN Casting ON Movie.MovieID = Casting.MovieID
WHERE Casting.ActorID = (
				SELECT ActorID 
                FROM Actor 
                WHERE Name = 'Kevin Bacon'
		);


-- Query 7
-- List the actorid values of actors that were cast in movies with votes between 3000 and 4000.
-- We use Casting table because they are neccesary to bridge and link the movie and its actors for the SQL keys

-- If an actor appeared in more than one movie that falls within the vote range, their ActorID would appear multiple times in the result.
-- DISTINCT ensures that each ActorID appears only once in the final result, reducing redundancy
SELECT DISTINCT Casting.ActorID 
FROM Casting
JOIN Movie ON Casting.MovieID = Movie.MovieID
WHERE Movie.Votes BETWEEN 3000 AND 4000;

-- Query 8
-- List the names of actors that were cast in movies with votes between 3000 and 4000.
-- Both ActorID and MovieID keys are neccesary to reference the actors and movies altogether between 3000 and 4000
SELECT DISTINCT Name FROM Actor
JOIN Casting ON Actor.ActorID = Casting.ActorID
JOIN Movie ON Casting.MovieID = Movie.MovieID
WHERE Movie.Votes BETWEEN 3000 AND 4000;

-- Query 9
-- List the titles of movies that have a higher score than some movie in the database.
SELECT DISTINCT Title 
FROM Movie
WHERE Score > ANY (
	SELECT Score 
    FROM Movie
);

-- Query 10
-- List the highest score of movies in the database.
SELECT MAX(Score) AS Highest_Score 
FROM Movie;

-- Query 11
-- List the titles of movies that have the highest score in the database.
SELECT Title FROM Movie 
WHERE Score = (
	SELECT MAX(Score) 
    FROM Movie
);

-- Query 12
-- Find the IDs of actors who were cast in more than one movie.
-- Since we want to sort by ActorID and the different movies they act on, especially to do it orderly, we can use GROUP BY
-- We also use HAVING as a "which" clause, without it, the table may only list one singular movie for one actor especially for many rows, that's it. This avoids checking each row individually, improving performance.
SELECT ActorID FROM Casting
GROUP BY ActorID
HAVING COUNT(DISTINCT MovieID) > 1;

-- Query 13
-- List the titles of movies that have a cast of more than 5 actors.
SELECT Title FROM Movie
JOIN Casting ON Movie.MovieID = Casting.MovieID
GROUP BY Movie.MovieID, Title
HAVING COUNT(DISTINCT Casting.ActorID) > 5;

-- Query 14
-- For each year, list the best score held by the movies made in that year.
SELECT Year, MAX(Score) AS Best_Score 
FROM Movie
GROUP BY Year;

-- Query 15
-- For each year, list the title of the movie with the most votes.
-- We use Movie1 and Movie2 because the Movie table is referenced twice in the query, so we can use Movie1 (outer query that select movies) and Movie2 (subquery to find highest votes per year) to differentiate the references
SELECT Year, Title 
FROM Movie AS Movie1
WHERE Votes = (
	SELECT MAX(Votes) 
    FROM Movie AS Movie2 
    WHERE Movie2.Year = Movie1.Year
);

-- Query 16
-- List the titles of both the movie with the highest score and the movie with the second highest score.
SELECT Title FROM Movie
WHERE Score IN (
	SELECT DISTINCT Score FROM Movie ORDER BY Score DESC LIMIT 2
);

-- Query 17
-- For each year in which Arnold Schwarzenegger was cast in at least two different movies, list the year and count.
-- I tried to apply aliases here, M for Movie table, C for casting table, etc. 
-- Aliases can be referenced after the table and can be done even when it is not referenced firsthand
SELECT M.Year, COUNT(*) AS Movie_Count 
FROM Movie M
JOIN Casting C ON M.MovieID = C.MovieID
JOIN Actor A ON C.ActorID = A.ActorID
WHERE A.Name = 'Arnold Schwarzenegger'
GROUP BY M.Year
HAVING COUNT(*) >= 2;

-- Query 18
-- List the names of actors that were cast in all movies with votes between 3000 and 4000.
SELECT A.Name FROM Actor A
JOIN Casting C ON A.ActorID = C.ActorID
JOIN Movie M ON C.MovieID = M.MovieID
WHERE M.Votes BETWEEN 3000 AND 4000
GROUP BY A.ActorID, A.Name
HAVING COUNT(DISTINCT M.MovieID) = (
	SELECT COUNT(*) 
    FROM Movie 
    WHERE Votes BETWEEN 3000 AND 4000
);

-- Query 19
-- List the names of actors that have appeared in more than ten movies.
SELECT A.Name 
FROM Actor A
JOIN Casting C ON A.ActorID = C.ActorID
GROUP BY A.ActorID, A.Name
HAVING COUNT(DISTINCT C.MovieID) > 10;

-- Query 20
-- From actors appearing in more than ten movies, list their name and average movie score.
SELECT A.Name, AVG(M.Score) AS AvgScore 
FROM Actor A
JOIN Casting C ON A.ActorID = C.ActorID
JOIN Movie M ON C.MovieID = M.MovieID
GROUP BY A.ActorID, A.Name
HAVING COUNT(DISTINCT C.MovieID) > 10;