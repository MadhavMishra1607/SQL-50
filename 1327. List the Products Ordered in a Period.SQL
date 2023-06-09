SELECT product_name,unit FROM (
SELECT p.product_id, p.product_name, SUM(o.unit) AS unit
FROM Products p JOIN Orders o 
ON p.product_id = o.product_id
WHERE o.order_date LIKE '%-02-%'
GROUP BY o.product_id 
HAVING unit >=100)T;