# Write your MySQL query statement below
WITH DuplicateEmails AS (
    SELECT id,
           email,
           ROW_NUMBER() OVER (PARTITION BY email ORDER BY id) AS row_num
    FROM Person
)
DELETE FROM Person
WHERE id IN (
    SELECT id
    FROM DuplicateEmails
    WHERE row_num > 1
);
