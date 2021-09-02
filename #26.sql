--Find out the average hard disk drive capacity of PCs produced by makers who also manufacture printers.
--Result set: maker, average HDD capacity.
WITH result AS
(SELECT product.maker, pc.hd FROM product INNER JOIN pc
ON product.model=pc.model WHERE product.maker
IN (SELECT maker FROM product WHERE type='printer'))
SELECT maker, AVG(hd) FROM result GROUP BY maker;
