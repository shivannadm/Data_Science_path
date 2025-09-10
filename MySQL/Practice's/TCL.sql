use company1;

CREATE TABLE D3_Employees (
    EmployeeID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Department VARCHAR(50),
    HireDate DATE
);

INSERT INTO D3_Employees (EmployeeID, FirstName, LastName, Department, HireDate)
VALUES 
(1, 'John', 'Doe', 'IT', '2022-01-15'),
(2, 'Jane', 'Smith', 'HR', '2021-03-22'),
(3, 'Michael', 'Johnson', 'IT', '2020-11-01'),
(4, 'Emily', 'Davis', 'Marketing', '2019-07-30'),
(5, 'Daniel', 'Brown', 'Sales', '2018-05-17');

select * from D3_Employees;

begin;

insert into D3_Employees values(6,'Raj','DM','ISE','2021-12-13');

rollback;


begin;
insert into D3_Employees values(6,'Raj','DM','ISE','2021-12-13');
savepoint sp1;
insert into D3_Employees values(7,'Shery','Das','AI','2021-12-13');
rollback to sp1;

commit;

update D3_Employees
set LastName = 'Devani'
where EmployeeID = 7;

delete from D3_Employees
where EmployeeID = 7;
