CREATE FUNCTION getNthHighestSalary(N INT) RETURNS INT
BEGIN
set N=N-1;
RETURN (
ifnull((select distinct Salary from Employee
order by Salary desc
limit 1 offset N),null)
);
END