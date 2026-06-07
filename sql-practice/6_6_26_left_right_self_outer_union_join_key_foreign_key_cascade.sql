/* Left Join/left outer join- both will return all records from the left table and only the matching records from the right table.
 Only matching rows are kept; missing matches become NULL.
 */
 select * from customer   #display all the data of left table and relevant matching data in right table if no match then null
 left join orders
 on customer.cid=orders.cid;

/* Right Join/Right outer Join-combines data from two tables by taking every row from the right-hand table and matching it with the left-hand table.
 If no match exists, the missing information on the left side is filled with NULL (empty) values.  */
 select * from customer
 right join orders            #display all the data of right table and relevant matching data in left table if no match then null
 on customer.cid=orders.cid;
 /* Full Join/ outer join- My SQL does not support full join.
 we can perform  outer join using union. outer join combines all records from both tables, 
 including both matching and non-matching rows. When there is no match for a row in one of the tables, 
 the result sets that missing side to NULL.*/
 select * from customer
 left join orders
 on customer.cid=orders.cid
 union
 select * from customer
 right join orders
 on customer.cid=orders.cid;
 /* Self Join-A self join is a regular SQL join operation in which a table is joined with itself.
 No command as self join in sql. Alias is used for distinguishing same table.
 */
 select * from customer c1  
 join customer c2;
 select * from customer c1 
 join customer c2
 on c1.cid=c2.cid;
 
# foreign keys-a column (or a collection of columns) in one table that links to a PRIMARY KEY or a UNIQUE key in another table.
create database college;
use college;
create table course(
cid int primary key auto_increment,   #parent table : The table that holds the primary master data. 
cname varchar(20) not null,           #It contains the PRIMARY KEY (or a unique key) which uniquely identifies each record.
cfee decimal(8,2) default 0.0
);
create table student(
sid int primary key auto_increment,  #Child table:The table that references the parent table. 
sname varchar(30) not null,          #It contains the FOREIGN KEY, which links back to the primary key of the parent table to establish the relationship.
sadd varchar(30) not null,
cid int not null,
foreign key (cid) references course(cid)
);
                                                               /* Rows will be added  in parent table first then in child table. 
                                                                Deletion from parent table is possible when no relevant data is in child table.*/
insert into course value(301,'Data Science',86830);
insert into student value(101,'Raman','Noida',301);
insert into student value(102,'Rohit','Delhi',302);            #error because no course with cid=>302 in parent table as of now.
delete from course where cid=301;                             # error because cannot delete from parent table without deleting from child table.
insert into course value(302,'Data Analyst',76450);
select * from course;
select * from student;
delete from course where cid=302;                             # data can be delete because no relevant data for cid=302 in student table as of now.
update course set cid=305 where cid=301;                      # error because relevant data for cid=301 already exists in child table(student).
#want to delete data from table without change its structure.
# truncate student- reset counters
# delete from student- counter as it.
truncate student;
# CASCADE  a feature used with foreign keys to automatically propagate data changes from a parent table down to all related child tables.
# delete cascade=> When a record in the parent table is deleted, all matching records in the child table are instantly removed.
# update cascade=>  When a primary key value in the parent table changes, all matching foreign keys in the child table shift to the new.
create table student(
sid int primary key auto_increment,   
sname varchar(30) not null,         
sadd varchar(30) not null,
cid int not null,
foreign key (cid) references course(cid) on update cascade on delete cascade
);






 