# Write your MySQL query statement below
select  player_id,MIN(event_date) AS first_login from Activity GROUP BY player_id;