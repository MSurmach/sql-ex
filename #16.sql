--Get pairs of PC models with identical speeds and the same RAM capacity. Each resulting pair should be displayed only once, i.e. (i, j) but not (j, i).
--Result set: model with the bigger number, model with the smaller number, speed, and RAM.
Select distinct pc1.model, pc2.model, pc1.speed, pc1.ram from pc as pc1, pc as pc2 where pc1.speed=pc2.speed and pc1.ram=pc2.ram and pc1.model!=pc2.model and pc1.model>pc2.model;
