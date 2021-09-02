--Find out the maximum PC price for each maker having models in the PC table. Result set: maker, maximum price.
Select product.maker, MAX(pc.price) from product inner join pc on product.model = pc.model group by product.maker;
