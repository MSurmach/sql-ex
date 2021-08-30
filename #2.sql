--List all printer makers. Result set: maker.
SELECT maker FROM product WHERE product.type='printer' GROUP BY maker;
