# Write your MySQL query statement below



with dag as (
select visited_on, sum(amount) as daily_total
from customer group by visited_on
)
select visited_on, round(sum(rol_sum), 2) as amount, round(avg(rol_avg), 2) as average_amount from (
select *, sum(daily_total) over(order by visited_on rows between 6 preceding and current row) as rol_sum, 
avg(daily_total) over(order by visited_on rows between 6 preceding and current row) as rol_avg
from dag 
) s
where date_sub(visited_on, interval 6 day) 
in (select distinct visited_on from Customer)
group by visited_on