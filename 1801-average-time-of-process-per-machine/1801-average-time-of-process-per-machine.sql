WITH ProcessTimes AS (
    SELECT
        a.machine_id,
        a.process_id,
        (b.timestamp - a.timestamp) AS time_to_complete
    FROM Activity a
    JOIN Activity b
    ON a.machine_id = b.machine_id
    AND a.process_id = b.process_id
    AND a.activity_type = 'start'
    AND b.activity_type = 'end'
    AND a.timestamp < b.timestamp
),
MachineTimes AS (
    SELECT
        machine_id,
        AVG(time_to_complete) AS processing_time
    FROM ProcessTimes
    GROUP BY machine_id
)
SELECT
    machine_id,
    ROUND(processing_time, 3) AS processing_time
FROM MachineTimes;