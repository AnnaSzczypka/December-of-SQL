-------------------------------------------------------
-- day 6: Polar Bear Tracking Analysis 2024 --
-------------------------------------------------------

-- Author: Anna Szczypka Kuc
-- Tool used: MySQL

-- https://www.sqlcalendar.com/app/sql-challenge/6

/*
Today's Question:

Scientists are tracking polar bears across the Arctic to monitor their migration patterns and caloric intake. 
Write a query to find the top 3 polar bears that have traveled the longest total distance in December 2024. 
Include their bear_id, bear_name, and total_distance_traveled in the results.
*/

-- tables
--      polar_bears
--      tracking

-- Window Functions, Ranking, Aggregations

WITH ranked_bears AS (
    SELECT
        pb.bear_id,
        pb.bear_name,
        SUM(t.distance_km) AS total_distance_traveled,
        RANK() OVER (ORDER BY SUM(t.distance_km) DESC) AS sum_rank
    FROM
        polar_bears pb
    JOIN
        tracking t
    ON
        pb.bear_id = t.bear_id
    WHERE
        t.date BETWEEN '2024-12-01' AND '2024-12-31'
    GROUP BY
        pb.bear_id, pb.bear_name
)
SELECT
    bear_id,
    bear_name,
    total_distance_traveled
FROM
    ranked_bears
WHERE
    sum_rank <= 3;

/*
Additional Questions:

1. **Which polar bear had the most consistent daily distance in December 2024?**
   Find the polar bear with the smallest standard deviation of daily distances traveled.
*/

SELECT 
    pb.bear_name, 
    STDDEV(t.distance_km) AS distance_std_dev
FROM 
    tracking t
JOIN 
    polar_bears pb
ON 
    t.bear_id = pb.bear_id
WHERE 
    t.date BETWEEN '2024-12-01' AND '2024-12-31'
GROUP BY 
    pb.bear_name
ORDER BY 
    distance_std_dev ASC
LIMIT 1;

/*
2. **Which three polar bears traveled the farthest combined distance over a continuous 5-day period in December 2024?**
   Find the top 3 bears with the highest total distance over any 5-day sliding window.
*/

WITH BearDailyDistances AS (
    SELECT 
        t.bear_id, 
        pb.bear_name, 
        t.date, 
        SUM(t.distance_km) OVER (
            PARTITION BY t.bear_id 
            ORDER BY t.date 
            ROWS BETWEEN 4 PRECEDING AND CURRENT ROW
        ) AS rolling_distance
    FROM 
        tracking t
    JOIN 
        polar_bears pb
    ON 
        t.bear_id = pb.bear_id
    WHERE 
        t.date BETWEEN '2024-12-01' AND '2024-12-31'
)
SELECT 
    bear_name, 
    MAX(rolling_distance) AS max_5_day_distance
FROM 
    BearDailyDistances
GROUP BY 
    bear_name
ORDER BY 
    max_5_day_distance DESC
LIMIT 3;

/*
SQL Functions and Concepts Used:

1. **WITH (Common Table Expression):**
   - Simplifies the query by creating temporary result sets that can be reused in the main query.

2. **RANK() OVER (ORDER BY SUM(t.distance_km) DESC):**
   - Assigns ranks to polar bears based on total distance traveled, ordered from highest to lowest.

3. **STDDEV():**
   - Calculates the standard deviation of daily distances to measure consistency.

4. **Window Functions (ROWS BETWEEN 4 PRECEDING AND CURRENT ROW):**
   - Calculates a rolling sum of distances over a continuous 5-day window for each bear.

5. **GROUP BY and Aggregations:**
   - Groups data by bear name or region for summarizing results.
*/

