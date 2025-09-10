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


GRANT ALL PRIVILEGES ON employees TO 'Raja'@'localhost';

-- REVOKE ALL PRIVILEGES ON employees from 'Raja'@'localhost';

GRANT ALL PRIVILEGES ON company1.* TO 'current_user'@'localhost' WITH GRANT OPTION;
FLUSH PRIVILEGES;

/* -- C:\Users\shivanna>mysql -u root -p
Enter password: ********
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 32
Server version: 8.0.35 MySQL Community Server - GPL

Copyright (c) 2000, 2023, Oracle and/or its affiliates.

Oracle is a registered trademark of Oracle Corporation and/or its
affiliates. Other names may be trademarks of their respective
owners.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

mysql> show grants for 'Raja'@'localhost';
+------------------------------------------------------------------------------+
| Grants for Raja@localhost                                                    |
+------------------------------------------------------------------------------+
| GRANT USAGE ON *.* TO `Raja`@`localhost`                                     |
| GRANT ALL PRIVILEGES ON `company1`.* TO `Raja`@`localhost` WITH GRANT OPTION |
| GRANT ALL PRIVILEGES ON `company1`.`employees` TO `Raja`@`localhost`         |
+------------------------------------------------------------------------------+
3 rows in set (0.00 sec)

mysql> REVOKE ALL PRIVILEGES ON employees from 'Raja'@'localhost';
ERROR 1046 (3D000): No database selected
mysql>
mysql> use company1;
Database changed
mysql> REVOKE ALL PRIVILEGES ON employees from 'Raja'@'localhost';
Query OK, 0 rows affected (0.01 sec)

mysql> REVOKE ALL PRIVILEGES ON company1.* from 'Raja'@'localhost';
Query OK, 0 rows affected (0.01 sec)

mysql> flush privileges;
Query OK, 0 rows affected (0.01 sec)

mysql> commit;
Query OK, 0 rows affected (0.00 sec)

mysql> show grants for 'Raja'@'localhost';
+---------------------------------------------------------------------+
| Grants for Raja@localhost                                           |
+---------------------------------------------------------------------+
| GRANT USAGE ON *.* TO `Raja`@`localhost`                            |
| GRANT USAGE ON `company1`.* TO `Raja`@`localhost` WITH GRANT OPTION |
+---------------------------------------------------------------------+
2 rows in set (0.00 sec)

mysql> REVOKE ALL PRIVILEGES ON *.* from 'Raja'@'localhost';
Query OK, 0 rows affected (0.00 sec)

mysql>  */
