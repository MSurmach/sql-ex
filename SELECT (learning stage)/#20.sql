--Find the makers producing at least three distinct models of PCs.
--Result set: maker, number of PC models.
select maker, count(model) as count_model from product where type='pc' group by maker having count(model)>=3;
