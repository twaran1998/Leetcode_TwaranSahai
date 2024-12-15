with cte as
(select player_id,
event_date,
lead(event_date) over (partition by player_id order by event_date)next_date,
dense_rank() over (partition by player_id order by event_date) as rnk from activity
)
select round(sum(case when datediff(next_date,event_date) = 1 then 1 else 0 end)/count(distinct player_id),2)fraction
from cte where rnk = 1