Expt 10:Write a PL/SQL block to illustrate the use of implicit cursor 

********************************************************************************/
#code

USE LAB9;
CREATE TABLE CUR( NAME VARCHAR(70),DOB DATE, SALARY FLOAT);
DELIMITER //
CREATE PROCEDURE IMP()
BEGIN
    DECLARE done INT  DEFAULT FALSE;
    DECLARE emp_name VARCHAR(70);
    DECLARE emp_dob DATE;
    DECLARE emp_salary FLOAT;
    DECLARE emp_record CURSOR FOR SELECT  name, dob, salary FROM employee;
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
