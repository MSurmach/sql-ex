--Get the makers producing both PCs having a speed of 750 MHz or higher and laptops with a speed of 750 MHz or higher.
--Result set: maker
select pc_result.maker from
(select product.maker from product inner join pc on product.model = pc.model where pc.speed>=750) as pc_result
inner join
(select product.maker from product inner join laptop on product.model = laptop.model where laptop.speed>=750) as laptop_result
on pc_result.maker=laptop_result.maker group by pc_result.maker;
