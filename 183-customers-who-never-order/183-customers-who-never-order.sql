SELECT c.name AS Customers
FROM Customers AS c
    LEFT JOIN ORDERS AS o ON c.id = o.customerId
WHERE o.id IS Null 
# WHERE o.id = Null 하면 못찾음 NULL 은 특수한 값이기 때문 