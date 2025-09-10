use company1;

CREATE TABLE D2_Employees (
    EmployeeID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Department VARCHAR(50),
    HireDate DATE
);

INSERT INTO D2_Employees (EmployeeID, FirstName, LastName, Department, HireDate)
VALUES 
(1, 'John', 'Doe', 'IT', '2022-01-15'),
(2, 'Jane', 'Smith', 'HR', '2021-03-22'),
(3, 'Michael', 'Johnson', 'IT', '2020-11-01'),
(4, 'Emily', 'Davis', 'Marketing', '2019-07-30'),
(5, 'Daniel', 'Brown', 'Sales', '2018-05-17');

SELECT * FROM D2_Employees;

UPDATE D2_Employees
SET Department = 'Sales' -- null for delete single cell 
WHERE EmployeeID = 1;

DELETE FROM D2_Employees
where employeeId = 5;

grant all on employees to 'alien'@'localhost';
