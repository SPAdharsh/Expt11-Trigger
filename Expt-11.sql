use dept;
CREATE TABLE EMPLOYEE
(CODE VARCHAR(10),
 NAME CHAR(20),
 DOB DATE NOT NULL,
 DESIGNATION CHAR(25),
 SALARY INT);
INSERT INTO EMPLOYEE VALUES 
('E69','AMINA','1990-06-14','CLERK','40000'),
('E37','RAHUL','1989-12-08','PROJECT DESGINER','60000'),
('E93','MANEESHA','1992-02-18','SALES MANAGER','50000'),
('E08','ADITYA','1992-04-22','CLERK','40000'),
('E29','RADIKA','1984-09-26','ACCOUNTANT','48000');

Delimiter $$
Create Trigger prevent_insert
Before Insert
On EMPLOYEE for each row
Begin
    If (Current_Time() Between'17:00' And '00:00') Then
    Signal Sqlstate '45000' Set Message_text="No Changes";
 End If;
End $$
Delimiter;
 
Delimiter $$
Create Trigger prevent_update 
Before Insert
On EMPLOYEE for each row
Begin
   If (Current_Time() Between'17:00' And '00:00') Then
   Signal Sqlstate '45000' Set Message_text="No Changes";
 End If;
End $$
Delimiter ;

Delimiter $$
Create Trigger prevent_delete
Before Insert
On EMPLOYEE for each row
Begin
   If (Current_Time() Between'17:00' And '00:00') Then
   Signal Sqlstate '45000' Set Message_text="No Changes";
 End If;
End $$
Delimiter ;


   
 