--For the ships in the Ships table that have at least 10 guns, get the class, name, and country.
SELECT ships.class, ships.name, classes.country from ships inner join classes on ships.class=classes.class where classes.numGuns>=10;
