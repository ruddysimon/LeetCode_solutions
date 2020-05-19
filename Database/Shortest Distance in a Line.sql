SELECT MIN(ABS(P1.X - P2.X)) AS "shortest"
FROM point as p1
JOIN point as p2
WHERE P1.X <> P2.X;