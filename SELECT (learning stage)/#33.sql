--Get the ships sunk in the North Atlantic battle.
--Result set: ship.
SELECT ship FROM outcomes WHERE battle IN ('North Atlantic') AND result = 'sunk';
