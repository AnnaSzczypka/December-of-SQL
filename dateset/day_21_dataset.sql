-- Create the 'gifts' table
CREATE TABLE gifts (
    gift_id INT PRIMARY KEY,          -- Unique identifier for each gift
    gift_name VARCHAR(50),            -- Name of the gift
    recipient_type VARCHAR(10),       -- Type of recipient ('good' or 'naughty')
    weight_kg DECIMAL(3, 1)           -- Weight of the gift in kilograms
);

-- Insert data into the 'gifts' table
INSERT INTO gifts (gift_id, gift_name, recipient_type, weight_kg) VALUES
(1, 'Toy Train', 'good', 2.5),
(2, 'Lumps of Coal', 'naughty', 1.5),
(3, 'Teddy Bear', 'good', 1.2),
(4, 'Chocolate Bar', 'good', 0.3),
(5, 'Board Game', 'naughty', 1.8);
