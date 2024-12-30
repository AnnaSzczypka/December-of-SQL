-------------------------------------------------------
-- day 20: Finding Affordable Market Gifts --
-------------------------------------------------------

-- Author: Anna Szczypka Kuc
-- Tool used: MySQL

-- https://www.sqlcalendar.com/app/sql-challenge/20

/*
Today's Question:

We are looking for cheap gifts at the market. Which vendors are selling items priced below $10? 
List the unique (i.e. remove duplicates) vendor names.
*/

-- Tables
--      vendors
--      item_prices

-- Filtering, Joins, Removing Duplicates

-- Solution:
SELECT DISTINCT
    v.vendor_name
FROM 
    vendors v
INNER JOIN 
    item_prices ip
ON 
    v.vendor_id = ip.vendor_id 
WHERE 
    ip.price_usd < 10;

/*
SQL Functions and Concepts Used:

1. **INNER JOIN:**
   - Links the `vendors` table with the `item_prices` table based on `vendor_id` to access both vendor and item information.

2. **Filtering with WHERE:**
   - Filters for items with a price less than $10 (`ip.price_usd < 10`).

3. **DISTINCT:**
   - Ensures the result contains only unique vendor names, even if multiple items from the same vendor meet the criteria.

4. **Purpose:**
   - This query helps identify vendors offering affordable gifts, ensuring the results are unique and relevant.

5. **Output:**
   - Returns a list of vendor names who sell at least one item priced below $10.
*/
