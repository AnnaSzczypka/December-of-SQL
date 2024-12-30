-- Create the 'grinch_weight_log' table
CREATE TABLE grinch_weight_log (
    log_id INT PRIMARY KEY,       -- Unique identifier for each log entry
    day_of_month INT,             -- Day of the month
    weight INT                    -- Weight in pounds
);

-- Insert data into the 'grinch_weight_log' table
INSERT INTO grinch_weight_log (log_id, day_of_month, weight) VALUES
(1, 1, 250),
(2, 2, 248),
(3, 3, 249),
(4, 4, 247),
(5, 5, 246),
(6, 6, 248);
