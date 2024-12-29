-------------------------------------------------------
-- day 3: Candy Calorie Ranking Analysis 2024 --
-------------------------------------------------------

-- Author: Anna Szczypka Kuc
-- Tool used: MySQL

-- https://www.sqlcalendar.com/app/sql-challenge/3

/*
Today's Question:

You’re trying to identify the most calorie-packed candies to avoid during your holiday binge. 
Write a query to rank candies based on their calorie count within each category. 
Include the candy_name, candy_category, calories, and rank (rank_in_category) within the category.
*/

-- tables
--      candy_nutrition

-- Window Functions, Ranking

SELECT 
    candy_name, 
    candy_category, 
    calories,
    DENSE_RANK() OVER (PARTITION BY candy_category ORDER BY calories DESC) AS rank_in_category
FROM 
    candy_nutrition;

/*
SQL Functions and Concepts Used:

1. **DENSE_RANK() OVER (PARTITION BY candy_category ORDER BY calories DESC):**
   - Assigns a rank to each candy within its category based on calorie count, ordered from highest to lowest.
   - Uses `PARTITION BY` to ensure ranking is performed independently for each candy category.
   - Ensures that candies with the same calorie count receive the same rank, with no gaps in ranking.

2. **SELECT with Window Functions:**
   - Combines columns from the table with computed values (ranks) to provide detailed insights.
*/
