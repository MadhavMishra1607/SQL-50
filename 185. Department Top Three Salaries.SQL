
SELECT Department,Employee, Salary FROM 
(SELECT d.name AS Department, e.departmentId, e.name AS Employee, e.salary AS Salary, 
DENSE_RANK() OVER (PARTITION BY  e.departmentId  order by e.departmentId, Salary desc ) as "rank"
FROM Department d JOIN Employee e
ON d.id = e.departmentId) TEMP
WHERE TEMP.rank<4 ;
