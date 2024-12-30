-------------------------------------------------------
-- day 24: Tracking Santa's Gift Deliveries --
-------------------------------------------------------

-- Author: Anna Szczypka Kuc
-- Tool used: MySQL

-- https://www.sqlcalendar.com/app/sql-challenge/24

/*
Today's Question:

Santa is tracking how many presents he delivers each night leading up to Christmas. 
He wants a running total to see how many gifts have been delivered so far on any given night. 
Using the deliveries table, calculate the cumulative sum of gifts delivered, ordered by the delivery date.
*/

-- Table
--      deliveries

-- Window Functions, Aggregations

-- Solution:
SELECT
    delivery_date,
    SUM(gifts_delivered) OVER (ORDER BY delivery_date) AS running_total
FROM 
    deliveries;

/*
SQL Functions and Concepts Used:

1. **SUM() with OVER():**
   - Used to calculate the cumulative sum (running total) of gifts delivered up to any given date.

2. **ORDER BY within the Window Function:**
   - Ensures the cumulative sum is calculated in the correct chronological order based on `delivery_date`.

3. **Purpose:**
   - This query provides insight into how many gifts Santa has delivered cumulatively as he progresses through the days leading up to Christmas.

4. **Output:**
   - Returns each `delivery_date` along with the corresponding running total of gifts delivered by that date.
*/

