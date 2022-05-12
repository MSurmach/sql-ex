--Find the names of the ships having a gun caliber of 16 inches (including ships in the Outcomes table).
SELECT ships.name FROM ships INNER JOIN classes ON ships.class=classes.class WHERE classes.bore='16'
UNION
SELECT outcomes.ship FROM outcomes INNER JOIN classes ON outcomes.ship=classes.class WHERE classes.bore='16';
