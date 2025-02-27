# Write your MySQL query statement below
select emp2.employee_id, emp2.name, count(emp1.reports_to) as reports_count, round(avg(emp1.age)) as average_age
from Employees emp1 join Employees emp2 on(emp1.reports_to=emp2.employee_id) group 
by emp2.employee_id, emp2.name order by emp2.employee_id