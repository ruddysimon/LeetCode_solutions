SELECT ROUND(SUM(order_date = customer_pref_delivery_date) / COUNT(delivery_id) * 100,2) AS "immediate_percentage"
FROM Delivery