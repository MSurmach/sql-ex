--Find the names of the ships with the largest number of guns among all ships having the same displacement (including ships in the Outcomes table).
WITH ships_all AS (
    SELECT r1.numguns,
           r1.displacement,
           CASE
               WHEN r1.name IS NULL
                   THEN r1.class
               ELSE r1.name
               END
    FROM (SELECT Classes.class, Ships.name, Classes.numGuns, Classes.displacement
          FROM Classes
                   LEFT JOIN Ships ON Classes.class = Ships.class) AS r1
)
SELECT ships_all.name
FROM ships_all
         JOIN (SELECT max(Classes.numguns) AS numguns, Classes.displacement
               from Classes
               GROUP BY Classes.displacement) AS lead_characters
              ON ships_all.numguns = lead_characters.numguns
                  AND ships_all.displacement = lead_characters.displacement
