# Write your MySQL query statement below
# GROUP_CONCAT 특정컬럼의 결과값을 하나의 ROW로 표시
SELECT sell_date, 
        COUNT(DISTINCT product) AS num_sold, 
        GROUP_CONCAT(DISTINCT product) as products
FROM Activities
GROUP BY sell_date
ORDER BY sell_date;
