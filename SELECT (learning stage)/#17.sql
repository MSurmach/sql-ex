--Get the laptop models that have a speed smaller than the speed of any PC.
--Result set: type, model, speed.
select distinct product.type, laptop.model, laptop.speed from product inner join laptop on product.model=laptop.model where laptop.speed < all (select speed from pc);
