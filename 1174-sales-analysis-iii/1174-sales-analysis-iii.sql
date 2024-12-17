# Write your MySQL query statement below
SELECT product_id,product_NAME FROM Product
WHERE product_id IN (
SELECT product_id FROM Sales GROUP BY 1 HAVING
MAX(sale_date) <= CAST('2019-03-31' AS DATE)
AND MIN(sale_date) >= CAST('2019-01-01' AS DATE))