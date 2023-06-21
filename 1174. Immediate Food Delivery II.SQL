SELECT ROUND(COUNT(case
when order_date = customer_pref_delivery_date then 1 ELSE null END)*100/COUNT(customer_id),2) AS immediate_percentage  
FROM Delivery
WHERE (customer_id,order_date) IN 
(select customer_id, min(order_date) 
FROM Delivery
group by customer_id)