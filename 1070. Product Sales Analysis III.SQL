WITH T1 AS
(SELECT s.product_id, MIN(s.year) as first_year
FROM Sales s INNER JOIN Product p
ON s.product_id = p.product_id
GROUP BY p.product_id)

SELECT s.product_id, first_year, s.quantity, s.price
FROM Sales s INNER JOIN T1
ON  T1.first_year=s.year AND T1.product_id = s.product_id ;