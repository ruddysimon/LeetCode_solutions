select i.invoice_id,
    cu.customer_name,
    i.price,
    count(c.user_id) as "contacts_cnt",
    sum(case when c.contact_name in (select customer_name from customers) then 1 else 0 end) as "trusted_contacts_cnt" 
from invoices as i
left join contacts as c
on i.user_id = c.user_id
left join customers as cu
on cu.customer_id = i.user_id
group by i.invoice_id
order by i.invoice_id;