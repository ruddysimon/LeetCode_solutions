SELECT s.id,
       s.name
FROM Students as s
LEFT JOIN Departments as d
ON d.id = s.department_id
WHERE d.id IS NULL;