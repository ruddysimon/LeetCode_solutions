select person_name
from (select person_name,sum(weight) over(order by turn asc) as total
    from queue) as s1
where total <= 1000
order by total desc
limit 1