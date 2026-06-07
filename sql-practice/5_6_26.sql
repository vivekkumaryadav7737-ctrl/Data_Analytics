# JOINS- use to connnect/display data from more than one table
/* create database-store
create table=> customer(cid,cname,cmob,cadd)
create table=> product (pid,pname,price)
create tble=> orders(oid,cid,pid,qty)
*/
create database store;
use store;
create table customer(
cid int primary key auto_increment,
cname varchar(50) not null,
cadd varchar(100) not null,
cmob varchar(20) unique not null
);
insert into customer values
(101,'Raman Singh','Noida','+917534872837'),
(102,'Siya singh','Delhi','+919364726393'),
(103,'Riya Kumari','Noida','+7573527233'),
(104,'Yogesh Saini','Delhi','+91672384693');
create table product(
pid int primary key auto_increment,
pname varchar(100) not null,
price decimal(8,2) not null
);
insert into product values
(501,'Monitor',5290),
(502,'Keyboard',1930),
(503,'Mouse',870),
(504,'SSD',8560);
create table orders(
oid  int primary key auto_increment,
cid int not null,
pid int not null,
qty int default 1
);
insert into orders(cid,pid,qty) values
(102,504,5),
(103,502,6),
(104,508,8),
(109,501,5),
(107,506,5);
 /* Cross Join-a specific type of join that returns the Cartesian product of the two tables,
 meaning it pairs every single row from the first table with every single row
 from the second table without evaluating any matching condition. or JOIN without any condition/modifiers */
select * from customer 
join orders; 

/*Inner join- an operation used to combine rows from two or more tables based on a related column, 
returning only the rows that have matching values in both tables. Or JOIN with condition/modifiers */

select * from customer 
join orders 
using(cid);
/* ON is a flexible clause used to join tables based on any condition or column name, 
while USING is shorthand syntactic sugar used only when the matching columns share the exact same name in both tables. */
select * from customer   # Inner join
join orders
on customer.cid=orders.cid;
select * from customer c   # Inner join with alias
join orders o
on c.cid=o.cid;
select * from customer as c
join orders as o
on c.cid=o.cid;
select * from customer c  # joining 3 tables using inner join
join orders o
on c.cid=o.cid
join product p
on p.pid=o.pid;
select c.*,pname,qty,price*qty as amount,price*qty*0.18 as GST, price*qty*1.18 as Net_amount from customer c
join orders o 
on c.cid=o.cid
join product p
on p.pid=o.pid;     #(inner join with relevant data)






