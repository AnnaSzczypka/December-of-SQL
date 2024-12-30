-------------------------------------------------------
-- day 19: Polar Bear Diet Analysis --
-------------------------------------------------------

-- Author: Anna Szczypka Kuc
-- Tool used: MySQL

-- https://www.sqlcalendar.com/app/sql-challenge/19

/*
Today's Question:

Scientists are studying the diets of polar bears. 
Write a query to find the maximum amount of food (in kilograms) 
consumed by each polar bear in a single meal in December 2024. 
Include the bear_name and biggest_meal_kg, and sort the results in descending order of largest meal consumed.
*/

-- Tables
--      polar_bears
--      meal_log

-- Joins, Filtering, Aggregations

-- Solution:
SELECT
    pb.bear_name, 
    MAX(ml.food_weight_kg) AS biggest_meal_kg
FROM 
    polar_bears pb
INNER JOIN 
    meal_log ml
ON 
    pb.bear_id = ml.bear_id
WHERE 
    ml.date BETWEEN '2024-12-01' AND '2024-12-31'
GROUP BY 
    pb.bear_name
ORDER BY 
    biggest_meal_kg DESC;

/*
SQL Functions and Concepts Used:

1. **INNER JOIN:**
   - Links the `polar_bears` table with the `meal_log` table to associate meals with each polar bear.

2. **Filtering with WHERE:**
   - Filters the data to include only meals logged in December 2024.

3. **MAX() with GROUP BY:**
   - Calculates the maximum amount of food consumed in a single meal for each bear, grouping by `bear_name`.

4. **ORDER BY DESC:**
   - Sorts the results in descending order of the largest meal consumed.

5. **Purpose:**
   - This query allows scientists to identify and analyze the largest meals consumed by each polar bear during December.

6. **Output:**
   - Returns the bear name (`bear_name`) and the maximum meal weight (`biggest_meal_kg`) for each bear, sorted by the largest meal.
*/
