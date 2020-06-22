select e.*,
    (case when e.operator = '>' and v1.value > v2.value then 'true'
         when e.operator = '<' and v1.value < v2.value then 'true'
         when e.operator = '=' and v1.value = v2.value then 'true' 
         else 'false' end) as 'value'
from expressions as e
join variables as v1
on e.left_operand = v1.name
join variables as v2
on e.right_operand = v2.name