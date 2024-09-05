WITH ProductCount AS (
    SELECT COUNT(DISTINCT product_key) AS total_products
    FROM Product
),
CustomerProductCount AS (
    SELECT customer_id,
           COUNT(DISTINCT product_key) AS products_bought
    FROM Customer
    GROUP BY customer_id
)
SELECT c.customer_id
FROM CustomerProductCount c
JOIN ProductCount p
ON c.products_bought = p.total_products;