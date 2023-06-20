SELECT id, SUM(cnt) as num
FROM
(SELECT  requester_id AS  id , count(requester_id) AS cnt
FROM RequestAccepted
GROUP BY id
UNION ALL
SELECT  accepter_id AS  id , count(accepter_id) AS cnt
FROM RequestAccepted
GROUP BY id) T
GROUP BY id
ORDER BY num DESC
LIMIT 1;