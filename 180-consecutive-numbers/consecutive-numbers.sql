with cte as (
	select num,
    lead(num) over() as num1,
    lead(num, 2) over() as num2
    from logs
)
select distinct num as ConsecutiveNums  from cte where num=num1 and num1 =num2