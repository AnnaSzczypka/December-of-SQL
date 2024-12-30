-- Create the 'resolutions' table
CREATE TABLE resolutions (
    resolution_id INT PRIMARY KEY,     -- Unique identifier for each resolution
    friend_name VARCHAR(50),          -- Name of the friend
    resolution VARCHAR(100),          -- Description of the resolution
    is_completed TINYINT              -- Whether the resolution is completed (1 for true, 0 for false)
);

-- Insert data into the 'resolutions' table
INSERT INTO resolutions (resolution_id, friend_name, resolution, is_completed) VALUES
(1, 'Alice', 'Exercise daily', 1),
(2, 'Alice', 'Read 20 books', 0),
(3, 'Bob', 'Save money', 0),
(4, 'Bob', 'Eat healthier', 1),
(5, 'Charlie', 'Travel more', 1),
(6, 'Charlie', 'Learn a new skill', 1),
(7, 'Diana', 'Volunteer monthly', 1),
(8, 'Diana', 'Drink more water', 0),
(9, 'Diana', 'Sleep 8 hours', 1);
