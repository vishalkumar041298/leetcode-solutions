# Write your MySQL query statement below
with cte as (
select product_id, sum(unit) as unit from orders 
where extract(year_month from order_date)='202002' 
group by product_id having sum(unit)>99 )

select product_name, unit from products p join cte on(p.product_id=cte.product_id)