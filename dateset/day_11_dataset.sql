-- Create a table named 'family_members' with four columns: member_id, name, relationship, and birthday
CREATE TABLE family_members (
    member_id INT PRIMARY KEY, -- Unique identifier for each family member
    name VARCHAR(50),          -- Name of the family member
    relationship VARCHAR(50),  -- Relationship to the person (e.g., Sister, Father)
    birthday DATE              -- Birthday of the family member in 'YYYY-MM-DD' format
);

-- Insert data into the 'family_members' table
INSERT INTO family_members (member_id, name, relationship, birthday)
VALUES
(1, 'Dawn', 'Sister', '2024-12-24'),   -- Sister's birthday on December 24, 2024
(2, 'Bob', 'Father', '2024-05-20'),    -- Father's birthday on May 20, 2024
(3, 'Charlie', 'Brother', '2024-12-25'), -- Brother's birthday on December 25, 2024
(4, 'Diana', 'Mother', '2024-03-15');  -- Mother's birthday on March 15, 2024
