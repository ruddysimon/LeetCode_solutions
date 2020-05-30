--  Solution 1
SELECT p.product_name AS "PRODUCT_NAME",
       s1.unit AS "UNIT"
FROM Products AS p
LEFT JOIN (SELECT DISTINCT(product_id),
               order_date,
               SUM(unit) AS "unit"
           FROM orders
           WHERE order_date >='2020-02-01' AND order_date < '2020-03-01'
           GROUP BY product_id) AS s1
ON p.product_id = s1.product_id
WHERE unit >= 100;



-- Solution 2
SELECT p.product_name AS 'PRODUCT_NAME',
       SUM(unit) AS 'UNIT'
FROM 
    Orders AS o
LEFT JOIN 
    Products AS p
ON 
    p.product_id = o.product_id
WHERE order_date >= '2020-02-01' AND
      order_date <= '2020-02-31'
GROUP BY p.product_id
HAVING SUM(unit) >= 100