-- Create the 'beach_temperature_predictions' table
CREATE TABLE beach_temperature_predictions (
    beach_name VARCHAR(50), -- Name of the beach
    country VARCHAR(50), -- Country where the beach is located
    expected_temperature_c INT, -- Expected temperature in Celsius
    date DATE -- Date of the temperature prediction
);

-- Insert data into the 'beach_temperature_predictions' table
INSERT INTO beach_temperature_predictions (beach_name, country, expected_temperature_c, date)
VALUES
    ('Bondi Beach', 'Australia', 32, '2024-12-24'),
    ('Copacabana Beach', 'Brazil', 28, '2024-12-24'),
    ('Clifton Beach', 'South Africa', 31, '2024-12-25'),
    ('Brighton Beach', 'New Zealand', 25, '2024-12-25');
