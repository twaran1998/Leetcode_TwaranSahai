# Write your MySQL query statement below
-- Find the com_id for the company with the name 'RED'
WITH RedCompany AS (
    SELECT com_id
    FROM Company
    WHERE name = 'RED'
),

-- Find all sales_ids who have orders with the company 'RED'
SalesWithRedOrders AS (
    SELECT DISTINCT sales_id
    FROM Orders
    WHERE com_id IN (SELECT com_id FROM RedCompany)
)

-- Select names of salespersons who did not have any orders with the company 'RED'
SELECT name
FROM SalesPerson
WHERE sales_id NOT IN (SELECT sales_id FROM SalesWithRedOrders);
