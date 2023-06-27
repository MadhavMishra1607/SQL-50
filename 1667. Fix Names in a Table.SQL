select user_id, concat(first,rest) as name
from
(select user_id, 
ucase(left(name,1)) as first, 
lcase(substring(name,2)) as rest 
from users) temp
order by user_id;