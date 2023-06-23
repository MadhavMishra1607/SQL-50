SELECT user_id, IFNULL(ROUND((CONFIRM/total),2),0) AS confirmation_rate
FROM 
(SELECT s.user_id,c.action,count(c.user_id) AS total, count(CASE WHEN action = 'confirmed' THEN 1 ELSE NULL END) AS CONFIRM,
count(CASE WHEN action ='timeout' THEN 1 ELSE NULL END) AS time
FROM Confirmations c RIGHT JOIN Signups s 
on s.user_id = c.user_id
GROUP BY s.user_id)Temp ;