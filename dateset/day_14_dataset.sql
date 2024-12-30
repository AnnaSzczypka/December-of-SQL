CREATE TABLE snowfall (
    resort_name VARCHAR(50) PRIMARY KEY, -- Name of the ski resort (unique identifier)
    location VARCHAR(50),               -- Location of the ski resort (state)
    snowfall_inches INT                 -- Snowfall amount in inches
);

-- Insert data into the 'snowfall' table
INSERT INTO snowfall (resort_name, location, snowfall_inches) VALUES
('Snowy Peaks', 'Colorado', 60),
('Winter Wonderland', 'Utah', 45),
('Frozen Slopes', 'Alaska', 75);
