create database company;
use company;
create table departments(
dept_id int,
dept_name varchar(50),
location varchar(50)
);
create table employees(
emp_id int,
emp_name varchar(50),
esal decimal(10,2),
dept_id int
);
create table projects (
project_id int,
project_name varchar(100),
budget decimal(12,2)
);
create table employee_projects(
emp_id int,
project_id int,
assigned_date date
);
insert into departments values
(1,'HR','Delhi'),
(2,'IT','Noida'),
(3,'Finance','Mumbai'),
(4,'Marketing','Pune');
insert into employees values
(101,'Amit',50000,2),
(102,'Neha',60000,2),
(103,'Raj',45000,1),
(104,'Priya',70000,3),
(105,'Karan',55000,Null),
(106,'Simran',52000,5);
insert into projects values
(201,'Website Development',200000),
(202,'Payroll System',150000),
(203,'Mobile App',300000),
(204,'CRM Software',250000);
insert into employee_projects values
(101,201,'2024-01-10'),
(101,203,'2024-02-15'),
(102,201,'2024-01-20'),
(103,202,'2024-03-01'),
(104,203,'2024-02-01'),
(107,204,'2024-04-01');
#1 Display employee name and department name.
select e.emp_name,d.dept_name from employees e
join departments d
on e.dept_id=d.dept_id;
#2 Show employees working in the IT department.
select * from employees;
select * from departments;
select * ,dept_name from employees e
join departments d
on e.dept_id=d.dept_id where d.dept_name='IT';
#3 List employees with department location. 
select e.*,d.location from employees e
join departments d
on e.dept_id=d.dept_id;
#4 Show all employees and their department names (including NULL and invalid dept_id). 
select e.*,d.dept_name from employees e
left join departments d
on e.dept_id = d.dept_id;
#5 Find employees who are not assigned to any department.
select e.*,d.dept_name from employees e
left join departments d
on e.dept_id = d.dept_id where dept_name is null;
#6 Find employees whose department does not exist in departments table.
select e.*,d.dept_name from employees e
left join departments d
on e.dept_id = d.dept_id where e.dept_id is not null and d.dept_id is null;












