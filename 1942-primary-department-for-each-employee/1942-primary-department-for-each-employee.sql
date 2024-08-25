# Write your MySQL query statement below
select employee_id,department_id from Employee GROUP BY employee_id HAVING COUNT(employee_id) = 1 
UNION 
select employee_id,department_id from Employee Where primary_flag = "Y" ;