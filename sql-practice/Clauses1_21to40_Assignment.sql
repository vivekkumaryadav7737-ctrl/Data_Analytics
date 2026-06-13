use flipkart;
#21 Show only departments where average salary > 60,000
select edept,avg(esal) from employees group by edept having avg(esal)>60000;

#22 Show only cities where employees > 1
select ecity,count(*) from employees group by ecity having count(*)>1;

#23 Show departments where maximum salary > 70,000
select edept,max(esal) from employees group by edept having max(esal)>70000;

#24 Group employees city-wise and show only those where average age > 30
select ecity,avg(eage) as avg_eage
from employees group by ecity having avg(eage)>30;

#25 Show department-wise total salary where total salary > 100,000
select edept,sum(esal) as total_salary from employees group by edept 
having total_salary>100000;

#26 Show top 3 highest paid employees
Select * from employees order by esal desc limit 3;

#27 Show first 2 records
select * from employees limit 2;

#28 Show only top 1 employee in descending order of salary
select * from employees order by esal desc limit 1;

#29 Show first 2 employees from HR department
select * from employees where edept='HR' limit 2;

#30 Show 3 employees with lowest salary
select * from employees order by esal asc limit 3;

#31 Show employee with 2nd highest salary in descending order
select * from employees order by esal desc limit 1 offset 1;

#32 Skip first 2 records and show next 2 records
select * from employees limit 2 offset 2;

#33 From top 5 salaries, show 3rd and 4th employee
select * from employees order by esal desc limit 2 offset 2;

#34 Skip first record of IT department and show next record
select * from employees where edept='IT' limit 1 offset 1;

#35 In ascending order of age, skip first 1 and show next 3
select * from employees order by eage limit 3 offset 1;

/* 36 Find department-wise average salary
and show only those where avg salary > 50,000,
 order by avg salary descending*/
select edept,avg(esal) as avg_esal from employees group by edept
having avg(esal)>50000 order by avg(esal) desc;
#37 Show department-wise count of employees from Delhi city
SELECT edept,count(*) AS total_employees FROM employees where ecity = 'Delhi' group by edept;
#38
select * from employees 
where edept in ('HR','IT') order by esal desc limit 2;
#39 
select ecity,count(*) from employees group by ecity having count(*)>1 ;
#40
select edept, ename, esal 
from employees e 
where esal = (SELECT MAX(esal) from employees where edept = e.edept);
