--For each maker having models in the Laptop table, find out the average screen size of the laptops he produces.
--Result set: maker, average screen size.
select product.maker, AVG(laptop.screen) from product inner join laptop on product.model=laptop.model group by product.maker;
