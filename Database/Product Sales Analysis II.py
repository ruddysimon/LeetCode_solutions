SELECT p.product_id,
       SUM(s.quantity) as "total_quantity"
FROM Sales as s
LEFT JOIN Product as p
ON s.product_id = p.product_id
GROUP BY p.product_id