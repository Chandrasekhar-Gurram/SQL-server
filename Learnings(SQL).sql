--Database Creation
CREATE DATABASE SampleData
--Database Rename
EXEC Sp_renamedb 'SampleData','SampleDataBase'

--Selecting Database
USE SampleDataBase
USE TestDataBase

--Dropping the Database
DROP DATABASE SampleDataBase

--Departments Table Creation
CREATE TABLE Departments
(
DepartmentId   int PRIMARY KEY,
DepartmentName varchar(20)
)
--Values Insertion into the Departments Table
INSERT INTO Departments VALUES (1, 'Mechanical'),(2, 'Chemical'),(3, 'Electronic'),(4, 'Textile'),(5, 'Civil')

--Grade3Students Table Creation
CREATE TABLE Grade3Students
(
StudentId int PRIMARY KEY IDENTITY(1,1),
FirstName varchar(20) NOT NULL, 
LastName varchar(20) NOT NULL,
DateOfBirth date NOT NULL,
Address varchar(30) NULL,
PhoneNumber nvarchar(10) NULL,
DepartmentId int NOT NULL,
FOREIGN KEY (DepartmentId) REFERENCES Departments (DepartmentId)
)

--Values insertion into the Grade3Students table
INSERT INTO Grade3Students VALUES( 'Mark', 'Miller', '1980-05-31','Frank E Road', '5513478930', 1),( 'Joseph', 'Ruffalo', '1978-02-02','Chelliof Boulevard','5347893090', 1),( 'Tiffany', 'Paleo', '1982-07-29','300 Somerset Street', '2018978734', 2),( 'Jennifer', 'Lotus', '1977-01-21','Ferry Rogger Road', '3450982348', 3),( 'Shermus', 'Shroff', '1988-10-10','Angelio Clifflio Boulevard', '7719838970', 4),( 'Kelly', 'Vercher', '1975-01-01','Woodbridge lane', '7719838970',4 )

--Table Renaming
EXEC Sp_rename 'Grade3Students','StudentDetails'

--Deleting The particular Row in the Table
DELETE FROM CustomersCopy where ID=7;

--Deleting the Entire table using DELETE Query
DELETE CustomersCopy;

--Truncating the Table
TRUNCATE TABLE Student

--Dropping The Table
DROP TABLE Student

--Table Copy
SELECT * INTO NewTable FROM StudentDetails 

--Creating the Temp table(Local)
create table #temp(id int)

--Inserting The Data in the Local Temp table
INSERT INTO #temp values(123),(124),(125),(126);

--Creating the temp Table(Gloabl)
CREATE TABLE ##TempTable(Name Varchar(25));

--Inserting The Data in the Global Temp table
INSERT INTO ##TempTable values('cook'),('John'),('Tim');

--Altering the Table Data
ALTER TABLE EmployeesData Add PhoneNumber1 bigint, CompanyName varchar(100);
ALTER TABLE EmployeesData ALTER COLUMN PhoneNumber int
ALTER TABLE EmployeesData DROP COLUMN CompanyName,PhoneNumber1,PhoneNumber

--Select Statement
SELECT DISTINCT DepartmentId FROM StudentDetails
SELECT COUNT(DISTINCT DepartmentId) FROM NewTable WHERE PhoneNumber=7719838970
SELECT TOP 5 * FROM Departments
SELECT TOP 65 PERCENT * FROM Departments
SELECT TOP 50 PERCENT * FROM NewTable WHERE PhoneNumber=7719838970
SELECT TOP 1 FirstName FROM StudentDetails ORDER BY FirstName DESC;  
SELECT TOP 3 * FROM StudentDetails ORDER BY NEWID(); 
SELECT DateOfBirth as DOB FROM StudentDetails
SELECT * FROM Departments Where DepartmentName IN ('Mechanical','Chemical', 'Electronic')
SELECT * FROM StudentDetails inner join Departments ON StudentDetails.DepartmentId=Departments.DepartmentId

SELECT * FROM Departments
SELECT * FROM StudentDetails
SELECT * FROM NewTable
SELECT * FROM Employee_Contact
SELECT * FROM Employee_Details
SELECT * FROM CustomersCopy
SELECT * FROM EmployeesData
SELECT * FROM Student
SELECT * FROM #temp