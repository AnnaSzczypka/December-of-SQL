-------------------------------------------------------
-- day 18: Top-Rated Summer Christmas Activities --
-------------------------------------------------------

-- Author: Anna Szczypka Kuc
-- Tool used: MySQL

-- https://www.sqlcalendar.com/app/sql-challenge/18

/*
Today's Question:

A travel agency is promoting activities for a "Summer Christmas" party. 
They want to identify the top 2 activities based on the average rating. 
Write a query to rank the activities by average rating.
*/

-- Tables
--      activities
--      activity_ratings

-- Joins, Aggregations, Ranking

-- Solution:
WITH ActivityRanking AS (
    SELECT 
        a.activity_name, 
        ROUND(AVG(ar.rating), 2) AS average,
        DENSE_RANK() OVER (ORDER BY AVG(ar.rating) DESC) AS rat_rank
    FROM 
        activities a
    INNER JOIN 
        activity_ratings ar 
    ON 
        a.activity_id = ar.activity_id
    GROUP BY 
        a.activity_name
)
SELECT 
    activity_name, 
    average
FROM 
    ActivityRanking 
WHERE 
    rat_rank <= 2;

/*
SQL Functions and Concepts Used:

1. **WITH (Common Table Expression):**
   - `ActivityRanking` calculates the average rating for each activity and ranks them.

2. **INNER JOIN:**
   - Links the `activities` table with the `activity_ratings` table to associate ratings with activities.

3. **AVG():**
   - Computes the average rating for each activity.

4. **DENSE_RANK():**
   - Assigns a ranking to activities based on their average
