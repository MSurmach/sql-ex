--Get the models and prices for all commercially available products (of any type) produced by maker B.
select total.model, total.price from
(select model,price from pc union select model,price from laptop union select model,price from printer) 
as total left join product on total.model= product.model where product.maker ='B';
