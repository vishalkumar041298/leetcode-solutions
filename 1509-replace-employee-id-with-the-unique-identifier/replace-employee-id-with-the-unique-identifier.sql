# Write your MySQL query statement below
select unique_id, name from Employees emp Left outer join EmployeeUNI empuni on (emp.id=empuni.id)