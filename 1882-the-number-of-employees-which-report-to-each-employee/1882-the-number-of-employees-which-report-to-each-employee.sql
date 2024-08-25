# Write your MySQL query statement below
# Write your MySQL query statement below
Select emp1.employee_id,emp1.name,COUNT(emp2.reports_to) as reports_count,CEILING(AVG(emp2.age)) AS average_age from Employees as emp1 JOIN Employees as emp2 ON emp1.employee_id =emp2.reports_to GROUP BY emp2.reports_to HAVING emp2.reports_to > 0 ORDER BY emp1.employee_id;

