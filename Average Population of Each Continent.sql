-- https://www.hackerrank.com/challenges/average-population-of-each-continent/problem?isFullScreen=true

SELECT co.CONTINENT, FLOOR(SUM(ci.POPULATION)/COUNT(ci.POPULATION)) FROM CITY as ci
INNER JOIN COUNTRY as co ON ci.COUNTRYCODE=co.CODE
GROUP BY co.CONTINENT
