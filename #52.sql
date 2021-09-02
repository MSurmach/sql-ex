--Determine the names of all ships in the Ships table that can be a Japanese battleship having at least nine main guns with a caliber of less than 19 inches and a displacement of not more than 65 000 tons.
SELECT  s.name FROM ships s JOIN classes c ON c.class=s.class
WHERE country='Japan'
    AND type='bb' AND (numguns>=9 OR numguns IS NULL)
    AND (bore<19 OR bore IS NULL)
    AND (displacement<=65000 OR displacement IS NULL);
