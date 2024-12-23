# Write your MySQL query statement below
with cte as (
select id,visit_date,
lag(people, 2) over (order by id) as previousday2,
lag(people, 1) over (order by id) as previousday1,
people,
lead(people, 1) over (order by id) as nextday1,
lead(people, 2) over (order by id) as nextday2
from stadium
)

select id, visit_date, people
from cte
where people >=100
and ((nextday1>=100 and nextday2 >=100) or (previousday1>=100 and previousday2 >=100) or (previousday1>=100 and nextday1 >=100) )