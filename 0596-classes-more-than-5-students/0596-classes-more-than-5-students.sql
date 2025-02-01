# Write your MySQL query statement below

WITH CTE AS(
select 
class,student,
ROW_NUMBER() OVER(partition by class) as rnk 
FROM Courses
)
select class from CTE where rnk>=5 GROUP BY class;