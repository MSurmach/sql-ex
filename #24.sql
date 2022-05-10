--List the models of any type having the highest price of all products present in the database.\
with max_prices as
         (select model, max(price) as price
          from pc
          group by model
          union
          select model, max(price) as price
          from laptop
          group by model
          union
          select model, max(price) as price
          from printer
          group by model)
select model
from max_prices
where price >= all (select max(price) from max_prices);