-- Create the table rentals
CREATE TABLE rentals (
    rental_id INT PRIMARY KEY, -- Unique ID for each rental (primary key)
    customer_name VARCHAR(50), -- Name of the customer who rented the equipment
    activity VARCHAR(50), -- Type of activity (e.g., Skiing, Snowboarding)
    rental_date DATE -- Date when the equipment was rented
);

-- Insert data into the rentals table
INSERT INTO rentals (rental_id, customer_name, activity, rental_date)
VALUES
    (1, 'Emily', 'Skiing', '2024-01-01'), 
    (2, 'Michael', 'Snowboarding', '2024-01-02'), 
    (3, 'Emily', 'Snowboarding', '2024-01-03'),
    (4, 'Sarah', 'Skiing', '2024-01-01'),
    (5, 'Michael', 'Skiing', '2024-01-02'),
    (6, 'Michael', 'Snowtubing', '2024-01-02'); 

