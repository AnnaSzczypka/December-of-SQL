-- Create the 'events' table
CREATE TABLE events (
    event_id INT PRIMARY KEY, -- Unique identifier for each event
    event_name VARCHAR(50)    -- Name of the event
);

-- Insert data into the 'events' table
INSERT INTO events (event_id, event_name) VALUES
(1, 'Christmas Eve Dinner'),
(2, 'New Years Feast'),
(3, 'Winter Solstice Potluck');

-- Create the 'menu' table
CREATE TABLE menu (
    dish_id INT PRIMARY KEY,  -- Unique identifier for each dish
    dish_name VARCHAR(50),    -- Name of the dish
    event_id INT,             -- Foreign key referencing events
    calories INT,             -- Total calories in the dish
    weight_g INT,             -- Total weight of the dish in grams
    FOREIGN KEY (event_id) REFERENCES events(event_id)
);

-- Insert data into the 'menu' table
INSERT INTO menu (dish_id, dish_name, event_id, calories, weight_g) VALUES
(1, 'Roast Turkey', 1, 3500, 5000),
(2, 'Chocolate Yule Log', 1, 2200, 1000),
(3, 'Cheese Fondue', 2, 1500, 800),
(4, 'Holiday Fruitcake', 3, 4000, 1200),
(5, 'Honey Glazed Ham', 2, 2800, 3500);
