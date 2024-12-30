-- Create the 'deliveries' table
CREATE TABLE deliveries (
    delivery_date DATE PRIMARY KEY,    -- Date of the delivery
    gifts_delivered INT                -- Number of gifts delivered on that date
);

-- Insert data into the 'deliveries' table
INSERT INTO deliveries (delivery_date, gifts_delivered) VALUES
('2024-12-20', 120),
('2024-12-21', 150),
('2024-12-22', 200),
('2024-12-23', 300),
('2024-12-24', 500);
