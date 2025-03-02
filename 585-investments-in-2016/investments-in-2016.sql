# Write your MySQL query statement below
with latlon as (
select *, count(pid) over(partition by lat, lon) as latlondup from insurance
),
ph as (
select *, count(pid) over(partition by tiv_2015) as phdup from insurance
)

select round(sum(latlon.tiv_2016), 2) as tiv_2016 from latlon 
join ph on (latlon.pid=ph.pid)
where latlondup=1 and phdup>1

