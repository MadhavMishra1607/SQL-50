WITH T1 AS
(SELECT p.project_id,p.employee_id,e.experience_years
FROM Project p INNER JOIN Employee e
ON p.employee_id = e.employee_id),
T2 AS
(SELECT project_id, ROUND(AVG(experience_years),2) AS average_years
FROM T1
GROUP BY project_id)
SELECT * from T2