# Write your MySQL query statement below
Select  emp2.name AS Employee FROM employee AS emp1 JOIN employee emp2 ON emp1.id=emp2.managerId WHERE emp1.salary<emp2.salary;