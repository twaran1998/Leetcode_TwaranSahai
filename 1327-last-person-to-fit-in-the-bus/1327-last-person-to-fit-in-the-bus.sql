# Write your MySQL query statement below
with cte as (SELECT person_name,weight,turn,SUM(weight) over (order by turn) as total from Queue)
SELECT person_name
FROM cte
where total <= 1000
order by total DESC
LIMIT 1;