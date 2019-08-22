CREATE DATABASE  IF NOT EXISTS `registroEmpleados`;
USE `registroEmpleados`;

create table Employees (
employee_id int AUTO_INCREMENT,
employee_name varchar(300) not null,
payment_company varchar(15) not null,
join_date date not null,
branch varchar(30) not null,
service varchar(250) not null,
primary key (employee_id)
);
#drop table employees;

#INSERT INTO employees (employee_id, employee_name, payment_company, join_date, branch, service)
#VALUES (13, 'ELISA GARCIA GONZALEZ', 'MSI', '2011/11/03', 'GUADALAJARA', 'CEDIS ZAPOPAN');

LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/tabla76.csv' INTO TABLE employees
FIELDS TERMINATED BY ',' 
LINES TERMINATED BY '\n'
ignore 1 lines
(employees.employee_name, employees.payment_company, employees.join_date, employees.branch, employees.service)
SET employee_id = NULL;