--Find the makers of PCs with a processor speed of 450 MHz or more. Result set: maker.
Select distinct product.maker from product join pc on product.model=pc.model where pc.speed>=450;
