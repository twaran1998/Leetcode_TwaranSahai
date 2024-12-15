# Write your MySQL query statement below
select
case when mod(id,2)=0 then id-1
when mod(id,2)=1 and id+1 not in (select id from seat) then id
else id+1 end as id,
student
from seat order by id