-------------------------------------------------------
-- day 2: Identifying Heavy Gifts --
-------------------------------------------------------

-- Author: Anna Szczypka Kuc
-- Tool used: MySQL

-- https://www.sqlcalendar.com/app/sql-challenge/2

/*
Today's Question:

Santa wants to know which gifts weigh more than 1 kg. 
Can you list them?
*/

-- Table
--      gifts

-- Filtering

-- Solution:
SELECT 
    * 
FROM 
    gifts 
WHERE 
    weight_kg > 1;

/*
SQL Functions and Concepts Used:

1. **Filtering with WHERE:**
   - Filters the gifts to include only those with a weight greater than 1 kg (`weight_kg > 1`).

2. **Purpose:**
   - Helps Santa identify which gifts are heavier and may need special attention for sleigh packing.

3. **Output:**
   - Returns all columns (`*`) for gifts weighing more than 1 kg.
*/
