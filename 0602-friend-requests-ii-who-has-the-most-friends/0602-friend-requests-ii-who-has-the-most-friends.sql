WITH CTE AS(
SELECT requester_id , accepter_id
FROM RequestAccepted
UNION ALL
SELECT accepter_id , requester_id
FROM RequestAccepted
)
SELECT requester_id id, count(accepter_id) num
FROM CTE
group by 1
ORDER BY 2 DESC
LIMIT 1