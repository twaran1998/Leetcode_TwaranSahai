SELECT d.Name AS Department, e.Name As Employee, e.Salary AS Salary
FROM Employee AS e
LEFT JOIN Department AS d
ON e.DepartmentId = d.Id
WHERE (d.Id, e.Salary) in (SELECT DepartmentId, max(Salary)
FROM Employee
GROUP BY DepartmentId)
;