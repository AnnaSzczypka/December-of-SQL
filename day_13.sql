-------------------------------------------------------
-- day 13: Balancing Santa's Sleigh --
-------------------------------------------------------

-- Author: Anna Szczypka Kuc
-- Tool used: MySQL

-- https://www.sqlcalendar.com/app/sql-challenge/13

/*
Today's Question:

We need to make sure Santa's sleigh is properly balanced. 
Find the total weight of gifts for each recipient.
*/

-- Table
--      gifts

-- Aggregations, Grouping

-- Solution:
SELECT 
    recipient_type, 
    SUM(weight_kg) AS total_weight
FROM 
    gifts
GROUP BY 
    recipient_type;

/*
SQL Functions and Concepts Used:

1. **SUM():**
   - Calculates the total weight of gifts for each recipient type.

2. **GROUP BY:**
   - Groups the data by `recipient_type` to aggregate the weights for each group.

3. **Purpose:**
   - This query ensures that Santa can balance his sleigh by understanding the distribution of gift weights between recipient types.

4. **Output:**
   - Returns the recipient type (`recipient_type`) and the corresponding total weight (`total_weight`) of gifts for each group.
*/



