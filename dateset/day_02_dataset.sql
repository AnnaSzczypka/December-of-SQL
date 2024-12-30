-- Create the 'gifts' table
CREATE TABLE gifts (
    gift_name VARCHAR(50), -- Name of the gift
    recipient VARCHAR(50), -- Recipient of the gift
    weight_kg DECIMAL(5, 2) -- Weight of the gift in kilograms
);

-- Insert data into the 'gifts' table
INSERT INTO gifts (gift_name, recipient, weight_kg)
VALUES
    ('Toy Train', 'John', 2.5),
    ('Chocolate Box', 'Alice', 0.8),
    ('Teddy Bear', 'Sophia', 1.2),
    ('Board Game', 'Liam', 0.9);
