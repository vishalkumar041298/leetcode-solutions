# Write your MySQL query statement below
select person_name from 
(select *, sum(Weight) over(order by Turn) as total from Queue)  x where total <= 1000  order by total desc limit 1;