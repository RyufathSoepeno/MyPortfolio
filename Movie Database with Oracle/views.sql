-- View 1: KevinBacon
-- This view lists all actors which have acted in at least one movie with Kevin Bacon, along with the count of movies they appeared together in.
CREATE VIEW KevinBacon AS
SELECT A.Name, COUNT(*) AS WithKevinBacon
FROM Actor A
-- We can join these columns firsthand, and rename them accordingly to be concurrently used
JOIN Casting C1 ON A.ActorID = C1.ActorID
JOIN Casting C2 ON C1.MovieID = C2.MovieID
JOIN Actor K ON C2.ActorID = K.ActorID
WHERE K.Name = 'Kevin Bacon' AND A.Name <> 'Kevin Bacon' -- The keys will ensure that only Kevin Bacon values are shown
GROUP BY A.Name;

-- View 2: Popularity
-- This view calculates the composite score for each actor, which is the sum of (score * votes) for every movie they appeared in.
CREATE VIEW Popularity AS
SELECT A.ActorID, A.Name, SUM(M.Score * M.Votes) AS CompositeScore
FROM Actor A
-- Similar to view 1's rule of view. Summation can directly be done in the SELECT query
JOIN Casting C ON A.ActorID = C.ActorID
JOIN Movie M ON C.MovieID = M.MovieID
GROUP BY A.ActorID, A.Name;
