# Write your MySQL query statement below
Select distinct(num) as ConsecutiveNums
from(
Select id,num,
lag(num) over(order by id) as prev_num,
lead(num) over(order by id) as next_num
from Logs
) sq
where sq.num = sq.prev_num and sq.prev_num = sq.next_num