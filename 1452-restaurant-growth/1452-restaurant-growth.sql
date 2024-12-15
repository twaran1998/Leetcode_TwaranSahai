WITH TotalAmount AS (SELECT visited_on,
sum(amount) as total
FROM Customer
GROUP BY visited_on)

SELECT visited_on, amount, average_amount
FROM (SELECT visited_on,
sum(total) over(order by visited_on ASC rows between 6 preceding and current row) AS 'amount',
round(avg(total) over(order by visited_on ASC rows between 6 preceding and current row), 2) AS 'average_amount'
FROM TotalAmount) AS Temp
WHERE DATE_SUB(visited_on, INTERVAL 6 DAY) IN (SELECT visited_on FROM TotalAmount)
ORDER BY visited_on ASC