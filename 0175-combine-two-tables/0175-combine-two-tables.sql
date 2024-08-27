# Write your MySQL query statement below
Select firstname,lastName,city,state FROM Person LEFT JOIN Address ON Person.personId=Address.personId;