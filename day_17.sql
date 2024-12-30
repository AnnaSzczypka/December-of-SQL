-------------------------------------------------------
-- day 17: The Grinch's Holiday Prank Plans --
-------------------------------------------------------

-- Author: Anna Szczypka Kuc
-- Tool used: MySQL

-- https://www.sqlcalendar.com/app/sql-challenge/17

/*
Today's Question:

The Grinch is planning out his pranks for this holiday season. 
Which pranks have a difficulty level of “Advanced” or “Expert"?
List the prank name and location (both in descending order).
*/

-- Table
--      grinch_pranks

-- Filtering, Ordering Results

-- Solution:
SELECT
    prank_name, 
    location
FROM 
    grinch_pranks
WHERE 
    difficulty = "Advanced" OR difficulty = "Expert"
ORDER BY 
    prank_name DESC, 
    location DESC;

/*
SQL Functions and Concepts Used:

1. **Filtering with WHERE:**
   - Filters the data to include only pranks with a difficulty level of "Advanced" or "Expert".

2. **Logical Operators:**
   - Uses `OR` to combine multiple conditions for filtering.

3. **ORDER BY DESC:**
   - Sorts the results in descending order first by `prank_name` and then by `location`.

4. **Purpose:**
   - This query helps the Grinch prioritize and analyze his most challenging pranks for the holiday season.

5. **Output:**
   - Returns the prank name (`prank_name`) and location (`location`) of all "Advanced" and "Expert" level pranks, sorted in descending order.
*/
