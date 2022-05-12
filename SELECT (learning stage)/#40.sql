-- Get the makers who produce only one product type and more than one model. Output: maker, type.
SELECT distinct maker, type
FROM product
WHERE maker IN (
    SELECT maker
    FROM product
    GROUP BY maker
    HAVING count(distinct type) = 1
       AND count(model) > 1)

