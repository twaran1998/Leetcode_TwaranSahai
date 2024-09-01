WITH cte AS(
SELECT D.name as Department, E.name as Employee , E.salary as Salary,
DENSE_RANK() OVER (PARTITION BY D.name ORDER BY E.salary DESC) as rn
FROM Employee as E
JOIN Department as D
ON E.departmentID = D.id
)

SELECT Department,Employee,Salary
FROM cte
Where rn <= 3;