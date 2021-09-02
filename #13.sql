--Find out the average speed of the PCs produced by maker A.
Select avg(speed) from pc join product on pc.model=product.model where product.maker ='A';
