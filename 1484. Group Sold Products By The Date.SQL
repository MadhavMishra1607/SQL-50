SELECT sell_date, 
count(DISTINCT product)AS num_sold,  
GROUP_CONCAT(DISTINCT product order BY product ASC ) as products 
FROM Activities
GROUP BY sell_date
ORDER BY sell_date;