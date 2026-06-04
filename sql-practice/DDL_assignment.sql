create database abcd;
use abcd;

 #1 
 create table student(
student_id int primary key,
sname text,
sage int,
semail varchar(50) unique
);
#2
create table course(
course_id int primary key,
course_name text,
duration int);
#3
alter table student add column phone_number text;
#4
alter table student modify column sage smallint;
#5
rename table student to students;
#6
alter table course drop column duration;
#7
alter table students modify column sage smallint check(sage>=18);
#8
create table employee(
eid int,
ename text,
eadd varchar(15),
course_id int, foreign key (course_id) references course(course_id)
);
#9
alter table employee drop foreign key employee_ibfk_1;
#10
delete from employee;










