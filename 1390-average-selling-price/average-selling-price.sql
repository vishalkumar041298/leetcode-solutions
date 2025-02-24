# Write your MySQL query statement below
select prices.product_id, coalesce(round(sum(units*price)/sum(units), 2), 0)   as average_price from prices left join unitssold on(prices.product_id=unitssold.product_id and unitssold.purchase_date between start_date and end_date ) 
 group by product_id