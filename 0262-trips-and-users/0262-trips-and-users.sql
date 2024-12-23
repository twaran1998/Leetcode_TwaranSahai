with a as
(select * from Trips
where Client_Id not in (select Users_Id from Users where Banned = 'Yes')
and Driver_Id not in (select Users_Id from Users where Banned = 'Yes'))

select Request_at as Day,
round(avg(case when Status = 'completed' then 0 else 1 end),2) as 'Cancellation Rate'
from a
group by Day
having Day between '2013-10-01' and '2013-10-03'
