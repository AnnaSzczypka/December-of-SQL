-- Create the 'snow_globes' table
CREATE TABLE snow_globes (
    globe_id INT PRIMARY KEY,          -- Unique identifier for each snow globe
    globe_name VARCHAR(100),           -- Name of the snow globe
    volume_cm3 INT,                    -- Volume of the snow globe in cubic centimeters
    material VARCHAR(50)               -- Material of the snow globe (e.g., Glass, Plastic)
);

-- Insert data into the 'snow_globes' table
INSERT INTO snow_globes (globe_id, globe_name, volume_cm3, material) VALUES
(1, 'Winter Wonderland', 500, 'Glass'),
(2, 'Santas Workshop', 300, 'Plastic'),
(3, 'Frozen Forest', 400, 'Glass'),
(4, 'Holiday Village', 600, 'Glass');

-- Create the 'figurines' table
CREATE TABLE figurines (
    figurine_id INT PRIMARY KEY,       -- Unique identifier for each figurine
    globe_id INT,                      -- Foreign key referencing the snow_globes table
    figurine_type VARCHAR(50),         -- Type of figurine (e.g., Snowman, Tree, Santa Claus)
    FOREIGN KEY (globe_id) REFERENCES snow_globes(globe_id) -- Establish relationship with snow_globes
);

-- Insert data into the 'figurines' table
INSERT INTO figurines (figurine_id, globe_id, figurine_type) VALUES
(1, 1, 'Snowman'),
(2, 1, 'Tree'),
(3, 2, 'Santa Claus'),
(4, 2, 'Elf'),
(5, 2, 'Gift Box'),
(6, 2, 'Reindeer'),
(7, 3, 'Tree'),
(8, 4, 'Snowman'),
(9, 4, 'Santa Claus'),
(10, 4, 'Tree'),
(11, 4, 'Elf'),
(12, 4, 'Gift Box');
