WITH T1 AS 
(SELECT employee_id,COUNT(employee_id) as cnt1 FROM Employee GROUP BY employee_id), 

T2 AS 
(select e.employee_id, 
CASE WHEN cnt1>=1 AND primary_flag ='Y' THEN department_id 
     WHEN cnt1=1 AND primary_flag ='N' THEN department_id 
     END AS department_id

FROM Employee e JOIN T1
on e.employee_id = T1.employee_id)

SELECT * FROM T2 WHERE department_id is NOT NULL