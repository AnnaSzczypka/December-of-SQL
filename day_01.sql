-------------------------------------------------------
-- day 1: Ski Resort Activity Analysis 2024 --
-------------------------------------------------------

-- Author: Anna Szczypka Kuc
-- Date: 5.12.2024
-- Tool used: MySQL

-- https://www.sqlcalendar.com/app/sql-challenge/1

/*
Today's Question:

A ski resort company wants to know which customers rented ski equipment for more than one type of activity (e.g., skiing and snowboarding). 
List the customer names and the number of distinct activities they rented equipment for.
*/

-- tables
--      rentals

-- Grouping, Aggregations

SELECT
    customer_name,
    COUNT(DISTINCT activity) AS distinct_activities
FROM 
    rentals
GROUP BY 
    customer_name
HAVING 
    COUNT(DISTINCT activity) > 1;
    
/*
SQL Functions and Concepts Used:

1. **COUNT(DISTINCT activity):**
   - Aggregates the number of distinct activities for each customer.
   - Ensures no duplicates in the count for the same activity.

2. **GROUP BY customer_name:**
   - Groups the data by each customer, allowing aggregation within each group.

3. **HAVING COUNT(DISTINCT activity) > 1:**
   - Filters the grouped results to include only customers with more than one distinct activity.
   - HAVING is used instead of WHERE because it filters after the aggregation.
*/    