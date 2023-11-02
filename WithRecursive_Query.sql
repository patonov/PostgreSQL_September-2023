WITH RECURSIVE tralala(n) AS (
    VALUES (1)
  UNION all
    SELECT n+1 FROM tralala WHERE n < 10
)
SELECT sum(n) FROM tralala;

WITH RECURSIVE tralala(n) AS (
    VALUES (1)
  UNION all
    SELECT n+1 FROM tralala WHERE n < 10
)
SELECT * FROM tralala;