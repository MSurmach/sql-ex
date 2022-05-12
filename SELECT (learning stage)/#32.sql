--One of the characteristics of a ship is one-half the cube of the calibre of its main guns (mw).
--Determine the average ship mw with an accuracy of two decimal places for each country having ships in the database.
SELECT country, CAST(AVG(POWER(bore,3)/2) AS DECIMAL(8,2)) AS weight FROM classes GROUP BY country;
