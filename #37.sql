--Find classes for which only one ship exists in the database (including the Outcomes table).
WITH all_ships AS
(SELECT name FROM ships
UNION SELECT ship FROM outcomes)
SELECT classes.class,COUNT(ships.name) FROM classes.class=ships.class GROUP BY classes.class;
