-- Create the 'guests' table
CREATE TABLE guests (
    guest_id INT PRIMARY KEY,        -- Unique identifier for each guest
    guest_name VARCHAR(100)          -- Name of the guest
);

-- Insert data into the 'guests' table
INSERT INTO guests (guest_id, guest_name) VALUES
(1, 'Cindy Lou'),
(2, 'The Grinch'),
(3, 'Max the Dog'),
(4, 'Mayor May Who');

-- Create the 'guest_gifts' table
CREATE TABLE guest_gifts (
    gift_id INT PRIMARY KEY,         -- Unique identifier for each gift
    guest_id INT,                    -- Foreign key referencing 'guests' table
    gift_name VARCHAR(100),          -- Name of the gift
    FOREIGN KEY (guest_id) REFERENCES guests(guest_id) -- Links gift to the guest
);

-- Insert data into the 'guest_gifts' table
INSERT INTO guest_gifts (gift_id, guest_id, gift_name) VALUES
(1, 1, 'Toy Train'),
(2, 1, 'Plush Bear'),
(3, 2, 'Bag of Coal'),
(4, 2, 'Sleigh Bell'),
(5, 3, 'Dog Treats');
