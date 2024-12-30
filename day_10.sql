-------------------------------------------------------
-- day 10: New Year’s Resolution Tracking --
-------------------------------------------------------

-- Author: Anna Szczypka Kuc
-- Tool used: MySQL

-- https://www.sqlcalendar.com/app/sql-challenge/10

/*
Today's Questions:

1. Track your friends' New Year’s resolution progress by calculating:
   - Total number of resolutions made.
   - Number of resolutions completed.
   - Success percentage (% of resolutions completed).
   - Success category based on the success percentage:
       - Green: Success percentage > 75%.
       - Yellow: Success percentage between 50% and 75% (inclusive).
       - Red: Success percentage < 50%.

2. Find the friend with the highest success percentage in completing their resolutions. 
   If there are ties, list all such friends. 
   Return the friend's name, total number of resolutions, successful resolutions, and success percentage.
*/

-- Table
--      resolutions

-- Aggregations, Common Table Expressions (CTEs), Ranking, Conditional Logic

-- Solution 1: Resolution Tracking with Success Categories
WITH ResolutionsSummary AS (
    SELECT 
        friend_name,
        COUNT(resolution) AS all_resolution,
        SUM(is_completed) AS successful_resolutions
    FROM 
        resolutions
    GROUP BY 
        friend_name
),
PercentageOfSuccess AS (
    SELECT 
        friend_name,
        all_resolution,
        successful_resolutions,
        ((successful_resolutions * 1.0 / all_resolution) * 100) AS percentage_success
    FROM 
        ResolutionsSummary
)
SELECT 
    friend_name, 
    all_resolution, 
    successful_resolutions, 
    percentage_success,
    CASE 
        WHEN percentage_success > 75 THEN 'green'
        WHEN percentage_success BETWEEN 50 AND 75 THEN 'yellow'
        ELSE 'red'
    END AS success_category
FROM 
    PercentageOfSuccess;

-- Solution 2: Finding the Friend(s) with the Highest Success Percentage
WITH SuccessRanking AS (
    SELECT 
        friend_name, 
        COUNT(resolution) AS all_resolutions,
        SUM(is_completed) AS successful_resolutions,
        ROUND(((SUM(is_completed) * 1.0 / COUNT(resolution)) * 100), 2) AS percentage_success,
        DENSE_RANK() OVER (ORDER BY ROUND(((SUM(is_completed) * 1.0 / COUNT(resolution)) * 100), 2) DESC) AS success_rank
    FROM 
        resolutions
    GROUP BY 
        friend_name
)
SELECT 
    *
FROM 
    SuccessRanking 
WHERE 
    success_rank = 1;

/*
SQL Functions and Concepts Used:

1. **Common Table Expressions (CTEs):**
   - Used to modularize the query and separate the summary and ranking logic for better readability.

2. **COUNT() and SUM():**
   - Count the total resolutions and sum the completed resolutions for each friend.

3. **Arithmetic Calculations:**
   - Calculate success percentages by dividing the number of completed resolutions by the total resolutions.

4. **DENSE_RANK():**
   - Used to rank friends based on their success percentage, handling ties appropriately.

5. **CASE Statements:**
   - Categorizes success percentages into `green`, `yellow`, and `red` categories based on predefined thresholds.

6. **Purpose:**
   - Helps track New Year’s resolution progress and identify top-performing friends for inspiration or recognition.

7. **Output:**
   - Solution 1: Returns each friend’s resolution details, success percentage, and success category.
   - Solution 2: Identifies the friend(s) with the highest success percentage, including ties.
*/
