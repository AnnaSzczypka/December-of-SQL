-------------------------------------------------------
-- day 4: Ski Regions Snowfall Analysis 2024 --
-------------------------------------------------------

-- Author: Anna Szczypka Kuc
-- Tool used: MySQL

-- https://www.sqlcalendar.com/app/sql-challenge/4

/*
Today's Question:

You’re planning your next ski vacation and want to find the best regions with heavy snowfall. 
Given the tables ski_resorts and snowfall, find the average snowfall for each region 
and sort the regions in descending order of average snowfall. 
Return the columns region and average_snowfall.
*/

-- tables
--      ski_resorts
--      snowfall

-- Joins, Aggregations, Grouping

SELECT 
    sk.region, 
    AVG(sf.snowfall_inches) AS avg_snowfall
FROM 
    ski_resorts sk
LEFT JOIN 
    snowfall sf
ON 
    sk.resort_id = sf.resort_id
GROUP BY 
    sk.region
ORDER BY 
    avg_snowfall DESC;

/*
SQL Functions and Concepts Used:

1. **LEFT JOIN:**
   - Combines data from the `ski_resorts` and `snowfall` tables based on `resort_id`, ensuring all regions are included even if they have no snowfall data.

2. **AVG():**
   - Calculates the average snowfall for each region.

3. **GROUP BY sk.region:**
   - Groups the data by region to perform aggregation for each region.

4. **ORDER BY avg_snowfall DESC:**
   - Sorts the results in descending order of average snowfall to identify regions with the highest snowfall first.
*/
