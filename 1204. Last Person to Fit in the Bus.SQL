select person_name from (
select * , sum(weight) over (order by Turn) as total_sum from queue) t 
where total_sum <= 1000
order by turn DESC
LIMIT 1