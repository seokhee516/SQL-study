SELECT salary*months AS earnings, count(*) 
FROM Employee
GROUP BY earnings
ORDER BY earnings DESC
LIMIT 1;
