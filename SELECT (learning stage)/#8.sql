--Find the makers producing PCs but not laptops.
select maker from product where type='pc' except select maker from product where type='laptop';
