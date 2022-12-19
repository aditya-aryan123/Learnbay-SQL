CREATE DATABASE ASSIGNMENT_2;
USE ASSIGNMENT_2;

CREATE TABLE EMP_DATA
(   EID CHAR (5),
	NAME VARCHAR (10),
	ADDR VARCHAR(20),
	CITY VARCHAR(10),
	PHONE CHAR (10),
	EMAIL VARCHAR(20),
	DOB DATE
);

INSERT INTO EMP_DATA
VALUES ('E0001', 'Aditya', 'Shaguna More', 'Patna', 9635145951, 'Aditya@gmail.com', '1999-1-1'),
	   ('E0002', 'Shashwat', 'Sector-5 Rohini', 'Delhi', 9005165951, 'Shashwat@gmail.com', '1997-11-5'),
	   ('E0003', 'Vikram', 'Sector-9 Rohini', 'Delhi', 9889455951, 'Vikram@gmail.com', '1998-4-15'),
	   ('E0004', 'Tushar', 'Bandra', 'Mumbai', 9789002456, 'Tushar@gmail.com', '1999-10-11'),
	   ('E0005', 'Anshu', 'Cuff Parade', 'Mumbai', 9000156745, 'Anshu@gmail.com', '1997-8-20'),
	   ('E0006', 'Aryan', 'Kankarbagh', 'Patna', 9123476543, 'Aryan@gmail.com', '1999-4-30'),
	   ('E0007', 'Aamir', 'Raja Bazar', 'Patna', 9090887654, 'Aamir@gmail.com', '1998-5-1'),
	   ('E0008', 'Faraz', 'Rajiv Chowk', 'Delhi', 9635145900, 'Faraz@gmail.com', '1997-12-25'),
	   ('E0009', 'Priyam', 'Basavanagudi', 'Bangalore', 9635140111, 'Priyam@gmail.com', '1999-2-20'),
	   ('E0010', 'Mohit', 'Jayanagar', 'Bangalore', 9639185951, 'Mohit@gmail.com', '1998-7-12');

SELECT * FROM EMP_DATA;

CREATE TABLE EMP_SAL
(	EID CHAR (5),
	DEPT VARCHAR (5),
	DESI VARCHAR (15),
	SALART INT
);

EXEC sp_rename 'EMP_SAL.SALART', 'SALARY';

ALTER TABLE EMP_SAL
ADD NAME VARCHAR(10);

ALTER TABLE EMP_SAL
ADD DOJ DATE;

INSERT INTO EMP_SAL
VALUES ('E0001', 'Admin', 'Sr. Manager', 1000000, 'Aditya Aryan', '1998-1-1'),
	   ('E0002', 'HR', 'Manager', 100000, 'Sharma', '1998-12-1'),
	   ('E0003', 'MIS', 'Associate', 80000, 'Shashwat', '1998-12-1'),
	   ('E0004', 'MIS', 'Sr. Associate', 900000, 'Sharma', '1999-3-1'),
	   ('E0005', 'HR', 'Manager', 90000, 'Mohit', '1999-3-1'),
	   ('E0006', 'MIS', 'Associate', 95000, 'Vikram', '2000-12-1'),
	   ('E0007', 'HR', 'Manager', 85000, 'Aryan', '2000-12-1');

SELECT * FROM EMP_SAL;

DELETE FROM EMP_SAL
WHERE NAME IS NULL;

DELETE FROM EMP_SAL
WHERE DOJ IS NULL;

SELECT * FROM EMP_SAL
WHERE NAME = 'Sharma';

UPDATE EMP_SAL SET SALARY = SALARY * 1.1
WHERE DESI = 'Manager';