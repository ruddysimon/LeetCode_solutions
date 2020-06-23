select s1.business_id
from (select *,avg(occurences) over(partition by event_type) as "avg_occurences"
    from events) as s1
where occurences > avg_occurences
group by business_id
having count(event_type)>1