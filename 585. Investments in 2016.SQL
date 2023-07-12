select round(sum(tiv_2016),2) as tiv_2016
from Insurance
where tiv_2015 in 
(select tiv_2015 from Insurance group by tiv_2015 having count(*) > 1)
AND CONCAT(lat,lon) IN 
(select CONCAT(lat,lon) as loc from Insurance group by loc 
having count(*) = 1)