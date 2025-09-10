create database classic;

use classic;

create table registers(
id int(20) primary key auto_increment,
fname varchar(25) not null,
lname varchar(25)
);

desc registers;

select * from registers;

insert into registers(fname,lname) values('Jythi','Amar');

 alter table registers
 add email varchar(25);
 
 alter table registers
 modify column lname varchar(50) not null;
 
 alter table registers
 drop column email;
 
 alter table registers
 add constraint pk unique(email);
 
 alter table registers
 drop constraint pk;
 
 alter table registers-- we should mention the name of constraint not column name
 drop constraint id;-- It should be "PK ,FK, CHECk, DEAFULT, UNIQUE"
 
 drop index idx_lastName on Employees;	-- Employees table on company1 database (this is for reference) 
 
 drop view lnamse;
 
 truncate table registers;
 
 drop table registers;
 
 drop database classic; -- deleted 
 
 -- Update Query (DML) 
 update registers set email = 'john@gmail.com' where id = 1;

 delete from registers  -- for deleting particular row
 where id = 7;
 
 -- TCL
 start transaction;
 savepoint sp1;
 rollback;
 