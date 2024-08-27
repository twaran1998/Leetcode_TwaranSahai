# Write your MySQL query statement below
Select name,bonus from Employee LEFT JOIN Bonus ON Employee.empId=Bonus.empId  WHERE bonus<1000 OR bonus IS NULL ; 