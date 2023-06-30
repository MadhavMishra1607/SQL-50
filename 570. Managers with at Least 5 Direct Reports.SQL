WITH T1 AS
(SELECT managerId, count(managerId) as no FROM Employee
GROUP BY managerId
HAVING no>=5)

SELECT name FROM Employee E JOIN T1
WHERE E.id =T1.managerId
