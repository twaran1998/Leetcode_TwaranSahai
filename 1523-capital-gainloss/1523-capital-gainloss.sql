# Write your MySQL query statement below
SELECT stock_name,
SUM(
Case
	When operation='Buy' then -price
	When operation='Sell' then price
End) 
As capital_gain_loss
FROM Stocks
Group By stock_name