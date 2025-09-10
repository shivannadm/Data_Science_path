use company1;

CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Department VARCHAR(50),
    HireDate DATE
);

INSERT INTO Employees (EmployeeID, FirstName, LastName, Department, HireDate)
VALUES 
(1, 'John', 'Doe', 'Sales', '2022-01-15'),
(2, 'Jane', 'Smith', 'HR', '2021-03-22'),
(3, 'Michael', 'Johnson', 'IT', '2020-11-01'),
(4, 'Emily', 'Davis', 'Marketing', '2019-07-30'),
(5, 'Daniel', 'Brown', 'Sales', '2018-05-17');

select * from Employees;

CREATE INDEX idx_lastname ON Employees(LastName);

SELECT * FROM Employees
WHERE LastName = 'Doe';

EXPLAIN SELECT * FROM Employees WHERE LastName = 'Doe';

drop index idx_lastname on Employees;

rename table company.employees to company1.employees;

