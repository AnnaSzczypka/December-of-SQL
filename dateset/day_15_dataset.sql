-- Create the 'family_members' table
CREATE TABLE family_members (
    member_id INT PRIMARY KEY,    -- Unique identifier for each family member
    name VARCHAR(50),            -- Name of the family member
    age INT                      -- Age of the family member
);

-- Insert data into the 'family_members' table
INSERT INTO family_members (member_id, name, age) VALUES
(1, 'Alice', 30),
(2, 'Bob', 58),
(3, 'Charlie', 33),
(4, 'Diana', 55),
(5, 'Eve', 5),
(6, 'Frank', 60),
(7, 'Grace', 32),
(8, 'Hannah', 8),
(9, 'Ian', 12),
(10, 'Jack', 3);

-- Create the 'parent_child_relationships' table
CREATE TABLE parent_child_relationships (
    parent_id INT,      -- The ID of the parent (references member_id)
    child_id INT,       -- The ID of the child (references member_id)
    FOREIGN KEY (parent_id) REFERENCES family_members(member_id),  -- Establishes parent-child relationship
    FOREIGN KEY (child_id) REFERENCES family_members(member_id)    -- Ensures child exists in family_members
);

-- Insert data into the 'parent_child_relationships' table
INSERT INTO parent_child_relationships (parent_id, child_id) VALUES
(2, 1),  -- Bob is the parent of Alice
(3, 5),  -- Charlie is the parent of Eve
(4, 1),  -- Diana is also the parent of Alice
(6, 7),  -- Frank is the parent of Grace
(6, 8),  -- Frank is also the parent of Hannah
(7, 9),  -- Grace is the parent of Ian
(7, 10), -- Grace is also the parent of Jack
(4, 8);  -- Diana is also the parent of Hannah

drop table family_members; 
drop table parent_child_relationships;