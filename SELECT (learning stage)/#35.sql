--Find models in the Product table consisting either of digits only or Latin letters (A-Z, case insensitive) only.
--Result set: model, type.
SELECT model, type
FROM product
WHERE upper(model) NOT LIKE '%[A-Z]%'
OR model NOT LIKE '%[^0-9]%'
