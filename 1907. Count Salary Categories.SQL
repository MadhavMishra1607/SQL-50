select 'Low Salary' AS category, count(*) as accounts_count
from Accounts 
where income < 20000
UNION ALL
select 'Average Salary' as category, count(*) as accounts_count
from Accounts 
where income>= 20000 and income <= 50000
UNION ALL
select 'High Salary' as category,count(*) as accounts_count
from Accounts 
where income > 50000