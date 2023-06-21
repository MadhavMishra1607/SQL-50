SELECT LEFT(trans_date,7) AS month, 
country, count(id) as trans_count,
count(CASE WHEN state = 'approved' THEN 1 ELSE null END) AS approved_count,
SUM(amount) AS  trans_total_amount,
SUM(CASE WHEN state = 'approved' THEN amount ELSE 0 END) AS approved_total_amount
FROM Transactions
GROUP BY month,country;