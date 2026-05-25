select customer_id, name, city
from customers as c
where city in ('New York','Los Angeles')
and c.customer_id in (
    select o.customer_id
    from orders as o
    where o.customer_id >= 1
)