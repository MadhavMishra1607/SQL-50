WITH T1 AS(
SELECT u.user_id,r.contest_id, COUNT(r.contest_id)AS participated_user
FROM Users u JOIN Register r
ON r.user_id = u.user_id
GROUP BY r.contest_id
), 
T2 AS (
SELECT COUNT(user_id) as no_user FROM Users
)
SELECT contest_id, ROUND(participated_user*100/no_user,2) AS percentage
FROM T1 JOIN T2
ORDER BY percentage DESC, contest_id asc;