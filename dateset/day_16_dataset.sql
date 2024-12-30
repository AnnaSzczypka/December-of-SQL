-- Create the 'candy_sales' table
CREATE TABLE candy_sales (
    sale_id INT PRIMARY KEY,            -- Unique identifier for each sale
    candy_name VARCHAR(50),             -- Name of the candy
    quantity_sold INT,                  -- Quantity of candy sold
    price_per_unit DECIMAL(5, 2),       -- Price per unit of the candy
    category VARCHAR(50)                -- Category of the candy (e.g., Sweets, Chocolate)
);

-- Insert data into the 'candy_sales' table
INSERT INTO candy_sales (sale_id, candy_name, quantity_sold, price_per_unit, category) VALUES
(1, 'Candy Cane', 20, 1.5, 'Sweets'),
(2, 'Chocolate Bar', 10, 2.0, 'Chocolate'),
(3, 'Lollipop', 5, 0.75, 'Sweets'),
(4, 'Dark Chocolate Truffle', 8, 2.5, 'Chocolate'),
(5, 'Gummy Bears', 15, 1.2, 'Sweets'),
(6, 'Chocolate Fudge', 12, 3.0, 'Chocolate');
