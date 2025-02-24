# Write your MySQL query statement below
select su.user_id, coalesce(round(avg(action='confirmed'), 2), 0) as confirmation_rate from Confirmations cf 
right join signups su using(user_id)  group by su.user_id 