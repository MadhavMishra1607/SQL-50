WITH T1 AS 
(
SELECT num, count(num) as cnt FROM MyNumbers
GROUP BY num
)
SELECT MAX(num) as num FROM T1
WHERE cnt = 1;