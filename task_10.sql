CREATE TABLE Employee(
    code VARCHAR(4) PRIMARY KEY,
    name VARCHAR(20),
    dob DATE,
     salary FLOAT
    );



INSERT INTO Employee(code,name,dob,salary)
    VALUES ('e001','Sara','1992-04-02',60000),
     ('e002','Williams','1994-12-14',27000);


 CREATE TABLE CUR( NAME VARCHAR(20),DOB DATE, SALARY FLOAT);

DELIMITER //
CREATE PROCEDURE IMP()
    BEGIN
    DECLARE done INT  DEFAULT FALSE;
    DECLARE emp_name VARCHAR(20);
     DECLARE emp_dob DATE;
      DECLARE emp_salary FLOAT;
      DECLARE emp_record CURSOR FOR SELECT  name, dob, salary FROM Employee;
    DECLARE CONTINUE HANDLER FOR NOT FOUND SET DONE= TRUE;
     OPEN emp_record;
     read_loop:LOOP
     FETCH emp_record INTO emp_name,emp_dob,emp_salary;
     IF done THEN
     LEAVE read_loop;
     END IF;
     INSERT INTO CUR VALUES(emp_name,emp_dob,emp_salary);
    END LOOP;
    CLOSE emp_record;
     END;//

 DELIMITER ;
 CALL IMP();

SELECT *FROM CUR;
