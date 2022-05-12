-- Find the countries that have lost all their ships in battles.


--___________________________
-- Your query produced correct result set on main database, but it failed test on second, checking database
--     * Wrong number of records (more by 1)
-- Why this solution is not working? I don't know)
--___________________________
WITH country_ship AS (
    SELECT r1.country,
           CASE
               WHEN r1.name IS NULL
                   THEN r1.class
               ELSE r1.name
               END
    FROM (SELECT Classes.country, Classes.class, Ships.name
          FROM Classes
                   LEFT JOIN Ships ON Classes.class = Ships.class) AS r1
)
SELECT req1.country
FROM (
         SELECT country, count(Outcomes.ship) as sunked_count
         FROM country_ship
                  JOIN Outcomes ON country_ship.name = Outcomes.ship
         WHERE Outcomes.result = 'sunk'
         GROUP BY country
     ) as req1
         JOIN (
    SELECT country, count(name) as qty
    FROM country_ship
    GROUP BY country
) as req2 ON req1.country = req2.country
    AND req1.sunked_count = req2.qty

--___________________________
-- Copy - Paste
--___________________________

WITH boat_count AS (SELECT country, COUNT(*) AS scount
                    FROM (SELECT s.name AS name,
                                 c.country AS country
                          FROM classes c
                                   JOIN ships s
                                        ON c.class = s.class
                          UNION
                          SELECT o.ship AS name,
                                 c.country AS country
                          FROM classes c
                                   JOIN outcomes o
                                        ON o.ship = c.class
                         ) f
                    GROUP BY country)

SELECT b.country
FROM (SELECT country,
             COUNT(*) AS sunk_count
      FROM (SELECT s.name AS name,
                   c.country AS country
            FROM classes c
                     JOIN ships s
                          ON c.class = s.class
            UNION
            SELECT o.ship AS name,
                   c.country AS country
            FROM classes c
                     JOIN outcomes o
                          ON o.ship = c.class
           ) a
               JOIN outcomes o
                    ON o.ship = a.name
      WHERE result ='sunk'
      GROUP BY country
     ) b
         JOIN boat_count
              ON boat_count.country = b.country
                  AND boat_count.scount = b.sunk_count