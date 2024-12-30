-- Create the 'polar_bears' table
CREATE TABLE polar_bears (
    bear_id INT PRIMARY KEY,       -- Unique identifier for each polar bear
    bear_name VARCHAR(50),         -- Name of the polar bear
    age INT                        -- Age of the polar bear
);

-- Insert data into the 'polar_bears' table
INSERT INTO polar_bears (bear_id, bear_name, age) VALUES
(1, 'Snowball', 10),
(2, 'Frosty', 7),
(3, 'Iceberg', 15);

-- Create the 'meal_log' table
CREATE TABLE meal_log (
    log_id INT PRIMARY KEY,        -- Unique identifier for each meal log
    bear_id INT,                   -- Foreign key referencing polar_bears(bear_id)
    food_type VARCHAR(50),         -- Type of food consumed
    food_weight_kg INT,            -- Weight of the food in kilograms
    date DATE,                     -- Date of the meal
    FOREIGN KEY (bear_id) REFERENCES polar_bears(bear_id) -- Links meal to polar bear
);

-- Insert data into the 'meal_log' table
INSERT INTO meal_log (log_id, bear_id, food_type, food_weight_kg, date) VALUES
(1, 1, 'Seal', 30, '2024-12-01'),
(2, 1, 'Fish', 15, '2024-12-02'),
(3, 1, 'Fish', 10, '2024-12-03'),
(4, 3, 'Seal', 25, '2024-12-04'),
(5, 3, 'Seal', 20, '2024-12-05'),
(6, 3, 'Fish', 18, '2024-12-06');
