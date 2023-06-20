WITH T1 AS(
SELECT m.movie_id, m.title as results, AVG(r.rating) AS avg_rating
FROM Movies m JOIN MovieRating r
ON m.movie_id = r.movie_id
WHERE created_at LIKE '%-02-%'
GROUP BY m.movie_id
ORDER BY  avg_rating DESC, results ASC
LIMIT 1), 
T2 AS (
SELECT u.user_id, count(r.user_id) as cnt, u.name AS results
FROM Users u JOIN MovieRating r
ON u.user_id = r.user_id

GROUP BY u.user_id
ORDER BY cnt DESC, results ASC
LIMIT 1
)

SELECT results FROM T1
UNION ALL
SELECT results FROM T2