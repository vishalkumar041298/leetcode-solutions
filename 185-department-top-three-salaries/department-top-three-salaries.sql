with cte as (
select *,
dense_rank() over(partition by departmentID order by salary desc) as rnk from employee 
)
select dep.name as Department, cte.name as Employee, salary
from cte join department dep on(cte.departmentId=dep.id) where rnk <4