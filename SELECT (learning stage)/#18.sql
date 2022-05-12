--Find the makers of the cheapest color printers.
--Result set: maker, price.
select distinct product.maker, printer.price from product inner join printer on product.model=printer.model where printer.color='y' and printer.price=(select min(price) from printer where printer.color='y');
