-------------------------------------------------------
-- day 8: Santa's Workshop Inventory Management --
-------------------------------------------------------

-- Author: Anna Szczypka Kuc
-- Tool used: MySQL

-- https://www.sqlcalendar.com/app/sql-challenge/8

/*
Today's Questions:

1. Which gifts are meant for "good" recipients? List the gift name and its weight.
2. Find the heaviest gift among all "naughty" recipients' gifts. List its name and weight.
3. Calculate the total weight of all gifts for each recipient type. List the recipient type along with the total weight.
*/

-- Table
--      gifts

-- Filtering, Aggregations, Grouping, CTEs, Subqueries

-- 1. Gifts for "good" recipients
SELECT 
    gift_name, weight_kg
FROM 
    gifts 
WHERE 
    recipient_type = "good";

-- 2. Heaviest gift for "naughty" recipients
SELECT 
    gift_name, MAX(weight_kg) AS the_heaviest_gift 
FROM 
    gifts
WHERE 
    recipient_type = "naughty"
GROUP BY 
    gift_name
ORDER BY 
    the_heaviest_gift DESC
LIMIT 1;

-- 3. Calculate the total weight of gifts for each recipient type
WITH g1 AS (
    SELECT 
        gift_name, 
        SUM(weight_kg) AS total_sum
    FROM 
        gifts
    GROUP BY 
        gift_name
), g2 AS (
    SELECT 
        gift_name, 
        recipient_type
    FROM 
        gifts
)
SELECT 
    recipient_type, 
    SUM(weight_kg) AS total_weight
FROM 
    gifts
GROUP BY 
    recipient_type;

/*
SQL Functions and Concepts Used:

1. **Filtering with WHERE:**
   - Filters the rows based on the recipient type ('good' or 'naughty').

2. **Aggregations with MAX() and SUM():**
   - MAX() identifies the heaviest gift for "naughty" recipients.
   - SUM() calculates the total weight of gifts grouped by recipient type.

3. **Grouping with GROUP BY:**
   - Ensures correct aggregation for each group (e.g., gifts by recipient type).

4. **Common Table Expressions (CTEs):**
   - Used to organize the query into logical steps for improved readability and modular design.

5. **Sorting and Limiting Results:**
   - ORDER BY combined with LIMIT helps retrieve the heaviest gift efficiently.
*/

            