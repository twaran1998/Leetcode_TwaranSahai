# Write your MySQL query statement below
Select class FROM Courses GROUP BY class HAVING COUNT(class)>=5;