-------------------------------------------------------
-- day 15: Ranking the Parents with the Most Children --
-------------------------------------------------------

-- Author: Anna Szczypka Kuc
-- Tool used: MySQL

-- https://www.sqlcalendar.com/app/sql-challenge/15

/*
Today's Question:

A family reunion is being planned, and the organizer wants to identify 
the three family members with the most children. Write a query to calculate 
the total number of children for each parent and rank them. 
Include the parent’s name and their total number of children in the result.
*/

-- Tables
--      family_members
--      parent_child_relationships

-- Joins, Aggregations, Ranking

-- Solution:
WITH KidsRanking AS (
    SELECT 
        fm.name, 
        COUNT(pcr.child_id) AS num_of_kids,
        DENSE_RANK() OVER (ORDER BY COUNT(pcr.child_id) DESC) AS rank_rank
    FROM 
        family_members fm
    INNER JOIN 
        parent_child_relationships pcr
    ON 
        fm.member_id = pcr.parent_id
    GROUP BY 
        fm.name
)
SELECT 
    name, 
    num_of_kids
FROM 
    KidsRanking
WHERE 
    rank_rank <= 3;

/*
SQL Functions and Concepts Used:

1. **WITH (Common Table Expression):**
   - `KidsRanking` calculates the total number of children for each parent and ranks them.

2. **INNER JOIN:**
   - Links the `family_members` table with the `parent_child_relationships` table to associate parents with their children.

3. **COUNT():**
   - Counts the total number of children for each parent.

4. **DENSE_RANK():**
   - Ranks parents based on the number of children, handling ties appropriately.

5. **Filtering with WHERE:**
   - Limits the result to the top 3 ranked parents based on the number of children.

6. **Purpose:**
   - This query helps identify the parents with the most children for planning purposes.

7. **Output:**
   - Returns the parent’s name (`name`) and their total number of children (`num_of_kids`) for the top 3 ranked parents.
*/
