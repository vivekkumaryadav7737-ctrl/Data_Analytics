create database company_db;
use company_db;
create table employees(
emp_id int primary key auto_increment,
ename varchar(50),
edepartment varchar(50),
esalary decimal(10,2),
eage int,
ecity varchar(50),
ejoining_date date
);
insert into employees(ename,edepartment,esalary,eage,ecity,ejoining_date) values
('Amit','IT',60000,28,'Delhi','2022-03-15'),
('Riya','HR',45000,25,'Mumbai','2021-06-10'),
('John','IT',75000,32,'Bangalore','2020-01-20'),
('Sara','Finance',50000,29,'Delhi','2023-02-12'),
('David','IT',80000,35,'Mumbai','2019-11-05'),
('Neha','HR',47000,27,'Delhi','2022-07-19'),
('Raj','Finance',52000,31,'Bangalore','2021-09-23'),
('Priya','IT',62000,26,'Delhi','2023-01-01');

#1 Display all employee details  
select * from employees;
#2 Show only employee names and salaries 
select ename,esalary from employees;
#3 Find employees with salary > 60000  
select * from employees where esalary>60000;
#4 Find employees from Delhi  
select * from employees where ecity='Delhi';
select * from employees where ecity like 'Delhi';
select * from employees where ecity in ('Delhi');
#5 Find employees from Delhi  
select * from employees where eage<30 and eage>25;
select * from employees where eage between 25 and 30;
select * from employees where eage in (26,27,28,29);
#6 Sort employees by salary (ascending)  
select * from employees order by esalary;
#7 Sort employees by age (descending)  
select * from employees order by eage desc;
#8 Show employees sorted by department, then salary  
select * from employees order by edepartment;
select * from employees order by esalary;
#9 List unique departments  
select distinct edepartment from employees;
#10. List unique cities 
select distinct ecity from employees;
# 11. Show top 3 highest paid employees 
select * from employees order by esalary desc limit 3;
# 12 Show 2 youngest employees  
select * from employees order by eage asc limit 2;
#13 Find total number of employees 
select count(*) from employees;
#14 Find average salary  
select avg(esalary)as average_salary from employees ;
#15 Find maximum salary  
select max(esalary) as highest_esalary from employees;
#16 Find minimum salary  
select min(esalary) as lowest_esalary from employees;
#17 Find total salary of all employees  
select sum(esalary) from employees;
#18 Count employees in each department 
select edepartment,count(ename) as employee_in_dept from employees group by edepartment;
#19 Find average salary per department  
select edepartment,avg(esalary) from employees group by edepartment;
#20 Find total salary per city 
select ecity,sum(esalary) from employees group by ecity;
#21  Show departments with more than 2 employees 
select edepartment,count(*) as employee_count from employees 
group by edepartment having count(*)>2;
#22 Show departments where average salary > 60000  
select edepartment, avg(esalary) as Esal from employees 
group by edepartment having Esal>60000;
#23 Find employees whose name starts with 'A'  
select * from employees where ename like'a%';
#24  Find employees whose name ends with 'a'  
select * from employees where ename like'%a';
#25 Find employees whose name contains 'i'  
select * from employees where ename like'%a%';
#26 Find employees from Delhi or Mumbai  
select * from employees where ecity in ('Delhi','Mumbai');
#27 Find employees NOT in IT department 
select * from employees where edepartment not in ('IT');
select * from employees where edepartment!='IT';
#28 Find employees NOT in IT department 
select * from employees where esalary between 50000 and 70000;
#29 Find employees who joined between 2021 and 2023 
select * from employees where ejoining_date between '2021-01-01' and '2023-12-31';
#30  Increase salary of all IT employees by 10% 
update employees set esalary=esalary*1.10 where edepartment='IT' ;
#31  Delete employees with salary < 45000  
delete from employees where esalary<45000;
#32 
select *,
case 
	when esalary>70000 then 'High'
    when esalary>50000 then 'Medium'
    else 'Low'
end as 'status'
from employees;





