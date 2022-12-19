CREATE DATABASE ASSIGNMENT4;

USE ASSIGNMENT4;

CREATE TABLE EMP
(	EMPID CHAR (5),
	NAME VARCHAR(15),
	ADDR VARCHAR (15),
	CITY CHAR (5),
	PHNO CHAR (10),
	EMAIL VARCHAR(20),
	DOB DATE
)

CREATE TABLE EMP_SAL
(	EMPID CHAR (5),
	DEPT CHAR (5),
	DESI CHAR(4),
	BASIC INT,
	DOJ DATE
)

INSERT INTO EMP
VALUES ('E0001', 'Aditya', 'Shaguna More', 'DEL', 9635145951, 'Aditya@yahoo.com', '1999-1-1'),
	   ('E0002', 'Shashwat', 'Sector-5 Rohini', 'DEL', 9005165951, 'Shashwat@hotmail.com', '1997-11-5'),
	   ('E0003', 'Vikram', 'Sector-9 Rohini', 'GGN', 9889455951, 'Vikram@gmail.com', '1998-4-15'),
	   ('E0004', 'Tushar', 'Bandra', 'NOIDA', 9789002456, 'Tushar@yahoo.com', '1999-10-11'),
	   ('E0005', 'Anshu', 'Cuff Parade', 'GGN', 9000156745, 'Anshu@hotmail.com', '1997-8-20'),
	   ('E0006', 'Aryan', 'Kankarbagh', 'NOIDA', 9123476543, 'Aryan@gmail.com', '1999-4-30'),
	   ('E0007', 'Aamir', 'Raja Bazar', 'FDB', 9090887654, 'Aamir@yahoo.com', '1998-5-1'),
	   ('E0008', 'Faraz', 'Rajiv Chowk', 'FDB', 9635145900, 'Faraz@hotmail.com', '1997-12-25'),
	   ('E0009', 'Priyam', 'Basavanagudi', 'GGN', 9635140111, 'Priyam@yahoo.com', '1999-2-20'),
	   ('E0010', 'Mohit', 'Jayanagar', 'NOIDA', 9639185951, 'Mohit@gmail.com', '1998-7-12');

ALTER TABLE EMP_SAL
ALTER COLUMN DEPT VARCHAR (10);

INSERT INTO EMP_SAL
VALUES ('E0001', 'IT ADMIN', 'DIR', 1000000, '1998-1-1'),
	   ('E0002', 'HR', 'MGR', 100000, '1998-12-1'),
	   ('E0003', 'TEMP', 'ASSO', 80000, '1998-12-1'),
	   ('E0004', 'TEMP', 'VP', 900000, '1999-3-1'),
	   ('E0005', 'HR', 'MGR', 90000, '1999-3-1'),
	   ('E0006', 'OPS', 'ASSO', 95000, '2000-12-1'),
	   ('E0007', 'HR', 'MGR', 85000, '2000-12-1'),
	   ('E0008', 'MIS', 'MGR', 110000, '2000-12-1'),
	   ('E0009', 'OPS', 'ASSO', 75000, '2000-12-1'),
	   ('E0010', 'MIS', 'MGR', 55000, '2000-12-1');

SELECT * FROM EMP;

SELECT CITY, COUNT(CITY) AS 'No. of Employees'
FROM EMP
GROUP BY CITY
ORDER BY 'No. of Employees' DESC;

SELECT * FROM EMP
WHERE (EMAIL NOT LIKE '%YAHOO%' AND EMAIL NOT LIKE '%GMAIL%')
ORDER BY EMPID;

SELECT * FROM EMP_SAL;

SELECT DESI, SUM(BASIC) AS 'Total Cost', COUNT(EMPID) AS 'No. of Members'
FROM EMP_SAL
GROUP BY DESI
ORDER BY 'Total Cost' DESC;