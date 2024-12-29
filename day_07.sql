-------------------------------------------------------
-- day 7: Winter Market Revenue Analysis 2024 --
-------------------------------------------------------

-- Author: Anna Szczypka Kuc
-- Tool used: MySQL

-- https://www.sqlcalendar.com/app/sql-challenge/7

/*
Today's Question:

The owner of a winter market wants to know which vendors have generated the highest revenue overall. 
For each vendor, calculate the total revenue for all their items and return a list of the top 2 vendors by total revenue. 
Include the vendor_name and total_revenue in your results.
*/

-- tables
--      vendors
--      sales

-- Window Functions, Aggregations, Ranking

WITH VendorsRanking AS (
    SELECT 
        v.vendor_name, 
        SUM(s.quantity_sold * s.price_per_unit) AS revenue,
        DENSE_RANK() OVER (ORDER BY SUM(s.quantity_sold * s.price_per_unit) DESC) AS revenue_rank
    FROM 
        vendors v
    LEFT JOIN 
        sales s 
    ON 
        v.vendor_id = s.vendor_id 
    GROUP BY 
        v.vendor_name
)
SELECT 
    *
FROM 
    VendorsRanking
WHERE 
    revenue_rank <= 2;

/*
Additional Questions:

1. **For each market location, find the vendor who generated the highest revenue.**
   Find the vendor with the highest total revenue in each market location and include the market location, vendor name, and total revenue.
*/

WITH VendorRevenue AS (
    SELECT
        v.market_location,
        v.vendor_name,
        SUM(s.quantity_sold * s.price_per_unit) AS total_revenue
    FROM
        vendors v
    JOIN
        sales s
    ON
        v.vendor_id = s.vendor_id
    GROUP BY
        v.market_location, v.vendor_name
),
RankedVendors AS (
    SELECT
        market_location,
        vendor_name,
        total_revenue,
        RANK() OVER (PARTITION BY market_location ORDER BY total_revenue DESC) AS revenue_rank
    FROM
        VendorRevenue
)
SELECT
    market_location,
    vendor_name,
    total_revenue
FROM
    RankedVendors
WHERE
    revenue_rank = 1;

/*
2. **Find the most popular item (by total quantity sold) across all vendors, and calculate its total revenue and the number of vendors selling it.**
   Determine which item had the highest total quantity sold across all vendors, its total revenue, and the number of vendors that sold it.
*/

WITH ItemSales AS (
    SELECT
        s.item_name,
        SUM(s.quantity_sold) AS total_quantity_sold,
        SUM(s.quantity_sold * s.price_per_unit) AS total_revenue,
        COUNT(DISTINCT s.vendor_id) AS vendors_selling
    FROM
        sales s
    GROUP BY
        s.item_name
)
SELECT
    item_name,
    total_quantity_sold,
    total_revenue,
    vendors_selling
FROM
    ItemSales
ORDER BY
    total_quantity_sold DESC
LIMIT 1;

/*
SQL Functions and Concepts Used:

1. **DENSE_RANK() OVER (ORDER BY revenue DESC):**
   - Ranks vendors based on their total revenue, with ties receiving the same rank.

2. **LEFT JOIN:**
   - Combines data from the `vendors` and `sales` tables to calculate total revenue per vendor.

3. **SUM(quantity_sold * price_per_unit):**
   - Calculates total revenue for each vendor or item.

4. **RANK() OVER (PARTITION BY market_location ORDER BY total_revenue DESC):**
   - Finds the top revenue-generating vendor for each market location.

5. **COUNT(DISTINCT vendor_id):**
   - Counts the number of vendors selling a specific item.
*/
