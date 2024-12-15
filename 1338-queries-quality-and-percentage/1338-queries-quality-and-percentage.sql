# Write your MySQL query statement below
select query_name,
ROUND(AVG(rating/position), 2) as quality,
ROUND(100.0*sum(if(rating<3, 1,0))/count(1),2) as poor_query_percentage
from Queries
group by query_name
order by 2 desc;