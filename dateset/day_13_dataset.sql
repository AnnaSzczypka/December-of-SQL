-- Create the 'gifts' table
CREATE TABLE gifts (
    gift_id INT PRIMARY KEY,          -- Unique identifier for each gift
    gift_name VARCHAR(50),            -- Name of the gift
    recipient VARCHAR(50),            -- Recipient's name
    weight_kg DECIMAL(3, 1)           -- Weight of the gift in kilograms
);

-- Insert data into the 'gifts' table
INSERT INTO gifts (gift_id, gift_name, recipient, weight_kg) VALUES
(1, 'Toy Train', 'John', 2.5),
(2, 'Chocolate Box', 'Alice', 0.8),
(3, 'Teddy Bear', 'Sophia', 1.2),
(4, 'Board Game', 'John', 0.9);
