SELECT d.name as Department, e.name as Employee, e.salary as Salary
FROM Employee as e, Department as d
WHERE e.departmentId = d.id AND e.Salary = (SELECT MAX(Salary) FROM Employee AS e2 WHERE e2.departmentId = d.id)