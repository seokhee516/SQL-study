SELECT SUM(ci.POPULATION) FROM CITY as ci
INNER JOIN COUNTRY as co ON ci.CountryCode = co.CODE
WHERE co.CONTINENT ='Asia'
