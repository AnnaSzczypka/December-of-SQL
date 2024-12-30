-- Create the 'candy_nutrition' table
CREATE TABLE candy_nutrition (
    candy_id INT PRIMARY KEY, -- Unique identifier for each candy
    candy_name VARCHAR(50), -- Name of the candy
    calories INT, -- Number of calories in the candy
    candy_category VARCHAR(50) -- Category of the candy (e.g., Sweets, Chocolate, Baked Goods)
);

-- Insert data into the 'candy_nutrition' table
INSERT INTO candy_nutrition (candy_id, candy_name, calories, candy_category)
VALUES
    (1, 'Candy Cane', 200, 'Sweets'),
    (2, 'Chocolate Bar', 250, 'Chocolate'),
    (3, 'Gingerbread Cookie', 150, 'Baked Goods'),
    (4, 'Lollipop', 100, 'Sweets'),
    (5, 'Dark Chocolate Truffle', 180, 'Chocolate'),
    (6, 'Marshmallow', 900, 'Sweets'),
    (7, 'Sugar Cookie', 140, 'Baked Goods');
