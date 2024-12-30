-------------------------------------------------------
-- day 16: Candy Store Revenue Analysis --
-------------------------------------------------------

-- Author: Anna Szczypka Kuc
-- Tool used: MySQL

-- https://www.sqlcalendar.com/app/sql-challenge/16

/*
Today's Question:

As the owner of a candy store, you want to understand which of your products are selling best. 
Write a query to calculate the total revenue generated from each candy category.
*/

-- Table
--      candy_sales

-- Aggregations, Grouping, Calculations

-- Solution:
SELECT
    category,
    SUM(quantity_sold * price_per_unit) AS total_revenue
FROM 
    candy_sales
GROUP BY 
    category;

/*
SQL Functions and Concepts Used:

1. **SUM():**
   - Calculates the total revenue for each category by summing up the product of `quantity_sold` and `price_per_unit`.

2. **Arithmetic Operations:**
   - Multiplies `quantity_sold` by `price_per_unit` to compute the revenue for each product.

3. **GROUP BY:**
   - Groups the data by `category` to aggregate revenue for each candy category.

4. **Purpose:**
   - This query helps the candy store owner identify which candy categories generate the highest revenue.

5. **Output:**
   - Returns the candy category (`category`) and the total revenue (`total_revenue`) for each category.
*/
