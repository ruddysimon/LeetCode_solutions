select distinct(c.customer_id) as "customer_id"
from Customer as c
right join Product as p
on p.product_key = c.product_key
group by c.customer_id 
having count(distinct c.product_key) = (select count(product_key) from product)