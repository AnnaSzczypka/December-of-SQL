-- Create the 'grinch_pranks' table
CREATE TABLE grinch_pranks (
    prank_id INT PRIMARY KEY,        -- Unique identifier for each prank
    prank_name VARCHAR(100),         -- Name of the prank
    location VARCHAR(100),           -- Location of the prank
    difficulty VARCHAR(20)           -- Difficulty level of the prank (e.g., Beginner, Advanced, Expert)
);

-- Insert data into the 'grinch_pranks' table
INSERT INTO grinch_pranks (prank_id, prank_name, location, difficulty) VALUES
(1, 'Stealing Stockings', 'Whoville', 'Beginner'),
(2, 'Christmas Tree Topple', 'Whoville Town Square', 'Advanced'),
(3, 'Present Swap', 'Cindy Lous House', 'Beginner'),
(4, 'Sleigh Sabotage', 'Mount Crumpit', 'Expert'),
(5, 'Chimney Block', 'Mayors Mansion', 'Expert');
