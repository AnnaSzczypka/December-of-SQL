-------------------------------------------------------
-- day 23: Grinch Weight Analysis --
-------------------------------------------------------

-- Author: Anna Szczypka Kuc
-- Tool used: MySQL

-- https://www.sqlcalendar.com/app/sql-challenge/23

/*
Today's Question:

The Grinch tracked his weight every day in December to analyze how it changed daily. 
Write a query to return the weight change (in pounds) for each day, 
calculated as the difference from the previous day's weight.
*/

-- Table
--      grinch_weight_log

-- Window Functions, Lag, Arithmetic Calculations

-- Solution:
WITH Weight AS (
    SELECT
        day_of_month,
        weight,
        LAG(weight) OVER (ORDER BY day_of_month) AS previous_day_weight
    FROM 
        grinch_weight_log
)
SELECT 
    day_of_month,
    (previous_day_weight - weight) AS weight_difference
FROM 
    Weight;

/*
SQL Functions and Concepts Used:

1. **LAG():**
   - Retrieves the weight from the previous day for each row, enabling calculation of day-to-day weight changes.

2. **Window Function with ORDER BY:**
   - Ensures the weight records are processed in the correct chronological order based on `day_of_month`.

3. **Arithmetic Calculations:**
   - Calculates the weight difference by subtracting the current day's weight from the previous day's weight.

4. **Purpose:**
   - This query allows the Grinch to monitor daily weight fluctuations throughout December.

5. **Output:**
   - Returns the `day_of_month` and the corresponding `weight_difference` for each day.
*/
