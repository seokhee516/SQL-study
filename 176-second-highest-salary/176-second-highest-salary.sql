# 대박 이렇게 하면 두번째로 큰값 뽑아낼 수 있군 신기한 sql 세계~~
SELECT MAX(salary) AS 'SecondHighestSalary'
FROM Employee
WHERE salary < (SELECT MAX(salary)FROM Employee)
