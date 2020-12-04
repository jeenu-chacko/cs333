-- (a) Create a table class.Fields are name and id --
CREATE TABLE Class (
	`id` INT PRIMARY KEY AUTO_INCREMENT,
    `name` VARCHAR(50)
);


-- (b) Insert values into the table --
INSERT INTO Class (`name`) VALUES ("LALAMAN"), ("SUSMA"), ("BEEKER");

-- (c) Display the table --
SELECT * FROM Class;

-- (d) Apply commit, save point and rollback commands --
START TRANSACTION;

INSERT INTO Class (`name`) VALUES ("NEWMAN");
ROLLBACK; 

INSERT INTO Class (`name`) VALUES ("NEWMAN");
COMMIT;

START TRANSACTION;
SAVEPOINT BeforeEvilEra;
INSERT INTO Class (`name`) VALUES ("EVILERA");
ROLLBACK TO BeforeEvilEra;

COMMIT;

