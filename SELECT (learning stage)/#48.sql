--Find the ship classes having at least one ship sunk in battles.
WITH sunked AS
(SELECT outcomes.ship AS name FROM outcomes WHERE result='sunk')
SELECT ships.class FROM ships INNER JOIN sunked ON ships.name = sunked.name
UNION
SELECT classes.class FROM classes INNER JOIN sunked ON classes.class = sunked.name;
