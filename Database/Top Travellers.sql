SELECT u.name,
      IFNULL(SUM(r.distance),0) as "travelled_distance"
FROM Users as u
LEFT JOIN Rides as r
ON u.id = r.user_id
GROUP BY u.name
ORDER BY travelled_distance DESC,
         u.name;