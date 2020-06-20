
select s.company_id, s.employee_id, s.employee_name, 
        round(case when s1.max_salary between 1000 and 10000 then (salary-salary*0.24)
                   when s1.max_salary > 10000 then (salary-salary*0.49) else salary end) as "salary"
from Salaries as s
inner join  (select company_id, max(salary) as "max_salary" 
            from salaries
            group by company_id) as s1
on s.company_id = s1.company_id