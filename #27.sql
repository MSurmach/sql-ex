--Find out the average hard disk drive capacity of PCs produced by makers who also manufacture printers.
--Result set: maker, average HDD capacity.
SELECT DISTINCT maker, avg(hd) AS avg_price
FROM product
         JOIN pc ON product.model = pc.model
GROUP BY maker
HAVING maker IN (
    SELECT DISTINCT maker
    FROM product
    WHERE type = 'Printer'
);
