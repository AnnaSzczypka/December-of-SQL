-------------------------------------------------------
-- day 21: Optimizing Santa's Sleigh --
-------------------------------------------------------

-- Author: Anna Szczypka Kuc
-- Tool used: MySQL

-- https://www.sqlcalendar.com/app/sql-challenge/21

/*
Today's Question:

Santa needs to optimize his sleigh for Christmas deliveries. 
Write a query to calculate the total weight of gifts for each 
recipient type (good or naughty) and determine what percentage of the total weight is allocated to each type. 
Include the recipient_type, total_weight, and weight_percentage in the result.
*/

-- Table
--      gifts

-- Aggregations, Common Table Expressions (CTEs), Cross Join

-- Solution:
WITH TotalWeight AS (
    SELECT
        recipient_type, 
        SUM(weight_kg) AS total_weight
    FROM 
        gifts
    GROUP BY 
        recipient_type
),
GrandTotal AS (
    SELECT 
        SUM(weight_kg) AS grand_total 
    FROM 
        gifts
)
SELECT
    recipient_type,
    total_weight,
    ROUND(((total_weight / grand_total) * 100), 2) AS weight_percentage
FROM 
    TotalWeight
CROSS JOIN 
    GrandTotal;

/*
SQL Functions and Concepts Used:

1. **Common Table Expressions (CTEs):**
   - `TotalWeight` calculates the total weight of gifts for each `recipient_type`.
   - `GrandTotal` calculates the overall total weight of all gifts.

2. **CROSS JOIN:**
   - Combines the results of `TotalWeight` and `GrandTotal` to allow calculation of the percentage.

3. **Aggregation with SUM():**
   - Used to calculate the total weight for each type and the overall grand total.

4. **ROUND():**
   - Rounds the weight percentage to 2 decimal places for clarity.

5. **Purpose:**
   - This query helps Santa balance his sleigh by analyzing the distribution of gift weights between "good" and "naughty" recipients.

6. **Output:**
   - Displays `recipient_type`, `total_weight`, and `weight_percentage` for each type.
*/
