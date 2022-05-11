--Find the ships that `survived for future battles;
--that is, after being damaged in a battle, they participated in another one, which occurred later.
SELECT ship
FROM outcomes
         JOIN battles ON outcomes.battle = battles.name
WHERE result = 'damaged'
   or result = 'OK' GROUP BY ship HAVING count(date)>=2