--In accordance with the Washington Naval Treaty concluded in the beginning of 1922, it was prohibited to build battle ships with a displacement of more than 35 thousand tons.
--Get the ships violating this treaty (only consider ships for which the year of launch is known).
--List the names of the ships
SELECT ships.name FROM ships INNER JOIN classes ON ships.class=classes.class WHERE classes.displacement>35000 AND classes.type='bb' AND ships.launched>=1922;
