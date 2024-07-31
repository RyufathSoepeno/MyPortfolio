-- Query 1
-- List the titles of all movies
SELECT TITLE
FROM MOVIE;

-- Query 2
-- List the actor table
SELECT *
FROM ACTOR;

-- Query 3
-- List the actor id of the actor Kevin Bacon
SELECT ACTORID
FROM ACTOR
WHERE NAME = 'Kevin Bacon';

-- Query 4
-- List movies that have scores greater than 7.0
SELECT TITLE
FROM MOVIE
WHERE SCORE > 7.0;

-- Query 5
-- List movies that have votes between 3000 and 4000
SELECT TITLE
FROM MOVIE
WHERE VOTES BETWEEN 3000 AND 4000;

-- Query 6
-- List movies that have scores greater than 7.0 or years greater than 1990
SELECT TITLE
FROM MOVIE
WHERE SCORE > 7.0 OR YEAR > 1990;

-- Query 7
-- List IDs of actors who are cast in movies that have scores greater than 7.0
SELECT DISTINCT ACTORID
FROM CASTING
WHERE MOVIEID IN (SELECT MOVIEID FROM MOVIE WHERE SCORE > 7.0);

-- Query 8
-- List movie ID(s) that have cast the actor Kevin Bacon
SELECT MOVIEID
FROM CASTING
WHERE ACTORID = (SELECT ACTORID FROM ACTOR WHERE NAME = 'Kevin Bacon');

-- Query 9
-- List the titles of all movies that cast the actor Kevin Bacon
SELECT TITLE
FROM MOVIE
WHERE MOVIEID IN (SELECT MOVIEID FROM CASTING WHERE ACTORID = (SELECT ACTORID FROM ACTOR WHERE NAME = 'Kevin Bacon'));
