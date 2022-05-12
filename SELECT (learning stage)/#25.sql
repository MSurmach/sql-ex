--Find the printer makers also producing PCs with the lowest RAM capacity and the highest processor speed of all PCs having the lowest RAM capacity.
--Result set: maker.
WITH pc_printer_result AS
(SELECT pc_printer_m.maker, pc.speed, pc.ram FROM
(SELECT product.maker, product.model FROM product INNER JOIN
(SELECT DISTINCT product.maker FROM product WHERE product.type='printer') AS printer_m
ON product.maker=printer_m.maker WHERE product.type='pc') AS pc_printer_m
INNER JOIN pc ON pc_printer_m.model=pc.model)
SELECT result.maker FROM
(SELECT maker, MAX(speed) FROM pc_printer_result
WHERE ram=(SELECT MIN(ram) from pc_printer_result) 
GROUP BY maker) AS result;
