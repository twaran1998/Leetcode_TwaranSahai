SELECT 
    CASE 
        WHEN MAX(num) IS NOT NULL THEN MAX(num)
        ELSE NULL
    END AS num
FROM (
    SELECT num
    FROM MyNumbers
    GROUP BY num
    HAVING COUNT(num) = 1
) AS single_numbers;
