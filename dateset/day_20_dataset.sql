-- Create the 'vendors' table
CREATE TABLE vendors (
    vendor_id INT PRIMARY KEY,        -- Unique identifier for each vendor
    vendor_name VARCHAR(100),         -- Name of the vendor
    market_location VARCHAR(100)      -- Location of the vendor's market
);

-- Insert data into the 'vendors' table
INSERT INTO vendors (vendor_id, vendor_name, market_location) VALUES
(1, 'Cozy Crafts', 'Downtown Square'),
(2, 'Sweet Treats', 'Central Park'),
(3, 'Winter Warmers', 'Downtown Square');

-- Create the 'item_prices' table
CREATE TABLE item_prices (
    item_id INT PRIMARY KEY,         -- Unique identifier for each item
    vendor_id INT,                   -- Foreign key referencing 'vendors' table
    item_name VARCHAR(100),          -- Name of the item
    price_usd DECIMAL(5, 2),         -- Price of the item in USD
    FOREIGN KEY (vendor_id) REFERENCES vendors(vendor_id) -- Links item to vendor
);

-- Insert data into the 'item_prices' table
INSERT INTO item_prices (item_id, vendor_id, item_name, price_usd) VALUES
(1, 1, 'Knitted Scarf', 25),
(2, 2, 'Hot Chocolate', 5),
(3, 2, 'Gingerbread Cookie', 3.5),
(4, 3, 'Wool Hat', 18),
(5, 3, 'Santa Pin', 2);
