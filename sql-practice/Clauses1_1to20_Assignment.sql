create database flipkart;

use flipkart;

create table employees (
emp_id int primary key auto_increment,
ename varchar(20) not null,
edept varchar(20) not null,
esal decimal(8,2) default 0.0,
eage tinyint,
ecity varchar(30)
);

insert into employees(ename,edept,esal,eage,ecity) values
('Rahul','IT',60000,28,'Delhi'),
('Neha','HR',45000,32,'Mumbai'),
('Amit','IT',80000,35,'Delhi'),
('Priya','Finance',70000,29,'Pune'),
('Karan','HR',40000,25,'Delhi');

#1 show details of employees from IT department.
select * from employees where edept='IT';

#2 Show details of employees where salary is more than 50000
select * from employees where esal>50000;

#3 Show employees of delhi
select * from employees where ecity in('Delhi');

#4 List of employees where age is less than 30
select * from employees where eage<30;

#5 List of employees having salary between 60000 and 80000
select * from employees where esal between 60000 and 80000;

#6 List of employees of IT dept having salary over 70000
select * from employees where edept='IT' and esal>70000;

#7 list of employees of dept of finance or HR.
select * from employees where edept='HR' or edept='Finance';

#8 List of employees where city is Delhi and age is greater than 30
select * from employees where ecity='Delhi' and eage>30;

#9 List of employees where salary is less than 50000 or age is less than28
select * from employees where esal<50000 or eage<28;

#10 List of employees where department is IT, city is Delhi
#and salary>50000
select * from employees 
where edept='IT' and ecity='Delhi' and esal>50000;

#11 Show employees in ascending order of salary
select * from employees order by esal asc;
 
#12 Show employees in ascending order of salary
select * from employees order by esal desc;

#13 Sort employees by age
select * from employees order by eage;

#14 Sort employees by department, then salary descending
select * from employees order by edept, esal desc;

#15 Show employees from Delhi city in descending order of salary
select * from employees where ecity='Delhi' order by esal desc;

#16 Find total number of employees in each department
select edept, count(*) as total_employees from employees group by edept;

#17 Find average salary of each department
select edept,avg(esal) as average_salary from employees group by edept;

#18 Find employee count city-wise
select ecity, count(*) from employees group by ecity;

#19 Find maximum salary department-wise
select edept,max(esal) from employees group by edept;

#20 Find minimum salary city-wise
select ecity,min(esal) from employees group by ecity;





