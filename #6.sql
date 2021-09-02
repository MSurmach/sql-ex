--For each maker producing laptops with a hard drive capacity of 10 Gb or higher, find the speed of such laptops. Result set: maker, speed.
Select distinct product.maker, laptop.speed from product join laptop on product.model=laptop.model where laptop.hd>=10;
