create database school;
use school;
create table student(
sid int,
sname text,
sadd text,
smob text
);
alter table student add column semail text;
describe student;

# Insert Data in a table. insert into table_name value(val1,val2,val3...)
insert into student value (101,'Rahul','Noida','823823923','rahul123@gmail.com');

# To show rows and columns of a table. 
# select col1,col2,col3.... from table_name;
select sid,sname,sadd,smob,semail from student;

# To show all the rows and columns of a table.
# select * from table_name;
select * from student;

# Insert details if any of the column details in not available.
# insert into table_name(col1,col2,col3..) value(val1,val2,val3);
insert into student(sid,sname,sadd,semail) value (102,'Mohan','Delhi','mohan123@gmail.com');

 # Insert multiple rows in a table
 # Insert into student values(val1,val2,val3,val4..),(vala1,vala2,vala3,vala4..);
 insert into student values
 (103,'Aman','Noida','853837456','aman123@gmail.com'),
 (104,'Vikas','Delhi','862537494','vikas123@gmail.com');
 
 # If some of the data is missing
 insert into student values(105,'Ritik',null,'823678364','ritik123@gmail.com'),
 (106,'Rohit','Noida',null,'rohit123@gmail.com');
 
/*
WHERE clause=> use to filter data.
select * from table_name where condition; */
select * from student where sadd='Noida';
select * from student where sid>103;

# DELETE=> will all the data.   delete from table_name;
delete from student;   #=> it will erase all the data
delete from student where sid=102;
delete from student where sadd='Delhi';
#if delete command is not executing
set sql_safe_updates=0;

# To update data in exisiting rows
# update table_name set col_name=values;
update student set sadd='Delhi' where sid=105;
update student set smob='9999988888';


create table trainer(
tid int primary key auto_increment,
tname varchar(30) not null,
tadd varchar(100) not null,
temail varchar(50) unique not null,
tmob varchar(15) unique,
tsalary decimal(8,2) #6 value, 2 point value=> max value9,99,999.99
);