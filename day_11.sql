-------------------------------------------------------
-- day 11: Holiday Gifts and Family Birthdays --
-------------------------------------------------------

-- Author: Anna Szczypka Kuc
-- Tool used: MySQL

-- https://www.sqlcalendar.com/app/sql-challenge/11

/*
Today's Questions:

1. Who in the `family_members` table are celebrating their birthdays in December 2024? 
   List their name and birthday.

2. Write an SQL query to find the names and relationships of family members whose birthdays 
   are in the first half of the year (January to June).

3. Write an SQL query to list all family members in alphabetical order by their name, along 
   with their birthday.
*/

-- Table
--      family_members

-- Filtering, Date Functions, Sorting

-- 1. Family members celebrating their birthdays in December 2024
SELECT 
    name, birthday 
FROM 
    family_members
WHERE 
    birthday BETWEEN '2024-12-01' AND '2024-12-31';

-- 2. Family members with birthdays in the first half of the year
-- Method 1: Using explicit date ranges
SELECT 
    name, relationship
FROM 
    family_members
WHERE 
    birthday BETWEEN '2024-01-01' AND '2024-06-30';

-- Method 2: Using the MONTH() function
SELECT 
    name, relationship
FROM 
    family_members
WHERE 
    MONTH(birthday) BETWEEN 1 AND 6;

-- 3. List all family members in alphabetical order by their name, along with their birthday
SELECT 
    name, birthday 
FROM 
    family_members
ORDER BY 
    name;

/*
SQL Functions and Concepts Used:

1. **BETWEEN:**
   - Used to filter records based on date ranges (e.g., December birthdays or January–June birthdays).

2. **MONTH():**
   - A MySQL date function used to extract the month from the `birthday` column, allowing for filtering by months.

3. **ORDER BY:**
   - Alphabetically sorts the names of family members while displaying additional columns like their birthdays.

4. **Date Filtering:**
   - Demonstrates how to query specific timeframes effectively using date functions.

5. **Multiple Approaches:**
   - Provides alternative solutions for filtering by months, ensuring flexibility and demonstrating SQL versatility.
*/
