CREATE DATABASE ASSIGNMENT_1;
use ASSIGNMENT_1;

CREATE TABLE EMP (
	EID CHAR (5),
	NAME VARCHAR (15),
	ADDR VARCHAR (50),
	CITY VARCHAR (10),
	PHONE CHAR (10),
	EMAIL VARCHAR(30),
	DOB DATE,
);

ALTER TABLE EMP
ALTER COLUMN ADDR VARCHAR (30);

ALTER TABLE EMP
ALTER COLUMN PHONE VARCHAR (10);

INSERT INTO EMP VALUES 
	('E0001', 'Aditya', 'Shaguna More', 'Patna', 9635145951, 'Aditya@gmail.com', '1999-1-1'),
	('E0002', 'Shashwat', 'Sector-5 Rohini', 'Delhi', 9005165951, 'Shashwat@gmail.com', '1997-11-5'),
	('E0003', 'Vikram', 'Sector-9 Rohini', 'Delhi', 9889455951, 'Vikram@gmail.com', '1998-4-15'),
	('E0004', 'Tushar', 'Bandra', 'Mumbai', 9789002456, 'Tushar@gmail.com', '1999-10-11'),
	('E0005', 'Anshu', 'Cuff Parade', 'Mumbai', 9000156745, 'Anshu@gmail.com', '1997-8-20'),
	('E0006', 'Aryan', 'Kankarbagh', 'Patna', 9123476543, 'Aryan@gmail.com', '1999-4-30'),
	('E0007', 'Aamir', 'Raja Bazar', 'Patna', 9090887654, 'Aamir@gmail.com', '1998-5-1'),
	('E0008', 'Faraz', 'Rajiv Chowk', 'Delhi', 9635145900, 'Faraz@gmail.com', '1997-12-25'),
	('E0009', 'Priyam', 'Basavanagudi', 'Bangalore', 9635140111, 'Priyam@gmail.com', '1999-2-20'),
	('E0010', 'Mohit', 'Jayanagar', 'Bangalore', 9639185951, 'Mohit@gmail.com', '1998-7-12');

SELECT * FROM EMP;