# Write your MySQL query statement below
# UPDATE Users SET name = CONCAT(UCASE(LEFT(name, 1)),SUBSTRING(name, 2));
SELECT user_id,
CONCAT(UPPER(SUBSTRING(name, 1,1)),LOWER(SUBSTRING(name, 2))) as name FROM Users
ORDER BY user_id;