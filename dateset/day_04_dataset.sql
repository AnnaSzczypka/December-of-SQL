-- Create the 'ski_resorts' table
CREATE TABLE ski_resorts (
    resort_id INT PRIMARY KEY, -- Unique identifier for each ski resort
    resort_name VARCHAR(50), -- Name of the ski resort
    region VARCHAR(50) -- Region where the ski resort is located
);

-- Insert data into the 'ski_resorts' table
INSERT INTO ski_resorts (resort_id, resort_name, region)
VALUES
    (1, 'Snowy Peaks', 'Rocky Mountains'),
    (2, 'Winter Wonderland', 'Wasatch Range'),
    (3, 'Frozen Slopes', 'Alaska Range'),
    (4, 'Powder Paradise', 'Rocky Mountains');

-- Create the 'snowfall' table
CREATE TABLE snowfall (
    resort_id INT, -- Identifier matching the ski resort
    snowfall_inches INT, -- Amount of snowfall in inches
    FOREIGN KEY (resort_id) REFERENCES ski_resorts(resort_id) -- Link to ski_resorts table
);

-- Insert data into the 'snowfall' table
INSERT INTO snowfall (resort_id, snowfall_inches)
VALUES
    (1, 60),
    (2, 45),
    (3, 75),
    (4, 55);


