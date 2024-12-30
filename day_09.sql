-------------------------------------------------------
-- day 9: Festive Feasts Menu Analysis --
-------------------------------------------------------

-- Author: Anna Szczypka Kuc
-- Tool used: MySQL

-- https://www.sqlcalendar.com/app/sql-challenge/9

/*
Today's Questions:

1. Identify the top 3 most calorie-dense dishes (calories per gram) served for each event. 
   Include the dish name, event name, and the calculated calorie density in your results.
   
2. Identify the event with the most calorie-dense menu overall (average calorie density of all dishes in the event). 
   Return the event name, average calorie density, and the number of dishes served.
   
3. For each event, determine which dish contributes the highest percentage of total calories for that event. 
   Return the event name, dish name, and the percentage contribution of calories.
*/

-- Tables
--      events
--      menu

-- Ranking, Aggregations, Grouping, Common Table Expressions (CTEs), Subqueries

-- 1. Top 3 most calorie-dense dishes for each event
WITH calories_ranking AS (
    SELECT 
        m.dish_name, 
        e.event_name,
        (m.calories / m.weight_g) AS calories_density,
        DENSE_RANK() OVER (PARTITION BY e.event_id ORDER BY (m.calories / m.weight_g) DESC) AS cal_rank
    FROM 
        events e
    INNER JOIN 
        menu m
    ON 
        e.event_id = m.event_id
)
SELECT 
    *
FROM 
    calories_ranking 
WHERE 
    cal_rank <= 3;

-- 2. Event with the most calorie-dense menu overall
SELECT 
    e.event_name, 
    ROUND(AVG(m.calories / m.weight_g), 2) AS avg_calories_dense,
    COUNT(m.dish_id) AS num_dishes
FROM 
    events e
INNER JOIN 
    menu m
ON 
    e.event_id = m.event_id
GROUP BY 
    e.event_name
ORDER BY 
    avg_calories_dense DESC
LIMIT 1;

-- 3. Dish contributing the highest percentage of total calories for each event
WITH total_event_calories AS (
    SELECT 
        event_id,
        SUM(calories) AS total_calories
    FROM 
        menu
    GROUP BY 
        event_id
)
SELECT 
    e.event_name,
    m.dish_name,
    (m.calories * 100.0 / tec.total_calories) AS calorie_percentage
FROM 
    menu m
JOIN 
    total_event_calories tec 
ON 
    m.event_id = tec.event_id
JOIN 
    events e 
ON 
    m.event_id = e.event_id
WHERE 
    (m.calories * 100.0 / tec.total_calories) = (
        SELECT 
            MAX(calories * 100.0 / total_calories)
        FROM 
            menu
        WHERE 
            event_id = m.event_id
    )
ORDER BY 
    e.event_name;

/*
SQL Functions and Concepts Used:

1. **DENSE_RANK():**
   - Used to rank dishes by calorie density for each event, ensuring ties are handled properly.

2. **Common Table Expressions (CTEs):**
   - Used to simplify calculations such as total calories for each event and ranking dishes.

3. **Aggregations with AVG() and SUM():**
   - Calculates the average calorie density of all dishes for an event and the total calories contributed by each dish.

4. **Window Functions:**
   - Used for dense ranking and calculating calorie density across partitions.

5. **Subqueries and Filtering:**
   - Identifies the dish contributing the highest percentage of total calories for each event.

6. **Sorting and Limiting Results:**
   - Ensures results are ordered and limited as required for each query.
*/

where cal_rank <=3;

/* Identify the event with the most calorie-dense menu overall (average calorie density of all dishes in the event). 
Return the event name, average calorie density, and the number of dishes served. */

select 
e.event_name, 
round(avg(m.calories/m.weight_g),2) as avg_calories_dense,
count(m.dish_id) as num_dishes
from events e
inner join menu m
on e.event_id = m.event_id
group by e.event_name
order by avg_calories_dense desc
limit 1;

/* For each event, determine which dish contributes the highest percentage of total calories for that event. 
Return the event name, dish name, and the percentage contribution of calories. */

WITH total_event_calories AS (
    SELECT 
        event_id,
        SUM(calories) AS total_calories
    FROM 
        menu
    GROUP BY 
        event_id
)
SELECT 
    e.event_name,
    m.dish_name,
    (m.calories * 100.0 / tec.total_calories) AS calorie_percentage
FROM 
    menu m
JOIN 
    total_event_calories tec 
ON 
    m.event_id = tec.event_id
JOIN 
    events e 
ON 
    m.event_id = e.event_id
WHERE 
    (m.calories * 100.0 / tec.total_calories) = (
        SELECT 
            MAX(calories * 100.0 / total_calories)
        FROM 
            menu
        WHERE 
            event_id = m.event_id
    )
ORDER BY 
    e.event_name;