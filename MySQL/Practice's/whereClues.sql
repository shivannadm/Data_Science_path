use company1;

CREATE TABLE D4_Employees (
    EmployeeID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Department VARCHAR(50),
    HireDate DATE
);

create table Departments(
DeptID int,
DeptName varchar(25)
);

insert into Departments value(10,'IT'),(11,'HR'),(13,'IT'),(14,'HR'),(15,'Sales');

select * from Departments;

INSERT INTO D4_Employees (EmployeeID, FirstName, LastName, Department, HireDate)
VALUES 
(1, 'John', 'Doe', 'IT', '2022-01-15'),
(2, 'Jane', 'Smith', 'HR', '2021-03-22'),
(3, 'Michael', 'Johnson', 'IT', '2020-11-01'),
(4, 'Emily', 'Davis', 'Marketing', '2019-07-30'),
(5, 'Daniel', 'Brown', 'Sales', '2018-05-17');

select * from D4_Employees;

alter table D4_Employees
add age integer(25);

update D4_Employees
set age = 20
where EmployeeID = 2;

select * from D4_Employees
where age between 18 AND 21;

select * from D4_Employees
where EmployeeID= 5 AND age = 18;

select * from D4_Employees
where LastName LIKE 'J__%';

SELECT * FROM Employees
WHERE Department IN ('Sales', 'Marketing', 'HR');

select * from D4_Employees
where age In (18,19,20,21);  

alter table D4_Employees
change age Age int;

alter table D4_Employees
add Salary int;

update D4_Employees
set Salary = 29000
where EmployeeID = 5;

update D4_Employees
set DeptID = 16
where EmployeeID = 6;

select * 
from D4_Employees
where Salary > any (select salary 
from D4_Employees
where department = 'HR');

select *
from d4_employees
where Salary > all( select Salary
from D4_Employees
where department = 'HR');

alter table D4_Employees
add DeptID int;

select *
from d4_employees e
where exists( select 1 from Departments d
where d.DeptID = e.DeptID and Department = 'HR');


-- We need to creat one more table that associate with this table 
SELECT * FROM D4_Employees
WHERE EXISTS (SELECT 1 
FROM Departments 
WHERE Departments.DepartmentID = Employees.DepartmentID AND DepartmentName = 'Sales');


RENAME table employees to D1_Employees;

CREATE DATABASE company;

rename table company1.d1_employees to company.employees;

