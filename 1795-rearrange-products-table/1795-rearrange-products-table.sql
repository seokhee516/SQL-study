# Write your MySQL query statement below
# UNION ALL 컬럼을 합치는 방법!! 그냥 위 아래로 붙여주면 되는구나
# 문자열을 값으로 사용하고 싶을 때, '' AS 컬럼이름 으로 만들어주면 된다
SELECT product_id, 'store1' AS store, store1 AS price
FROM products
WHERE store1 IS NOT NULL # null 값은 빼준다

UNION ALL

SELECT product_id, 'store2' AS store, store2 AS price
FROM products
WHERE store2 IS NOT NULL

UNION ALL

SELECT product_id, 'store3' AS store, store3 AS price
FROM products
WHERE store3 IS NOT NULL