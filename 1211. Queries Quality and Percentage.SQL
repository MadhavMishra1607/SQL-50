SELECT query_name,quality, ROUND(cnt3*100/cnt1,2) AS poor_query_percentage
FROM
(SELECT query_name, ROUND(AVG(rating/position),2) AS quality, 
count(query_name) as cnt1, 
count(case when (rating<3) then 1 else null end) AS cnt3
FROM Queries 
GROUP BY query_name)T