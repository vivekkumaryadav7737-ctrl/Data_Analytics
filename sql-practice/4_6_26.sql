create database college;
use college;
create table students
(sid int primary key auto_increment,
sname varchar(40) not null,
semail varchar(50) unique not null,
sage int not null check(sage>17),
sgender varchar(10) default 'Male',
sfee decimal(8,2) default 0.0
);
insert into students(sname,semail,sage) value
('Rahul','rahul123@gmail.com',23);
insert into students(sid,sname,semail,sage) value
(105,'Raman','raman123@gmail.com',23);
insert into students(sname,semail,sage,sgender) value
('Riya','riya123@gmail.com',23,'female');

insert into students(sname,semail,sage,sgender) value
('Siya','riya123@gmail.com',23,'female');
/* Unique= this constraint first insert data in table then check for duplicacy. If foun then delete the entry but the counter has already 
moved forward*/
insert into students(sname,semail,sage,sgender) value
('Siya','siya123@gmail.com',23,'female');    # sid=108
insert into students (sname,semail,sage) value
('Mohan','mohan123@gmail.com',24);
insert into students (sname,semail,sage) value
('Rohan','rohan123@gmail.com',16); 
#Check Constraint= first check the condition if the condition is true then insert the data in the table and the counter will remain as it is.
insert into students (sname,semail,sage) value
('Rohan','rohan123@gmail.com',26); 
insert into students(sid,sname,semail,sage) value(107,'Mohit','mohit123@gmail.com',24);
select * from students;

# CLAUSES
# LIMIT=> limit the number of rows to be displayed.

select * from students;
select * from students limit 3;  # shows top 3 rows of the table
set sql_safe_updates=0;
alter table students add column sadd varchar(20) not null;
update students set sadd='Delhi' where sage>25;
update students set sadd='Delhi' where sid>108;
update students set sadd='Noida' where sname like "R%";  # where sname starts with R
update students set sadd='GZB' where sid=108;
update students set sadd='GZB' where sid=107;

# Aggregate Function=>

select count(*) from students;
select sum(sage) from students;
select max(sage) from students;
select min(sage) from students;
select avg(sage) from students;
# Group by=>  group all the unique values
select count(*) from students group by sadd;
select sadd,count(*) from students group by sadd;
select sum(sage) from students group by sadd;
select sadd,sum(sage) from students group by sadd;
select sadd,max(sage) from students group by sadd;


