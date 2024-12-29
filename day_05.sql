-------------------------------------------------------
-- day 5: Beach Temperature Predictions 2024 --
-------------------------------------------------------

-- Author: Anna Szczypka Kuc
-- Tool used: MySQL

-- https://www.sqlcalendar.com/app/sql-challenge/5

/*
Today's Question:

This year, we're celebrating Christmas in the Southern Hemisphere! 
Which beaches are expected to have temperatures above 30°C on Christmas Day?
*/

-- tables
--      beach_temperature_predictions

-- Filtering, Conditions

SELECT 
    beach_name, 
    expected_temperature_c, 
    date
FROM 
    beach_temperature_predictions
WHERE 
    expected_temperature_c > 30 
    AND date = '2024-12-25';

/*
SQL Functions and Concepts Used:

1. **WHERE expected_temperature_c > 30:**
   - Filters the results to include only beaches where the expected temperature exceeds 30°C.

2. **AND date = '2024-12-25':**
   - Adds an additional condition to only consider predictions for Christmas Day (December 25, 2024).

3. **SELECT:**
   - Retrieves the beach name, expected temperature, and date for the filtered results.
*/