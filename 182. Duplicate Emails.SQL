SELECT email AS Email FROM 
(SELECT email, count(email) as cnt FROM Person GROUP BY email HAVING cnt>1 )t;