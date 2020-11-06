CREATE DATABASE LAB;
use LAB;

# a.Create a table student with attributes sno,name marks and dept
CREATE TABLE student (
    sno INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    marks INT NOT NULL,
    dept VARCHAR(20) NOT NULL
);

# b.Add a new attribute age
ALTER TABLE student ADD COLUMN age INT NOT NULL;

# c.Change the datatype size of dept
ALTER TABLE student MODIFY COLUMN dept VARCHAR(10); 

# d.Delete the attribute marks from the table
ALTER TABLE student DROP COLUMN marks;

# e.Change the name of the student table to students
RENAME TABLE student TO students;

# f.Delete all values from the table
TRUNCATE TABLE students;

# g.Delete the entire table
DROP TABLE students;
