use LAB;

# 1.Create a table Employee with following specifications. 
# Code character (4), name character (10), designation character(30), dob date, salary numeric.
CREATE TABLE Employee (
    `code` CHAR(4) NOT NULL,
    `name` CHAR(10) NOT NULL, 
    `designation` CHAR(30) NOT NULL, 
    `dob` DATE NOT NULL,
    `salary` NUMERIC
);

# 2. Insert 2 tuples into the table
INSERT INTO Employee (`code`, `name`, `designation`, `dob`, `salary`)
VALUES 
("e1", "Stephen", "Manager", "2000-3-3", 50000),
("e2","Tony", "Sales", "2000-4-11", 25000);

# 3. Select all details from the table.
SELECT * FROM Employee;

# 4.Change the salary of employee code is e1.
UPDATE Employee
SET `salary` = 45000 WHERE `code` = "e1";

# 5. Delete a tuple from the table employee
DELETE FROM Employee WHERE `code` = "e2";
