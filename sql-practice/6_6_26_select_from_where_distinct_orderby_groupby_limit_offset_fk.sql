create database amazon;
use amazon;
create table employee(
eid int primary key auto_increment,
ename varchar(100) not null,
eadd varchar(100) not null,
edesign varchar(50) not null,
esal decimal(8,2) default 0.0
);
insert into employee values
(101,'Rahul Sharma','Noida','IT',86523),
(102,'Simran Khurana','Delhi','HR',76764),
(103,'Yogesh Saini','Noida','HR',56384),
(104,'Shiva Yadav','Delhi','IT',75724),
(105,'Abhishek','GZB','IT',64269);

select * from employee where esal>50000;
select * from employee where eadd='Delhi';

# DISTINCT=> eliminate duplicate rows from query results
select distinct eadd from employee;
select count(distinct eadd) from employee;
# ORDER BY=> use to sort in descending/ascending order. (by default=> ascending)
select * from employee order by esal;                       #sort according to esal in ascending order
select * from employee order by esal asc;
select * from employee order by esal desc;                  # details of employees in order salary from highest to lowest.
select * from employee order by esal desc limit 1;          # details of employee with highest salary in table.
select * from employee order by esal desc limit 1 offset 1;  # details of employee with second highest salary
select * from employee order by esal asc limit 1;             # details of employee with lowest salary
# offset=> skip a set number of rows in a databas table before returning the rest of result.(usually paired with limit).
/* GROUP BY=> used to arrange identical data rows into summary groups based on one or more specified columns*/
select sum(esal) from employee group by edesign;
select edesign,sum(esal) from employee group by edesign;
select sum(esal) from employee group by eadd;
select eadd,sum(esal) from employee group by eadd;
select edesign,sum(esal) from employee group by edesign order by sum(esal) desc;  #display consolidated salary in every designation in descending orders.
select edesign,sum(esal) from employee group by edesign order by sum(esal) asc;   #display consolidated salary in every designation in ascending orders.alter
# DROP FOREIGN KEY
# alter table table_name drop foreign key fk_constrain_name




