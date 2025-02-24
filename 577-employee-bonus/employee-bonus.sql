# Write your MySQL query statement below
select name, bonus from Employee emp left join Bonus bon on (emp.empID=bon.empID) where bon.bonus < 1000 or bon.bonus is null