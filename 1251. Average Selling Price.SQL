SELECT  temp.product_id, ROUND(SUM(product)/SUM(units),2) AS average_price FROM
(SELECT p.product_id, (p.price*u.units) AS product ,u.units 
    FROM Prices p JOIN UnitsSold u
    ON p.product_id = u.product_id
    AND u.purchase_date BETWEEN p.start_date AND p.end_date) temp
    
GROUP BY p.product_id
