-- For each maker who has models at least in one of the tables PC, Laptop, or Printer, determine the maximum price for his products.
-- Output: maker;
-- if there are NULL values among the prices for the products of a given maker, display NULL for this maker, otherwise, the maximum price.
SELECT result.maker,
       CASE
           WHEN sum(CASE
                        WHEN price IS NULL THEN 1
                        ELSE 0
               END) > 0 THEN NULL
           ELSE max(price)
           END AS m_price1
FROM (
    SELECT DISTINCT Product.maker, PC.price
    FROM Product
             JOIN PC ON Product.model = PC.model
    WHERE Product.type = 'PC'
    UNION ALL
    SELECT DISTINCT Product.maker, Laptop.price
    FROM Product
             JOIN Laptop ON Product.model = Laptop.model
    WHERE Product.type = 'Laptop'
    UNION ALL
    SELECT DISTINCT Product.maker, Printer.price
    FROM Product
             JOIN Printer ON Product.model = Printer.model
    WHERE Product.type = 'Printer'
) AS result
GROUP BY result.maker
