# Write your MySQL query statement below
# CONCAT 여러 문자열을 하나의 문자열로 합치기
# SUBSTRING(문자열, 시작위치,길이) 문자열 자리기 함수
SELECT user_id,
CONCAT(UPPER(SUBSTRING(name, 1,1)),LOWER(SUBSTRING(name, 2))) as name FROM Users
ORDER BY user_id;
