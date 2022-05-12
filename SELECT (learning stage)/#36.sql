--List the names of lead ships in the database (including the Outcomes table).
SELECT name FROM (SELECT name FROM ships
UNION SELECT ship FROM outcomes) as all_ships
WHERE name IN (SELECT class FROM classes);
