--Using Product table, find out the number of makers who produce only one model.
SELECT count(result.maker) FROM (SELECT maker, COUNT(model) FROM product
GROUP BY maker HAVING COUNT(model)=1) AS result;
