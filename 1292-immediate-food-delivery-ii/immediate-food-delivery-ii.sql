select round(avg(per)* 100, 2) as immediate_percentage from 
(select customer_id,
order_date,
customer_pref_delivery_date ,
order_date=customer_pref_delivery_date  as per
from delivery) x 
join (select customer_id, min(order_date) as min_order from delivery GROUP BY customer_id )
y on (x.customer_id=y.customer_id and x.order_date=y.min_order)
