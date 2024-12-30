-- Create the 'vendors' table
CREATE TABLE vendors (
    vendor_id INT PRIMARY KEY, -- Unique identifier for each vendor
    vendor_name VARCHAR(50), -- Name of the vendor
    market_location VARCHAR(50) -- Location of the vendor's market stall
);

-- Insert data into the 'vendors' table
INSERT INTO vendors (vendor_id, vendor_name, market_location)
VALUES
    (1, 'Cozy Crafts', 'Downtown Square'),
    (2, 'Sweet Treats', 'Central Park'),
    (3, 'Winter Warmers', 'Downtown Square');

-- Create the 'sales' table
CREATE TABLE sales (
    sale_id INT PRIMARY KEY, -- Unique identifier for each sale
    vendor_id INT, -- Identifier for the vendor associated with the sale
    item_name VARCHAR(50), -- Name of the item sold
    quantity_sold INT, -- Number of items sold
    price_per_unit DECIMAL(10, 2), -- Price per unit of the item
    FOREIGN KEY (vendor_id) REFERENCES vendors(vendor_id) -- Link to vendors table
);

-- Insert data into the 'sales' table
INSERT INTO sales (sale_id, vendor_id, item_name, quantity_sold, price_per_unit)
VALUES
    (1, 1, 'Knitted Scarf', 15, 25),
    (2, 2, 'Hot Chocolate', 50, 3.5),
    (3, 3, 'Wool Hat', 20, 18),
    (4, 1, 'Handmade Ornament', 10, 15),
    (5, 2, 'Gingerbread Cookie', 30, 5);
