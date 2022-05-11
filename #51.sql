--Find the names of the ships with the largest number of guns among all ships having the same displacement (including ships in the Outcomes table).
WITH ships_all AS (
    SELECT r1.country,
           CASE
               WHEN r1.name IS NULL
                   THEN r1.class
               ELSE r1.name
               END
    FROM (SELECT Classes.class, Ships.name
          FROM Classes
                   LEFT JOIN Ships ON Classes.class = Ships.class) AS r1
)
