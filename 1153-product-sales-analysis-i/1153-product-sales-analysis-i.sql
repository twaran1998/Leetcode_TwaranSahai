# Write your MySQL query statement below
select a.Product_Name, b.year, b.price
from sales b
join product a
on a.product_id = b.product_id