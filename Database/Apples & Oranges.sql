select sale_date as "SALE_DATE",
    sum(case when fruit = 'oranges' then -(sold_num) else sold_num end) as "DIFF"
from sales
group by sale_date