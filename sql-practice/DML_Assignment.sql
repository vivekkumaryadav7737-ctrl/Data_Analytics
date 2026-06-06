use abcd;
#1
insert into students values
(101,'Rohit',24,'rohit123@gmail.com',7485963326),
(102,'Raman',25,'raman123@gmail.com',3265412365),
(103,'Rishabh',27,'rishabh123@gmail.com',4512612365),
(104,'Shivam',28,'shivam123@gmail.com',85696362145),
(105,'Gagan',26,'gagan123@gmail.com',7065202150);
#2
insert into course values
(201,'Data Science'),
(202,'Data Engineer'),
(203,'Data Analyst'),
(204,'Full-stack Developer'),
(205,'Database Administrator');
#3
select * from students;
#4
select sname,semail from students;
#5
update students set semail='rishabhrawat@gmail.com' where student_id=103; 
#6
set sql_safe_updates=0;
update students set sage=sage+1;
#7
delete from students where student_id=105;
#8
select * from students where sage>20;
#9
select * from students order by sage desc;
#10
select * from students order by sage desc limit 3;







