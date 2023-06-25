SELECT d.name AS Department ,e.name AS Employee, e.salary AS Salary
FROM Employee e JOIN Department d
ON e.departmentId = d.id
where (salary, departmentId) in 
(SELECT max(salary), departmentId
FROM Employee
group by departmentId)