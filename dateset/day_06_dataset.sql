-- Create the 'polar_bears' table
CREATE TABLE polar_bears (
    bear_id INT PRIMARY KEY, -- Unique identifier for each polar bear
    bear_name VARCHAR(50), -- Name of the polar bear
    age INT -- Age of the polar bear in years
);

-- Insert data into the 'polar_bears' table
INSERT INTO polar_bears (bear_id, bear_name, age)
VALUES
    (1, 'Snowball', 10),
    (2, 'Frosty', 7),
    (3, 'Iceberg', 15),
    (4, 'Chilly', 5);

-- Create the 'tracking' table
CREATE TABLE tracking (
    tracking_id INT PRIMARY KEY, -- Unique identifier for each tracking record
    bear_id INT, -- Identifier matching the polar bear
    distance_km INT, -- Distance traveled by the polar bear in kilometers
    date DATE, -- Date of the tracking record
    FOREIGN KEY (bear_id) REFERENCES polar_bears(bear_id) -- Link to polar_bears table
);

-- Insert data into the 'tracking' table
INSERT INTO tracking (tracking_id, bear_id, distance_km, date)
VALUES
    (1, 1, 25, '2024-12-01'),
    (2, 2, 40, '2024-12-02'),
    (3, 1, 30, '2024-12-03'),
    (4, 3, 50, '2024-12-04'),
    (5, 2, 35, '2024-12-05'),
    (6, 4, 20, '2024-12-06'),
    (7, 3, 55, '2024-12-07'),
    (8, 1, 45, '2024-12-08');
