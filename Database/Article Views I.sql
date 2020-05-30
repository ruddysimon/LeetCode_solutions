SELECT DISTINCT(s1.author_id) AS id
FROM 
    (SELECT * 
     FROM views
     WHERE author_id = viewer_id) AS s1
ORDER BY id ASC;