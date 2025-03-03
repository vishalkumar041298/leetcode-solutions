with cte as( 
select * from products
 where (product_id, change_date) in 
 (select product_id, max(change_date) from 
 products where change_date<='2019-08-16' group by product_id)
 )
 select  distinct(p1.product_id), coalesce(cte.new_price, 10) as price
 from products p1
 left join cte on (p1.product_id= cte.product_id)