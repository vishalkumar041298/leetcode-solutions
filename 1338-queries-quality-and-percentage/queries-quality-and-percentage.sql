select q.query_name, round(avg(rating/position), 2) as quality, round((
select count(*) from Queries q2 where q2.rating < 3 and q.query_name=q2.query_name
 ) * 100/count(q.query_name), 2)   as poor_query_percentage from Queries q group by query_name

