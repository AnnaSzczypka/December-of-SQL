-- Create the 'activities' table
CREATE TABLE activities (
    activity_id INT PRIMARY KEY,        -- Unique identifier for each activity
    activity_name VARCHAR(100)         -- Name of the activity
);

-- Insert data into the 'activities' table
INSERT INTO activities (activity_id, activity_name) VALUES
(1, 'Surfing Lessons'),
(2, 'Jet Skiing'),
(3, 'Sunset Yoga');

-- Create the 'activity_ratings' table
CREATE TABLE activity_ratings (
    rating_id INT PRIMARY KEY,         -- Unique identifier for each rating
    activity_id INT,                   -- Foreign key referencing 'activities' table
    rating DECIMAL(2, 1),              -- Rating for the activity
    FOREIGN KEY (activity_id) REFERENCES activities(activity_id)
);

-- Insert data into the 'activity_ratings' table
INSERT INTO activity_ratings (rating_id, activity_id, rating) VALUES
(1, 1, 4.7),
(2, 1, 4.8),
(3, 1, 4.9),
(4, 2, 4.6),
(5, 2, 4.7),
(6, 2, 4.8),
(7, 2, 4.9),
(8, 3, 4.8),
(9, 3, 4.7),
(10, 3, 4.9),
(11, 3, 4.8),
(12, 3, 4.9);
