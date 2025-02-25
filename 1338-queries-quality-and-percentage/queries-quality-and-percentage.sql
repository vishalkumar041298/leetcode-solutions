select
query_name,
round(avg(cast(rating as decimal) / position), 2) as quality,
round(sum(rating < 3) * 100 / count(*), 2) as poor_query_percentage
from
queries
group by
query_name;