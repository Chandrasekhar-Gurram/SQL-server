use TestDataBase;
CREATE TABLE CUSTOMERS(
   ID   INT              NOT NULL,
   NAME VARCHAR (20)     NOT NULL,
   AGE  INT              NOT NULL,
   ADDRESS  CHAR (25) ,
   SALARY   DECIMAL (18, 2));
   INSERT INTO CUSTOMERS (ID,NAME,AGE,ADDRESS,SALARY)
VALUES (8, 'Ramesh', 32, 'Ahmedabad', 2000.00 ),(9, 'Khilan', 25, 'Delhi', 1500.00 ),(10, 'kaushik', 23, 'Kota', 2000.00 ),(11, 'Chaitali', 25, 'Mumbai', 6500.00 ),(12, 'Hardik', 27, 'Bhopal', 8500.00 ),(13, 'Komal', 22, 'MP', 4500.00 ),(14, 'Muffy', 24, 'Indore', 10000.00 );
select * from CUSTOMERS;
select * from CUSTOMERS where name='khilan'
delete from CUSTOMERS where ID=7;
WHERE SALARY LIKE '200%';
SELECT TOP 3 age,ID,name FROM CUSTOMERS;
insert into CUSTOMERS values (5, 'Hardik', 27, 'Bhopal', 8500.00 );
SELECT Name,SALARY as Groupsalary FROM CUSTOMERS group by NAME;
SELECT distinct(Name) FROM CUSTOMERS
Delete from CUSTOMERS where ID=8 or ID=9 or Id=10 or id=11 or id=12 or id=13 or id=14;
exec sp_rename 'dbo.TestTable','dbo.TestTableOne';
select * into CustomersCopyOne from customers where 1<>1;
select * into #customersCopyTwo from customers;
select * from CustomersCopyOne;
select * from #customersCopyTwo
create table ##TempTable(ID   INT  NOT NULL,
   NAME VARCHAR (20)     NOT NULL,
   AGE  INT  NOT NULL,
   ADDRESS  CHAR (25) ,
   SALARY   DECIMAL (18, 2));
   insert into ##TempTable select * from customers 
   drop table #customersCopyTwo;
   create schema sampleschema;
   show databases;
   SELECT * FROM sys.databases
   use TestDataBase
   select * from sys.tables;
  select * from customers;
  SELECT ID as studentId FROM CUSTOMERS ORDER BY rand();  
  select * from CUSTOMERS where ID in (2,10,50)
  select * from CUSTOMERS;
  select * from EmployeesData;
  select CUSTOMERS.ID, EmployeesData.Designation from CUSTOMERS inner join EmployeesData on CUSTOMERS.ID=EmployeesData.Id order by CUSTOMERS.ID;
  alter table Customers add Dates Date
select sum(age) as TotalAge from CUSTOMERS
SELECT * FROM CUSTOMERS ORDER BY Name NEWID ()  
delete from customers where ID=5;
alter table Customers to CUSTOMERSDATA;
select distinct * from CUSTOMERS
create view CustomersData as select Name,Age from customers;
select * from CustomersData;
create or replace view CustomersData as select * from CUSTOMERS;
drop view CustomersData
sp_rename 'Customers view','CustomersView'
select * from CustomersView
alter view CustomersView as select * from CUSTOMERS
Exec sp_refreshview CustomersView
select * from sys.all_views 
exec sp_rename 'DatatypesTable','DataTypesTableOne'
select * from sys.Tables
select * from sys.databases

CREATE TABLE Employee_Details
(  
    Emp_Id int IDENTITY(1,1) NOT NULL,  
    Emp_Name nvarchar(50) NOT NULL,  
    Emp_City nvarchar (50) NOT NULL,  
    Emp_Salary int NOT NULL );
Insert Into Employee_Details Values('Pankaj','Alwar',25000),('Rahul','Jaipur',26000),('Rajan','Delhi',27000),('Sandeep','Alwar',28000),('Sanjeev','Jaipur',32000),('Narendra','Alwar',34000),('Neeraj','Delhi',29000),('Div','Jaipur',25000),('Tanuj','Alwar',22000),('Nitin','Jaipur',20000); 

CREATE TABLE Employee_Contact
(  
    Emp_Id int NOT NULL,  
    MobileNo nvarchar(50) NOT NULL  
)

Insert Into Employee_Contact Values(11,'9813220191'), (12,'9813220192'), (13,'9813220193'), (14,'9813220194'), (15,'9813220195'), (16,'9813220196'), (17,'9813220197'),(18,'9813220198'), (19,'9813220199'), (20,'9813220135');
select * from Employee_Contact;
select * from Employee_Details;
exec sp_rename 'Employee_Contact.Emp_Id','Employee_Contact.ID';
select * from Employee_Details, Employee_Contact where Employee_Contact.ID=Employee_Details.Emp_Id;
select * from sys.tables
delete from Employee_Contact where Id=7;
select * from Employee_Details cross join Employee_Contact
CREATE TABLE Employee_Total
(  
    Emp_Id int IDENTITY(1,1) NOT NULL,  
    Emp_Name nvarchar(50) NOT NULL,  
    Emp_City nvarchar (50) NOT NULL,  
    Emp_Salary int NOT NULL, 
    ID int NOT NULL,  
    MobileNo nvarchar(50) NOT NULL  
	);
	insert into Employee_Total values(select * from Employee_Details, Employee_Contact where Employee_Contact.ID=Employee_Details.Emp_Id);
create table ExampleTable(select * from Employee_Contact where 1=2);
select * from CUSTOMERS
alter table Customers add primary KEY(iD);
ALTER TABLE CUSTOMERS DROP constraint ID
select COUNT (Id) from CUSTOMERS
select * from CUSTOMERS where dates is Null