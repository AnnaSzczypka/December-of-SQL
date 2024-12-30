-------------------------------------------------------
-- day 12: Top Snow Globes by Figurine Count --
-------------------------------------------------------

-- Author: Anna Szczypka Kuc
-- Tool used: MySQL

-- https://www.sqlcalendar.com/app/sql-challenge/12

/*
Today's Question:

A collector wants to identify the top 3 snow globes with the highest number of figurines. 
Write a query to rank them and include their globe_name, number of figurines, and material.
*/

-- Tables
--      snow_globes
--      figurines

-- Joins, Aggregations, Ranking

-- Solution:
WITH GlobeRank AS (
  SELECT
    sg.globe_name, 
    sg.material, 
    COUNT(f.figurine_type) AS num_fig,
    DENSE_RANK() OVER (ORDER BY COUNT(f.figurine_type) DESC) AS fig_rank
  FROM 
    snow_globes sg
  INNER JOIN 
    figurines f 
  ON 
    sg.globe_id = f.globe_id
  GROUP BY 
    sg.globe_name, sg.material
)
SELECT 
  globe_name, 
  num_fig, 
  material 
FROM 
  GlobeRank 
WHERE 
  fig_rank <= 3;

/*
SQL Functions and Concepts Used:

1. **WITH (Common Table Expression):**
   - `GlobeRank` calculates the number of figurines for each snow globe and ranks them based on the count.

2. **INNER JOIN:**
   - Links the `snow_globes` table with the `figurines` table to associate figurines with their respective snow globes.

3. **COUNT():**
   - Counts the number of figurines in each snow globe.

4. **DENSE_RANK():**
   - Assigns rankings to snow globes based on the figurine count, ensuring ties receive the same rank.

5. **Filtering with WHERE:**
   - Filters the results to include only the top 3 snow globes based on their rank (`fig_rank <= 3`).

6. **Purpose:**
   - This query helps the collector identify the most elaborate snow globes based on their figurine count.

7. **Output:**
   - Returns the snow globe's name (`globe_name`), the number of figurines (`num_fig`), and its material (`material`) for the top 3 ranked globes.
*/




 