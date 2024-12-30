-------------------------------------------------------
-- day 22: Ensuring Every Guest Gets a Gift --
-------------------------------------------------------

-- Author: Anna Szczypka Kuc
-- Tool used: MySQL

-- https://www.sqlcalendar.com/app/sql-challenge/22

/*
Today's Question:

We are hosting a gift party and need to ensure every guest receives a gift. 
Using the `guests` and `guest_gifts` tables, write a query to identify the guest(s) 
who have not been assigned a gift (i.e., they are not listed in the `guest_gifts` table).
*/

-- Tables
--      guests
--      guest_gifts

-- Joins, Filtering for Null Values

-- Solution:
SELECT
    *
FROM 
    guests g
LEFT JOIN 
    guest_gifts gg
ON 
    g.guest_id = gg.guest_id
WHERE 
    gg.gift_id IS NULL;

/*
SQL Functions and Concepts Used:

1. **LEFT JOIN:**
   - Ensures all guests from the `guests` table are included, even if they do not have a corresponding entry in the `guest_gifts` table.

2. **Filtering for NULL Values:**
   - Identifies guests who have no assigned gifts by checking for `NULL` values in the `gift_id` column of the `guest_gifts` table.

3. **Purpose:**
   - This query ensures that no guest is left without a gift during the party.

4. **Output:**
   - Returns the details of guests who have not been assigned a gift.
*/
