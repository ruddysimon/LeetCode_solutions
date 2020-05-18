(SELECT '[0-5>' AS BIN, 
        SUM(CASE WHEN duration<300 THEN 1 ELSE 0 END) AS "TOTAL"
FROM Sessions) 
UNION
(SELECT '[5-10>' AS BIN, 
        SUM(CASE WHEN ((duration > 300) AND (duration < 600))  THEN 1 ELSE 0 END) AS "TOTAL"
FROM Sessions) 
UNION
(SELECT '[10-15>' AS BIN, 
        SUM(CASE WHEN ((duration > 600) AND (duration < 900))  THEN 1 ELSE 0 END) AS "TOTAL"
FROM Sessions) 
UNION
(SELECT '15 or more' AS BIN, 
        SUM(CASE WHEN duration > 900 THEN 1 ELSE 0 END) AS "TOTAL"
FROM Sessions) 