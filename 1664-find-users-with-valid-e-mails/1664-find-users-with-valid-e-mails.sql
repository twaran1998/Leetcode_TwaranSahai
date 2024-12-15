# Write your MySQL query statement below
select user_id,name,mail
from users
where
regexp_like (mail,'^[a-z]+[0-9a-zA-Z_.-]*@leetcode[.]{1}com$')