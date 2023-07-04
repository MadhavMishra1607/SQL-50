with t1 as
(select employee_id, name from Employees
where employee_id in (select reports_to from Employees 
where reports_to is not NULL 
group by reports_to)),
t2 as
(select reports_to, count(reports_to) as reports_count, round(avg(age)) as average_age from Employees
where reports_to is NOT NULL 
group by reports_to)
select t1.employee_id, t1.name, t2.reports_count, t2.average_age
from t1 inner join t2
on t1.employee_id = t2.reports_to
order by t1.employee_id;