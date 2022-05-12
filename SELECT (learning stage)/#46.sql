--For each ship that participated in the Battle of Guadalcanal, get its name, displacement, and the number of guns.
WITH ships_classes AS
(SELECT outcomes.ship AS name, ships.class FROM outcomes
LEFT JOIN ships ON outcomes.ship=ships.name WHERE outcomes.battle ='Guadalcanal')
SELECT ships_classes.name, classes.displacement, classes.numGuns FROM ships_classes
INNER JOIN classes ON ships_classes.class=classes.class
UNION
SELECT  outcomes.ship AS name, classes.displacement, classes.numGuns FROM outcomes
INNER JOIN classes ON outcomes.ship=classes.class WHERE outcomes.battle ='Guadalcanal';
