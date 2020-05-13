sub query solution
SELECT e1.employee_id,
       COUNT(e2.employee_id) as "team_size"
FROM Employee as e1
LEFT JOIN Employee as e2
ON e1.team_id = e2.team_id
GROUP BY e1.employee_id 