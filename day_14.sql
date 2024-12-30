-------------------------------------------------------
-- day 14: Identifying High-Snowfall Ski Resorts --
-------------------------------------------------------

-- Author: Anna Szczypka Kuc
-- Tool used: MySQL

-- https://www.sqlcalendar.com/app/sql-challenge/14

/*
Today's Question:

Which ski resorts had snowfall greater than 50 inches?
*/

-- Table
--      snowfall

-- Filtering, Simple Query

-- Solution:
SELECT
    resort_name
FROM 
    snowfall
WHERE 
    snowfall_inches > 50;

/*
SQL Functions and Concepts Used:

1. **Filtering with WHERE:**
   - Filters the ski resorts to include only those with snowfall greater than 50 inches.

2. **Purpose:**
   - This query identifies the ski resorts with significant snowfall, which could be of interest to skiers or weather analysts.

3. **Output:**
   - Returns the names of the ski resorts (`resort_name`) with snowfall exceeding 50 inches.
*/
