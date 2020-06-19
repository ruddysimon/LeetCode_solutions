select e1.employee_id
from employees as e1
left join employees as e2
on e2.employee_id = e1.manager_id
left join employees as e3
on e3.employee_id = e2.manager_id
where e3.manager_id = 1 and e1.employee_id <> 1 ;