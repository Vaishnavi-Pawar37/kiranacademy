create database company_db;

use company_db;

create table employees(employee_id INT PRIMARY KEY,employee_name VARCHAR(100),
department VARCHAR(50),salary DECIMAL(10,2), city VARCHAR(50), joining_date DATE,status VARCHAR(20));

select * from employees;
INSERT INTO employees
(employee_id, employee_name, department, salary, city, joining_date, status)
VALUES
(101, 'Rahul Patil', 'Development', 45000, 'Pune', '2026-01-10', 'Active'),
(102, 'Priya Sharma', 'Testing', 38000, 'Mumbai', '2026-02-15', 'Active'),
(103, 'Amit Joshi', 'Development', 52000, 'Pune', '2025-12-05', 'Active'),
(104, 'Sneha Kulkarni', 'HR', 35000, 'Nashik', '2026-03-20', 'Active'),
(105, 'Rohan Deshmukh', 'Support', 30000, 'Mumbai', '2026-04-01', 'Inactive'),
(106, 'Anjali More', 'Testing', 42000, 'Pune', '2026-05-12', 'Active');

select employee_name from employees;
select employee_name,salary from employees;
select employee_name,department,city from employees;
select * from employees where city="pune";
select * from employees where city="mumbai";
select * from employees where department="development";
select * from employees where department="testing";
select * from employees where status="active";
select * from employees where status="inactive";
select * from employees where employee_id="103";
select * from employees where employee_name = "Priya Sharma";
select * from employees where salary>40000;
select * from employees where salary<40000;
select * from employees where salary=35000;
select * from employees where salary>=42000;
select * from employees where city="pune" AND status="active";
select * from employees where department="development" AND salary>45000;
select * from employees where city="pune" or city="mumbai";

update employees set salary = 48000 where employee_id=101;
update employees set status = "active" where employee_id=105;
update employees set city="pune" where employee_id=104;
update employees set department="development" where employee_id=102;
update employees set salary = 45000 where employee_id=106;
update employees set salary= salary + 3000 where employee_id=103;
UPDATE employees SET salary = salary + 2000 WHERE employee_id > 0 AND department = 'Testing';
update employees set city="mumbai branch" where employee_id >0 and city="mumbai";

delete from employees where employee_id= 105;
delete from employees where employee_id > 0 and employee_name = "Rohan Deshmukh";
update employees set status = "inactive" where employee_id=105;
delete from employees where employee_id > 0 and status="inactive";
delete from employees where employee_id > 0 and salary<3000;

alter table employees add email varchar(100);
alter table employees add moblie varchar(100);
alter table employees modify city varchar(100);
alter table employees rename to name;
alter table employees drop column moblie;
SELECT DATABASE();
SHOW TABLES;

create table dept(department_id INT PRIMARY KEY,department_name VARCHAR(100),location VARCHAR(100));

insert into dept (department_id, department_name,location) values
(101, "CSE","Solapur"), (102, "ENTC","pune"), (103,"MECH","mumbai");

select * from dept;
update dept set location="solapur" where department_id=103;
delete from company_departments where department_id=102;
alter table dept rename to company_departments;
drop table company_departments;